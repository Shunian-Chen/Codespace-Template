install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C,W1203,W1202,W1514 $(find . -name "*.py" | xargs)
test:

all: install format lint test
