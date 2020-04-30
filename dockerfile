#dockerfile for graphql_helper
FROM python:3.7.7-slim-buster
LABEL maintainer="manuel@hylomprhicsolutions.com"
RUN apt-get update && apt-get install -y git
RUN apt-get install python3-dev build-essential -y
WORKDIR ./omniseq
RUN git clone https://github.com/manuel-j-glynias/graphql_helper.git
WORKDIR graphql_helper
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0"]
