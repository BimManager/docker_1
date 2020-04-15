FROM	python:alpine

WORKDIR	/app
ENV		FLASK_APP=app.py
ENV		FLASK_RUN_HOST=0.0.0.0
RUN		apk add --no-cache \
		gcc \
		musl-dev \
		linux-headers
RUN		pip install flask redis
COPY	. .
CMD		["flask", "run"]