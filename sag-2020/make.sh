( cd hotspot ; git pull origin master )
git pull origin master
java -jar ../saxon/saxon.jar sag.xml hotspot/hotspot/hotspot.xsl messages=informative
