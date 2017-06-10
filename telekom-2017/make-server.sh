git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar telekom.xml hotspot/hotspot/hotspot.xsl messages=informative
