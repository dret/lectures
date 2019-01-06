git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar www20189xml hotspot/hotspot/hotspot.xsl messages=informative
