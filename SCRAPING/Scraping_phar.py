from bs4 import BeautifulSoup 
import requests
import pandas as pd
from sqlalchemy import create_engine
import pymysql



page= requests.get('http://pharmacie-maroc.1sur1.com/maroc/pharmacies/242-pharmacie-a-tanger.html')
soup = BeautifulSoup(page.content,'html.parser')

data = {'NAME': [],'ADD': []}	
df_marks = pd.DataFrame(data)

sqlEngine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user="root",
                               pw="",
                               db="pharmacies"))

dbConnection = sqlEngine.connect()

for Pharmacie in soup.find_all('div',class_='result-section'):
	name=Pharmacie.find_all('p')[0].b.a.get_text().strip()
	add = Pharmacie.find_all('p')[1].get_text().strip()
	new_row = {'NAME':name, 'ADD':add}
	df_marks = df_marks.append(new_row, ignore_index=True)

try:
	frame = df_marks.to_sql("phar_tanger", dbConnection, if_exists='replace',index_label='ID')
	dbConnection.execute("ALTER TABLE phar_tanger ADD PRIMARY KEY (ID);")
except Exception as ex:
    print(ex)
else:
    print("Table  created");   
finally:
	dbConnection.close()

	
    


