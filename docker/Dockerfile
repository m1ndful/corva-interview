FROM python:3

ARG TRAVIS_BUILD_NUMBER
ARG TRAVIS_COMMIT
ENV BUILD_NUMBER=$TRAVIS_BUILD_NUMBER
ENV BUILD_COMMIT=$TRAVIS_COMMIT

WORKDIR /usr/src/app

COPY src/ .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]