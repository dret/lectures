git pull origin master
( cd hotspot ; svn update )
~/java/bin/java -jar ../saxon/saxon.jar march.xml hotspot/hotspot/hotspot.xsl messages=informative
~/java/bin/java -jar ../saxon/saxon.jar may.xml hotspot/hotspot/hotspot.xsl messages=informative
