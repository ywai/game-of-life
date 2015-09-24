FROM maven:3.3.3-jdk-8-onbuild
RUN ["mvn","clean","install"]
CMD ["mvn", "jetty:run"]