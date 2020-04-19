FROM python:3.6.8-jessie

COPY requirements.txt /

RUN pip install -r requirements.txt

RUN mkdir finalapp

COPY . ./finalapp

WORKDIR /finalapp

EXPOSE 8000/tcp

CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000" ]
