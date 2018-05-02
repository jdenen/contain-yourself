FROM kennethreitz/pipenv:latest
MAINTAINER Johnson

ENV FLASK_APP random_number.py
EXPOSE 5000

WORKDIR /app
COPY Pipfile* ./
COPY random_number.py .
COPY test ./test

RUN pipenv install --dev
RUN pipenv run pytest

CMD ["pipenv", "run", "flask", "run", "--host=0.0.0.0"]
