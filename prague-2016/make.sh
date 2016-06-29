git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar apim-meeting.xml hotspot/hotspot/hotspot.xsl messages=informative
