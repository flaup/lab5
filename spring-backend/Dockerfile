FROM alpine AS base

WORKDIR /app

RUN apk add maven --no-cache

COPY . .

RUN mvn package -DskipTests=true
###
FROM alpine

WORKDIR /app

RUN apk add openjdk21 --no-cache && \
    addgroup -S users5 && \
    adduser -S users5 -G users5

USER users5:users5

COPY --from=base /app/target/*.jar app.jar

CMD [ "java", "-jar", "app.jar" ] 