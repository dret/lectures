git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar wsrest2015.xml hotspot/hotspot/hotspot.xsl messages=informative
