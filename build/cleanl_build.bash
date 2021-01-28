#!/bin/bash

source config/config.bash

if [ $# -eq 1 ]
then
    export APL_NAME=${1}
fi

cd ${WORKSPACE_PATH_UNIX}

cd ${APL_NAME}
rm main_task.h
../../../../../../../mruby-2.0.1/bin/mrbc -g -v -Bbcode -omain_task.h main_task.rb
ruby delete_extern.rb
cd ..


make img=${APL_NAME}




