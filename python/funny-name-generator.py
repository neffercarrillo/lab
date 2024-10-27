#!/usr/bin/python3

import random

if __name__ == "__main__":
	first_names = ("Ciriaco","Machuchal","Toribio","Saoco")
	last_names = ("Pelu","Becerril","Del Toro","Maresma")
	print(random.choice(first_names) + " " + random.choice(last_names))
