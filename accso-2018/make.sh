git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar accso.xml hotspot/hotspot/hotspot.xsl messages=informative
