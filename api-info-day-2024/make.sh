( cd hotspot ; git pull origin master )
git pull origin master
java -jar ../saxon/saxon.jar api-info-day.xml hotspot/hotspot/hotspot.xsl messages=informative
