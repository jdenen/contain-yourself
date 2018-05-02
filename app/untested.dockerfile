FROM kennethreitz/pipenv:latest
MAINTAINER Johnson

ENV FLASK_APP random_number.py
EXPOSE 5000

WORKDIR /app
COPY Pipfile* ./
COPY random_number.py .

RUN pipenv install

CMD ["pipenv", "run", "flask", "run", "--host=0.0.0.0"]
