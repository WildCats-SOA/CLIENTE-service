FROM maven:lts

WORKDIR /cliente

ADD pom.xml /cliente/pom.xml

ADD src /cliente/src

RUN ["mvn","package"]

EXPOSE 8081
CMD ["mvn","spring-boot:run"]