FROM alpine

WORKDIR /app

EXPOSE 3000

RUN apk add npm --no-cache && \
    addgroup -S users5 && \
    adduser -S users5 -G users5
    
COPY package.json package.json

RUN npm install --force --legacy-peer-deps && \
    chown -R users5:users5 /app

USER users5:users5

COPY src    /app/src
COPY public /app/public

CMD [ "npm", "start" ]