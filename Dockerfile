RUN mkdir /opt/tomcat
RUN wget -P  /opt/tomcat http://mirror.bit.edu.cn/apache/tomcat/tomcat-9/v9.0.8/bin/apache-tomcat-9.0.8.tar.gz
RUN tar xzf /opt/tomcat/apache-tomcat-9.0.8.tar.gz -C /opt/tomcat && rm -rf /opt/tomcat/apache-tomcat-9.0.8.tar.gz
ENV JAVA_HOME /opt/jdk/jdk1.8.0_172
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin
EXPOSE 8080
ENTRYPOINT /opt/tomcat/apache-tomcat-9.0.8/bin/startup.sh && tail -F /opt/tomcat/apache-tomcat-9.0.8/logs/catalina.out