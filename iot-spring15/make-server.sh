git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar iot-spring15.xml hotspot/hotspot/hotspot.xsl messages=informative
