FROM registry-scu.cloudtogo.cn/ubuntu:jdk
ARG app
ADD $app target/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/app.jar"]
