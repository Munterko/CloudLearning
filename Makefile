install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test: 
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfile
	pylint --disable=R,C,W1203,W0702 hello.py

all: 
	install lint test
