FROM centos
ADD jdk-8u151-linux-x64.tar.gz /usr/local
ENV JAVA_HOME /usr/local/jdk1.8.0_151
ENV PATH $PATH:$JAVA_HOME/bin
COPY HelloWorld.java /data/HelloWorld.java
WORKDIR /data
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]