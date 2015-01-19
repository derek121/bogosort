# Bogosort

## Overview
This project is an implementation of [Bogosort](http://en.wikipedia.org/wiki/Bogosort) in Erlang. The Bogosort algorithm can be summarized at a high level as follows:

    while (list is not sorted) {
      randomly shuffle list
    }

## Warning
It is not recommended that one use this code in production. Or anywhere else that forward progress of an application is desired.

## References
* <http://en.wikipedia.org/wiki/Bogosort>
* A variation on Bogosort- [Bogobogosort](http://www.dangermouse.net/esoteric/bogobogosort.html)