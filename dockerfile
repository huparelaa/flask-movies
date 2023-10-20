FROM python:3.11-slim-buster

# Create app directory
RUN mkdir /api-peliculas

# Setup working directory
WORKDIR /api-peliculas

# install dependencies ubuntu and curl

RUN apt-get update && apt-get install -y curl libpq-dev


# copy application
COPY . /api-peliculas

# install dependencies
RUN pip3 install -r ./requirements.txt

# define environment variable
ENV FLASK_APP "entrypoint:app"
ENV FLASK_ENV "development"
ENV APP_SETTINGS_MODULE "config.default"
ENV PORT 5000


#INIT DB
RUN flask db init 
# revision with its id
RUN flask db revision --rev-id e7ebea2ff5f1
RUN flask db migrate
RUN flask db upgrade

# expose port
EXPOSE ${PORT}

# init flask with map any ip outside from container
CMD ["flask", "run", "--host","0.0.0.0"]
