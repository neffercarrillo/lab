import pymongo
import sys

# get connection to mongo
connection = pymongo.MongoClient("mongodb://localhost")

# get database
db = connection.school
students = db.students

# get all student documents
students_all = students.find()

# initialize student counter
student_count = 0

# begin iterating over students
for student in students_all:
    student_count = student_count + 1
    new_student_scores = []
    homework_count = 0
    for score in student['scores']:
        if score['type'] == 'homework':
            if homework_count == 0:
                new_student_scores.append(score)
                homework_count = homework_count + 1
            else:
                for new_score in new_student_scores:
                    if new_score['type'] == 'homework':
                        if new_score['score'] < score['score']:
                            new_score['score'] = score['score']
        else:
            new_student_scores.append(score)
            
    # set the scores array before iterating over the next student
    _id = student['_id'] 
    db.students.update_one({'_id':_id},{'$set':{'scores':new_student_scores}})
    
print('students updated: ' + str(student_count))
