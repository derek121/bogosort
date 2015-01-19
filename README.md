# Bogosort

## Overview
This project is an implementation of [Bogosort](http://en.wikipedia.org/wiki/Bogosort) in Erlang. The Bogosort algorithm can be summarized at a high level as follows:

```
while (list is not sorted) {
  randomly shuffle list
}
```

## Use
rebar must be in your path. See <https://github.com/rebar/rebar> for details.

**To run in a shell:**

```
$ git clone https://github.com/derek121/bogosort.git
$ cd bogosort
$ make && make run
...
1> bogosort:sort([6,3,4,8,2]).
[2,3,4,6,8]
2>
```

**To run from code:**  
Include this project in your rebar.config `deps` list, and possibly in your `.app` file's `applications` list. But see *Warning* below.

## Warning
It is not recommended that one use this code in production. Or anywhere else that forward progress of an application is desired.

## References
* <http://en.wikipedia.org/wiki/Bogosort>
* A variation on Bogosort- [Bogobogosort](http://www.dangermouse.net/esoteric/bogobogosort.html)

