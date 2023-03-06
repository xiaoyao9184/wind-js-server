FROM timbru31/java-node:8-jdk-14

WORKDIR /server
COPY converter converter/
COPY package.json package.json
COPY app.js app.js

RUN npm install

CMD [ "npm", "start" ]

VOLUME /server/json-data /server/grib-data

EXPOSE 7000