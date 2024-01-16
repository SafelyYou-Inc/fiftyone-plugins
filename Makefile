SHELL := /bin/bash

target:
	mkdir -p target

annotation: target
	pushd plugins/fiftyone_labelbox && zip ../../target/safelyyou-fiftyone_labelbox.zip -r . && popd

clean:
	rm target/*

build: annotation
