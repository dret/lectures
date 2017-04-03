git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar geojson.xml hotspot/hotspot/hotspot.xsl messages=informative
