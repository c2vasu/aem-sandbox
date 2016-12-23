# Java version 7 image
FROM java:7

MAINTAINER Srinivas Rao <rao.srinivasa.s@gmail.com>

RUN mkdir /opt/aem/
WORKDIR /opt/aem/

# Copy Jar file and license
COPY ./cq-quickstart-6.0.jar /opt/aem/cq-quickstart-6.0.jar
COPY ./license.properties /opt/aem/license.properties

# Set environment variable
ENV CQ_FOREGROUND y
ENV CQ_VERBOSE    y
ENV CQ_NOBROWSER  y
ENV CQ_RUNMODE    "dev,author,samplecontent"
ENV CQ_JVM_OPTS   "-server -Xmx1524M -Xms512M -XX:MaxPermSize=512M"

# Run AEM installar
RUN java -jar cq-quickstart-6.0.jar -unpack -v

# Start server
CMD crx-quickstart/bin/quickstart
