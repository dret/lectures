git pull origin master
( cd hotspot ; svn update )
java -jar ../saxon/saxon.jar fidelity.xml hotspot/hotspot/hotspot.xsl messages=informative
