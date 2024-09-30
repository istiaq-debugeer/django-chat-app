
FROM python:3.10-slim




WORKDIR /chatapp


COPY ./requirements.txt /chatapp/requirements.txt


RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . /chatapp/


EXPOSE 8000


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
