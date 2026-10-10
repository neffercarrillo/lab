#!/usr/bin/python3

# Write a list comprehension that extracts all words with more than 3 letters from the given list:

def main():

    # exercise #1
    words = ["a", "the", "cat", "is", "on", "the", "mat"]
    filtered_words = [word for word in words if len(word) >= 3]
    print(filtered_words)  # Expected Output: ['the', 'cat', 'the', 'mat']

    # exercise #2
    words = ["a", "the", "cat", "is", "on", "the", "mat", "elephant"]
    word_dict = {word:len(word) for word in words if len(word) >= 3}
    print(word_dict)
    
if __name__ == '__main__':
   main()
    
