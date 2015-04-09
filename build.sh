#!/bin/bash
cd /usr/src/heka/
source build.sh
make package
cp /usr/src/heka/build/*rpm /output
cp /usr/src/heka/build/*tgz /output
