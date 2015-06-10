#!/bin/bash

K8S_SOURCE_DIR=~/work/kubernetes

make
${K8S/SOURCE_DIR}/cluster/kubectl.sh create -f  testas.json 
${K8S/SOURCE_DIR}/cluster/kubectl.sh create -f  testrc.json 
