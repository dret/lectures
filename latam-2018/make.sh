git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar latam.xml hotspot/hotspot/hotspot.xsl messages=informative
