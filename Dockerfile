FROM openjdk:21-jdk-slim

WORKDIR /app

COPY ./build/libs/*.jar /app/recipe-mate.jar

CMD ["java", "-Duser.timezone=Asia/Seoul", "-Dspring.profiles.active=dev", "-jar", "recipe-mate.jar"]
