declare default element namespace "http://www.topografix.com/GPX/1/1";
declare namespace saxon="http://saxon.sf.net/";
declare option saxon:output "method=text";

declare variable $dir := '/Users/dret/Desktop/Dropbox/training/';
declare variable $file := '2010-*.gpx';
declare variable $files := collection(concat($dir,'?select=',$file));

declare variable $lon := -122.48;
declare variable $lat := 37.82;
declare variable $box := 0.01;

declare variable $lonlower := $lon - $box;
declare variable $lonupper := $lon + $box;
declare variable $latlower := $lat - $box;
declare variable $latupper := $lat + $box;

( "Searching", count($files), "files with", count($files/gpx/trk/trkseg/trkpt), "track points:&#xa;", 

for $activity in $files
    where exists($activity/gpx/trk/trkseg/trkpt[ (@lon > $lonlower) and
                                                 (@lon < $lonupper) and
                                                 (@lat > $latlower) and
                                                 (@lat < $latupper) ])
    return ( saxon:format-date(xs:date(substring($activity/gpx/metadata/time/text(),1,10)), "[MNn] [D], [Y]"),
             ": ",
             $activity/gpx/trk/name/text(),
             "&#xa;") )