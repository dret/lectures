declare default element namespace "http://www.topografix.com/GPX/1/1";

declare variable $files := doc("/");

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
    return ( substring($activity/gpx/metadata/time/text(),1,10),
             ": ",
             $activity/gpx/trk/name/text(),
             "&#xa;") )