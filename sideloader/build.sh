#!/bin/bash

cp -a $REPO ./build/$NAME

${PIP} install -r $REPO/FreebasicsPublic/requirements.txt

