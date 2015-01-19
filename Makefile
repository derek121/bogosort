compile:
	rebar compile

deps:
	rebar get-deps

all: deps compile

run:
	rebar shell

clean:
	rebar clean

