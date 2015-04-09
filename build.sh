#!/bin/bash
cd /usr/src/heka/
source build.sh
make package
make deb
cp /usr/src/heka/build/heka*{rpm,tar.gz,deb} /output
