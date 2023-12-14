FROM node:19-alpine
WORKDIR /app

COPY package.json /app/
COPY app /app/

RUN npm install
RUN npm run dev

EXPOSE 3000

CMD [ "npm","run" ]