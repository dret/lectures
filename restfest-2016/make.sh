git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar dissecting-the-web.xml hotspot/hotspot/hotspot.xsl messages=informative
