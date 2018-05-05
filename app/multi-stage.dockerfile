FROM kennethreitz/pipenv:latest as BUILDER
MAINTAINER Johnson
WORKDIR /develop
COPY Pipfile* ./
COPY random_number.py .
COPY test ./test
RUN pipenv install --dev
RUN pipenv run pytest
RUN pipenv lock --requirements > requirements.txt

FROM python:3.6.4-slim
MAINTAINER Johnson
ENV FLASK_APP random_number.py
EXPOSE 5000
WORKDIR /app
COPY --from=BUILDER /develop/random_number.py .
COPY --from=BUILDER /develop/requirements.txt .
RUN pip install -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0"]
