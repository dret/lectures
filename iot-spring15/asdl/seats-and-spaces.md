# Internet of Seats and Spaces Schema

#### http://serene-wave-9290.herokuapp.com/schema-documentation

This document presents the vocabulary used in the Internet of Seats and Spaces project.


## Verbs


### checkin

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#checkin

Indicates that the actor has entered or occupied the object (place).


### leave

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#leave

Indicates that the actor has left or vacated the object (place).


### request

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#request

Indicates that the actor has requested the object (place) for a specified time.


### cancel

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#cancel

Indicates that the actor has canceled the object (request).


### approve

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#approve

Indicates that the actor has approved the object (request).


### deny

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#deny

Indicates that the actor has denied the object (request).


## Object Types


### place

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#place

Represents a physical location. This may be tied to a physical object (chair), a physical space (room), and/or a geographic location (latitude,longitude).


### activity

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#activity

Represents an activity. This will be the object type for requests.


## Object Properties


### position

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#position

The latitude, longitude, and altitude of the object (place). This is not necessarily constant for a single object (place). For example, a chair may be moved.

This property has the type ``JSON Object`` and only has well-defined meaning for objects of the following types: Place


### latitude

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#latitude

The latitude of this point on Earth according to the WGS-84 coordinate reference system in decimal degrees (e.g. 27.9881, -3.12676).

This property has the type ``Floating point Number`` and only has well-defined meaning for objects of the following types: Place


### longitude

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#longitude

The longitude of this point on Earth according to the WGS-74 coordinate reference system in decimal degrees (e.g. 86.9253, -134.4323).

This property has the type ``Floating point Number`` and only has well-defined meaning for objects of the following types: Place


### altitude

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#altitude

The elevation of this point relative to the Earth, in meters above or below mean sea level (e.g. 8848.00, -86.00).

This property has the type ``Floating point Number`` and only has well-defined meaning for objects of the following types: Place


### displayName

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#displayName

A human-readable name that describes the object (place).

This property has the type ``String`` and only has well-defined meaning for objects of the following types: Place


### startTime

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#startTime

A time that represents the beginning of the object (request).

This property has the type ``String`` in the format ``%Y-%m-%dT%H:%M:%SZ`` and only has well-defined meaning for objects of the following types: Activity (verb: request)


### endTime

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#endTime

A time that represents the end of the object (request).

This property has the type ``String`` in the format ``%Y-%m-%dT%H:%M:%SZ`` and only has well-defined meaning for objects of the following types: Activity (verb: request)


### descriptor-tags

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#descriptor-tags

A list of descriptors that detail the object's (place) properties.

This property has the type ``JSON Array``, consists of ``String``s, and only has well-defined meaning for objects of the following types: Place


### reason

#### http://serene-wave-9290.herokuapp.com/schema-documentation/#reason

A human-readable explanation of the action (deny).

This property has the type ``String`` and only has well-defined meaning for objects of the following types: Activity (verb: deny)



