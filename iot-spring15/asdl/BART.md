# Internet of BART

#### http://internet-of-bart/schema-documentation/

This document presents the vocabulary used in the Internet of BART project.


## Verbs


### add

#### http://internet-of-bart/schema-documentation/#add

Indicates that a new train is added to the tracking system. This happens every time a train leaves a terminus.


### checkin

#### http://internet-of-bart/schema-documentation/#checkin

Indicates that a train has arrived at a new station.



## Object Types


### train

#### http://internet-of-bart/schema-documentation/#train

Represents a moving BART train. A train is an ensemble of cars.


### car

#### http://internet-of-bart/schema-documentation/#car

Represents a car of a train.


## Object Properties


### train_density_index

#### http://internet-of-bart/schema-documentation/#train_density_index

The density index of a train. 0 < train_density_index < 1

This property has the type ``Float`` and only has well-defined meaning for objects of the following types: train


### train_overcrowded

#### http://internet-of-bart/schema-documentation/#train_overcrowded

Boolean. True if the train is considered overcrowded (train_density_index > 0.5), else it is False.

This property has the type ``Float`` and only has well-defined meaning for objects of the following types: train


### car_density_index

#### http://internet-of-bart/schema-documentation/#acar_density_index

The density index of a car. 0 < car_density_index < 1

This property has the type ``Float`` and only has well-defined meaning for objects of the following types: car


### overcrowded

#### http://internet-of-bart/schema-documentation/#overcrowded

Boolean. True if the car is considered overcrowded (car_density_index > 0.5), else it is False.

This property has the type ``Float`` and only has well-defined meaning for objects of the following types: car