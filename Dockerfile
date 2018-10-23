# Pull base image
FROM python:3.6

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
ADD requirements.txt /code/
RUN pip install -r requirements.txt 
CMD [ "python", "./manage.py runserver" ]
EXPOSE 3004