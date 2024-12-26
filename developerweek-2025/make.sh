( cd hotspot ; git pull origin master )
git pull origin master
java -jar ../saxon/saxon.jar devweek.xml hotspot/hotspot/hotspot.xsl messages=informative
