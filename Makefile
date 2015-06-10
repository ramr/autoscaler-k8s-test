#!/bin/env make

all:	build

build:	
	docker build -t  ncwebservice .
