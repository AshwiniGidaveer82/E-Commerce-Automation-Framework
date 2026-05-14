FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
RUN pip install robotframework-requests
RUN pip install robotframework-databaselibrary
RUN pip install robotframework-pabot

CMD ["robot", "-d", "reports", "tests/"]