FROM openjdk:8
ADD target/spring-petclinic-2.4.5.jar spring-petclinic-2.4.5.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.4.5.jar"]
