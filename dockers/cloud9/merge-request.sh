#!/bin/bash

git checkout -b mergeRequest/$(echo ${@:2} | sed - e "s#[\s]*#_#g") &&
    git reset --soft ${1} &&
    git commit