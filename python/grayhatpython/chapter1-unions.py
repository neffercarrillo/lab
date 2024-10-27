#! /usr/bin/python3

from ctypes import *

class barley_amount(Union):
    _fields_ = [
        ("barley_long", c_long),
        ("barley_int", c_int),
        ("barley_char", c_char * 8),
    ]

value = input("Enter the amount of barley to put into the beer vat:")
my_barley = barley_amount(int(value))
print("Barley amount as a long: {0}", my_barley.barley_long)
print("Barley amount as a int: {0}" ,my_barley.barley_long)
print("Barley amount as a char: {0}" ,my_barley.barley_char)
