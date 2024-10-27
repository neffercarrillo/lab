import pymongo
import sys

# get connection to mongo
connection = pymongo.MongoClient("mongodb://localhost")

# get database
db = connection.test
messages = db.messages

# get all emails
emails = messages.find()

# headers doc
headers = {}

# initialize counter
counter = 0

# define to and from
from_email = 'andrew.fastow@enron.com'
to_email = 'jeff.skilling@enron.com'
#to_email = 'john.lavorato@enron.com'

for doc in emails:
    #print(doc['headers'])
    headers = doc['headers']
    condition = from_email in headers['From'] and to_email in headers['To']
    if condition:
        counter = counter + 1

print(counter)
