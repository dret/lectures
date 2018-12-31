git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar ericsson.xml hotspot/hotspot/hotspot.xsl messages=informative
