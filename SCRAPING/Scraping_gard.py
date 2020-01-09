
from bs4 import BeautifulSoup 
import requests
import pandas as pd
from sqlalchemy import create_engine
import pymysql


page= requests.get('https://www.infopoint.ma/pharmacies-de-garde')
soup = BeautifulSoup(page.content,'html.parser')

data = {'NAME': [],'ADD': [],'TEL': []}	
df_marks = pd.DataFrame(data)

sqlEngine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user="root",
                               pw="",
                               db="pharmacies"))

dbConnection = sqlEngine.connect()
data = {'NAME': [],'ADD': [],'TEL': []}	
df_marks = pd.DataFrame(data)

for Pharmacie in soup.find_all('a',class_='mg-trigger'):
	name=Pharmacie.find_all('div')[0].get_text().strip()
	add=Pharmacie.find_all('div')[1].find_all('h6')[0].get('title').strip()
	tel =Pharmacie.find_all('div')[1].find_all('h6')[1].get_text().strip()
	
	new_row = {'NAME':name, 'ADD':add, 'TEL':tel}
	df_marks = df_marks.append(new_row, ignore_index=True)


try:
	frame = df_marks.to_sql("phar_gard_tanger",dbConnection,if_exists='replace',index_label='ID')
	dbConnection.execute("ALTER TABLE phar_gard_tanger ADD PRIMARY KEY (ID);")
except Exception as ex:
    print(ex)
else:
    print("Table  created");   
finally:
	dbConnection.close()

