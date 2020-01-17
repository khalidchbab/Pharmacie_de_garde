from bs4 import BeautifulSoup 
import requests
import pandas as pd
from sqlalchemy import create_engine
import pymysql


data = {'NAME': [],'ADD': [],'VIL': []}	
df_marks = pd.DataFrame(data)

sqlEngine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user="root",
                               pw="",
                               db="pharmacies"))

dbConnection = sqlEngine.connect()

page= requests.get('http://pharmacie-maroc.1sur1.com/maroc/pharmacies/1-pharmacie-a-afourer.html')
soup = BeautifulSoup(page.content,'html.parser')

pharmacies = []
for phar in soup.find_all('div',class_='widget widget_categories'):
	for name in phar.ul.find_all('li'):
		pharmacies.append(name.a.get_text().replace(" ","-"))
		

URL= 'http://pharmacie-maroc.1sur1.com/maroc/pharmacies/{}-pharmacie-a-{}.html'
i=1
for city in pharmacies:
	lien = requests.get(URL.format(i,city))
	soup = BeautifulSoup(lien.content,'html.parser')
	i=i+1
	for Pharmacie in soup.find_all('div',class_='result-section'):
		name=Pharmacie.find_all('p')[0].b.a.get_text().strip()
		add = Pharmacie.find_all('p')[1].get_text().strip()
		new_row = {'NAME':name, 'ADD':add, 'VIL':city}
		df_marks = df_marks.append(new_row, ignore_index=True)

try:
	frame = df_marks.to_sql("pharmacie", dbConnection, if_exists='replace',index_label='ID')
	dbConnection.execute("ALTER TABLE pharmacie ADD PRIMARY KEY (ID);")
except Exception as ex:
    print(ex)
else:
    print("Table  created");   
finally:
	dbConnection.close()
