#!/bin/bash
#
# Script to patch a installed virtualenvironment.
# This is normaly run by postinst of a debian package

# the virtual environment

VENV=$1

###############################################################
# fix tests in linecache2 package, file does not compile
# also see: https://github.com/testing-cabal/linecache2/issues/2
LINECACHE='lib/python2.7/site-packages/linecache2/tests/inspect_fodder2'
if [ -f ${VENV}/${LINECACHE}.py ]; then
	mv ${VENV}/${LINECACHE}.py ${VENV}/${LINECACHE}.pytest
fi

