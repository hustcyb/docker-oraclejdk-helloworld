FROM centos
ADD jdk-8u151-linux-x64.tar.gz /usr/local
ENV JAVA_HOME /usr/local/jdk1.8.0_151
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
ENV PATH $PATH:$JAVA_HOME/bin:$JRE_HOME/bin
COPY HelloWorld.java /data/HelloWorld.java
WORKDIR /data
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]