git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar microservices-and-the-web.xml hotspot/hotspot/hotspot.xsl messages=informative
