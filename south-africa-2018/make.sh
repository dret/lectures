git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar south-africa.xml hotspot/hotspot/hotspot.xsl messages=informative
