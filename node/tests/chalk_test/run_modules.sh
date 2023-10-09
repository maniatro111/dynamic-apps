#!/bin/bash

PATH_TO_RUN_APP_ELFLOADER="../../../../run-app-elfloader/"
EXECUTABLE="/bin/node"
TEST="/tests/chalk_test/chalk_test.js"

npm install chalk@4.1.2

pushd $PATH_TO_RUN_APP_ELFLOADER > /dev/null 2>&1 || exit

sudo ./run.sh -n -r ../dynamic-apps/node/ "$EXECUTABLE" "$TEST"

popd > /dev/null 2>&1 || exit
