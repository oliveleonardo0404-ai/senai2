
import requests 
import json

url = 'https://senaiaula-43522-default-rtdb.firebaseio.com/.json2'

respose = requests.get(url)

print(respose.content)