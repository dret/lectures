git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar iot-spring15.xml hotspot/hotspot/hotspot.xsl messages=informative
cd a
java -jar ../../saxon/saxon.jar iot-spring15-assignments.xml assignments2html.xsl
