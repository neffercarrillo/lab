import pymongo
import sys


# get connection to mongo
connection = pymongo.MongoClient("mongodb://localhost")

# get database
db = connection.sharing

# get images collection
images = db.images.find()

# get albums collection
albums = db.albums.find()

def get_image_list():
    image_list = []
    for image in images:
        image_list.append(image)

    return image_list

def get_album_list():
    album_list = []
    for album in albums:
        album_list.append(album)

    return album_list

        
def get_orphan_images():
    image_list = get_image_list()
    album_list = get_album_list()
    orphan_image_list = []
    total_found = 0
    image_counter = 0
    
    #for image in images:
    for image in image_list:
        image_counter = image_counter + 1
        album_counter = 0
        image_found = False
        #print(type(albums))
        #for album in albums:
        for album in album_list:
            album_counter = album_counter + 1
            if image['_id'] in album['images']:
            #if image['_id'] == album['images']:
                #print image
                #print album
                image_found = True
                total_found = total_found + 1
                break
        if not image_found:
            orphan_image_list.append(image)
            
        albums.rewind()    
        #print("albums counted: " + str(album_counter))
        print("images counted: " + str(image_counter))     
    
    #print("total_found: " + str(total_found))
    return orphan_image_list


def remove_orphan_images_from_collection(orphan_image_list):
    counter = 0
    for image in orphan_image_list:
        counter = counter + 1
        db.images.remove({'_id':image['_id']})
        
    print("removed images: " + str(counter))

    
def main():
    orphan_image_list = []
    orphan_image_list = get_orphan_images()
    remove_orphan_images_from_collection(orphan_image_list)
    images_remaining = db.images.count()
    print("images remaining in collection: " + str(images_remaining))

    
if __name__ == '__main__':
    main()
