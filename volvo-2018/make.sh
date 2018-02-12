git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar volvo.xml hotspot/hotspot/hotspot.xsl messages=informative
