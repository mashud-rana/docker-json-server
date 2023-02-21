FROM node:latest

WORKDIR /home/server


RUN npm install -g json-server


COPY db.json /home/server/db.json

EXPOSE 3000

ENTRYPOINT ["json-server", "db.json", "--host", "0.0.0.0"]