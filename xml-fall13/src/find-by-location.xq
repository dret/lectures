declare namespace gpx="http://www.topografix.com/GPX/1/1";
declare variable $dir := '/Users/dret/Desktop/Dropbox/training/';
declare variable $file := '2013-*.gpx';
declare variable $lon := -122.25;
declare variable $lat := 37.86;
declare variable $box := 0.05;

declare variable $lonlower := $lon - $box;
declare variable $lonupper := $lon + $box;
declare variable $latlower := $lat - $box;
declare variable $latupper := $lat + $box;
declare variable $files := collection(concat($dir,'?select=',$file));

for $activity in $files where exists($activity/gpx:gpx/gpx:trk/gpx:trkseg/gpx:trkpt[ (xs:decimal(@lon) gt $lonlower) and (xs:decimal(@lon) lt $lonupper) and (xs:decimal(@lat) gt $latlower) and (xs:decimal(@lat) lt $latupper) ])
    return ( $activity/gpx:gpx/gpx:trk/gpx:name/text(), "&#xa;")