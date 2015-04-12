# Kidesense: Pebbblewatch project

## Verbs

### add

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#add

Adding a new record to ASBase indicating the step count for person wearing the smartwatch. Indicates that the
processed pebble watch data has been uploaded to ASBase.

### complete

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#complete

* Completion of a milestone (for example, 2500 steps).

* Completion of a daily step goal, for example 10,000 steps.


###create

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#create

Creation of a new step goal for the day, an example would be 10,000 steps.

## Object Types

### person

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#person

The actor who is currently using the smartwatch/smartphone to track their steps.

### binary

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#binary

This is an object representing data, in this particular case it is the step count.

### event

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#event

The completion of the step count objective for that particular day.

### game

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#game

The creation of a new step count goal by the actor.

## Object Properties

### data

#### http://people.ischool.berkeley.edu/~rahul.jverma/pebblewatch_project#data

The number of steps taken by the Person at the time of syncing of smartwatch to the smartphone.

