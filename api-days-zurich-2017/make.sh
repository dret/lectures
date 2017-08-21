git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar api-days-zrh.xml hotspot/hotspot/hotspot.xsl messages=informative
