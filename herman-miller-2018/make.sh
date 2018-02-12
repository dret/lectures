git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar herman-miller.xml hotspot/hotspot/hotspot.xsl messages=informative
