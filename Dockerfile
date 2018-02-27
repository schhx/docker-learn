FROM registry.docker-cn.com/library/openjdk:8-jre

ENV APP_JAR /app/bin/app.jar
COPY ./target/docker-learn.jar $APP_JAR

RUN mkdir -p /app/log \
 && mkdir -p /app/conf

COPY entrypoint.sh /app/bin/

ENTRYPOINT ["/app/bin/entrypoint.sh"]
CMD ["java","-jar","/app/bin/app.jar"]