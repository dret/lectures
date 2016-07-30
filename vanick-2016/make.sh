git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar microservices-api-design.xml hotspot/hotspot/hotspot.xsl messages=informative
