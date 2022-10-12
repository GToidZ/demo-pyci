# Makefile for the ancient unix build program.
# This is NOT needed for the demo CI project, but included
# for anyone who wants to see what a Makefile looks like
# and how it works.  You need the Make program to use this.
#
# Run:
# make test  - run unit tests
# make lint  - run code checker
# make clean - remove python cache files

# Set PYTHON to the name of your python command (python or python3)
PYTHON=python3
LINTER=flake8

# Let Python unittest module find and run tests itself
test:
	$(PYTHON) -m unittest 

# Run linter on code
lint:
	$(LINTER) statistics.py

# This is the Linux command to remove a directory
clean:
	/bin/rm -rf  __pycache__ 
