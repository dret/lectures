git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar march.xml hotspot/hotspot/hotspot.xsl messages=informative
java -jar ../saxon/saxon.jar may.xml hotspot/hotspot/hotspot.xsl messages=informative
