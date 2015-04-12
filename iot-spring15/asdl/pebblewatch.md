## Kidesense: Pebbblewatch project

### Verbs

#### add

Adding a new record to ASBase indicating the step count for person wearing the smartwatch

This value would only indicate the count at the time of syncing of watch to the smartphone.

{ "actor": {

"displayName": "TestPhone",

"id": "http://example.org/AndroidPhone",

"objectType": "device" },

"verb": "Add",

"status": "completed",

"object": {

"dataFields": [ "number of steps" ],

"objectType": "Binary" } ] }

#### complete

Completion of a milestone (for example, 2500 steps).

*{ "actor": {*

*"displayName": "TestPhone",*

*"id": "http://example.org/Smartphone",*

*"objectType": "device" },*

*"verb": "Complete",*

*"status": "completed" }*

*"object": {*

*"objectType": "Event" ,*

*“displayName”: “Milestone achieved!”} ] }*

Completion of a daily step goal, for example 10,000 steps.

*{ "actor": {*

*"displayName": "TestPhone,*

*"id": "http://example.org/Smartphone",*

*"objectType": "device" },*

*"verb": "Complete",*

*"status": "completed" ,*

*"object": {*

*"objectType": "Event" ,*

*“displayName”: “Goal met!”}*

*} ] }*

#### create

Creation of a new step goal for the day, an example would be 10,000 steps.

*{ "actor": {*

*"objectType": "person",*

*"displayName": "Bob" },*

*"verb": "create",*

*"object": {*

*"objectType": "game",*

*"displayName": "1000 step event created!" } }*

### Object Types

#### person

The actor who is currently using the smartwatch/smartphone to track their steps.

#### binary

This is an object representing data.

#### event

The completion of the step count objective for that particular day.

#### game

The creation of a new step count goal by the actor.

### Object Properties

#### data

The number of steps taken by the Person at the time of syncing of smartwatch to the smartphone.