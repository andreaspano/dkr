#!/bin/bash


# ----------------    Variables  -------------------#
# project name
prj=dkrts


# development project path: ~/dev/fwtemp
dkr_path=~/dev/$prj
cd $dkr_path


# build docker
docker build  -t $prj $dkr_path

# save docker image
docker save -o $dkr_path/$prj.tar.gz $prj

