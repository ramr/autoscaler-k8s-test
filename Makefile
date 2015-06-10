#!/bin/env make

K8S_SOURCE_DIR = $(HOME)/work/kubernetes
all:	build

build:	
	docker build -t  ncwebservice .

tests:	test

test:	build
	$(K8S_SOURCE_DIR)/cluster/kubectl.sh create -f test-as.json
	$(K8S_SOURCE_DIR)/cluster/kubectl.sh create -f test-rc.json

clean:
	$(K8S_SOURCE_DIR)/cluster/kubectl.sh delete -f test-as.json || :
	$(K8S_SOURCE_DIR)/cluster/kubectl.sh delete -f test-rc.json || :
