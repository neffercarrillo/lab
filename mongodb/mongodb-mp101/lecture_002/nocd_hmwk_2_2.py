import pymongo
import sys

# get connection to mongo
connection = pymongo.MongoClient("mongodb://localhost")

# get database
db = connection.students
grades = db.grades

# sort by student id and then by score
sorted_grades = grades.find().sort([('student_id',1),('score',1)])

counter = {}

other_counter = 0

for doc in sorted_grades:
    #print(doc)
    # get student_id

    
    # get homework_score
    if doc['type'] == 'homework':
        current_student_id = doc['student_id']
        if current_student_id in counter:
            counter[current_student_id] = counter[current_student_id] + 1
        else:
            counter[current_student_id] = 0
        if counter[current_student_id] == 0:
            #print("score of doc to be removed",doc['score'])
            _id = doc['_id'] 
            grades.delete_one({'_id':_id})
            counter[current_student_id] = counter[current_student_id] + 1
            other_counter = other_counter + 1
       # remove the first ocurrence of homework score

print("removed docs:",str(other_counter))
