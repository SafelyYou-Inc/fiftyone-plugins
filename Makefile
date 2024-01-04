target:
	mkdir -p target

annotation: target
	pushd plugins/annotation && zip ../../target/safelyyou-annotation.zip -r . && popd

clean:
	rm target/*

build: annotation
