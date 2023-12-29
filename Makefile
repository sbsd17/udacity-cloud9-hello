setup:
	python3 -m venv ~/.venv

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py


lint:
	# hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202,C0111 ./**.py

all: install lint test