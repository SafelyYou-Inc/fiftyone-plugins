target:
	mkdir -p target

annotation: target
	pushd plugins/annotation && zip ../../target/safelyyou-annotation.zip -r . && popd

plugins: target
	pushd plugins/plugins && zip ../../target/voxel51-plugins.zip -r . && popd

clean:
	rm target/*

build: annotation plugins
