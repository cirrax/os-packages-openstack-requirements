#!/bin/sh

DISTRI='stretch'
MAJREL='newton'

if  [ `git rev-parse --abbrev-ref HEAD` != "debian/${DISTRI}-${MAJREL}" ]; then
       echo 'not on correct branch'
       exit 1
fi
git remote add upstream  https://github.com/openstack/requirements

git fetch --all

git merge upstream/stable/${MAJREL} --no-edit
