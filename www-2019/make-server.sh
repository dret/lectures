git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar www2019.xml hotspot/hotspot/hotspot.xsl messages=informative
