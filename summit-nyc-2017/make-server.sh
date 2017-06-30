git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar summit-nyc.xml hotspot/hotspot/hotspot.xsl messages=informative
