FROM python:3.7-slim

COPY . /app/

# Set the working directory to /app
WORKDIR /app

RUN apt-get update && \
    apt-get install --no-install-recommends -y build-essential && \
    pip install flask flask-bcrypt flask-restplus Flask-Migrate pyjwt Flask-Script flask_testing

EXPOSE 80
EXPOSE 5000

# RUN apidoc -o ./ -t /usr/lib/node_modules/apidoc-contenttype-plugin/template/ --parse-parsers apicontenttype=/usr/lib/node_modules/apidoc-contenttype-plugin/api_content_type.js -e node_modules/

CMD [ "npm","start" ]