import pymongo
import sys

# get connection to mongo
connection = pymongo.MongoClient("mongodb://localhost")

# get database
db = connection.test
messages = db.messages

# get all emails
emails = messages.find()

class FromToPair:
    def __init__(self,from_email,to_email,from_email_id,to_email_id,pair_count):
        self.from_email = from_email
        self.to_email = to_email
        self.from_email_id = from_email_id
        self.to_email_id = to_email_id
        self.pair_count = pair_count

class FromToPairDao:
    def __init__(self):
        self.from_to_email_list = []

    def get_from_to_email_pair_list(self):
        return self.from_to_email_list

    def get_highest_frequency_pair(self):
        from_to_pair_obj = None
        for pair in self.from_to_email_list:
            if from_to_pair_obj is None:
                from_to_pair_obj = pair
            else:
                if pair.pair_count > from_to_pair_obj.pair_count:
                    from_to_pair_obj = pair

        return from_to_pair_obj
                    
    def create_pair(self,from_email,to_email,from_email_id,to_email_id,pair_count):
        obj = FromToPair(from_email,to_email,from_email_id,to_email_id,pair_count)
        self.from_to_email_list(obj)
        
    def update_pair(self):
        pass

    def handle_pair(self):
        pass

    def find_pair(self):
        pass
