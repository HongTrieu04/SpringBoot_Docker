FROM openjdk:23
WORKDIR /app
ARG DEPENDENCY=target/dependency
COPY target/SB_Docker-0.0.1-SNAPSHOT.jar app.jar
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java", "-jar", "app.jar"]