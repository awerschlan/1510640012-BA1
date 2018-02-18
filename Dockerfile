FROM tomcat:9
MAINTAINER awerschlan <docker@werschlan.at>
RUN set -ex \
	&& rm -rf /usr/local/tomcat/webapps/* \
	&& chmod a+x /usr/local/tomcat/bin/*.sh \
	&& wget -q http://central.maven.org/maven2/org/apache/struts/struts2-showcase/2.3.12/struts2-showcase-2.3.12.war -O /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
