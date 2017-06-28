#!/bin/bash


## Zinst base dir
BaseDIR="/data"

## IP check for pacakge repo server
BaseIP=`ip a s eth0 |grep "inet " | awk '{print $2}' | awk -F'/' '{print $1}'`
	if [[ $BaseIP = "" ]];then
		BaseIP=`ip a s  |grep "inet " | awk '{print $2}' | awk -F'/' '{print $1}' | egrep -v "127.0.0.1" | head -1`
	fi

## Old file clean
sudo rm /usr/bin/zinst 2> /dev/nul

## Require package install
sudo yum install bc tar -y


## New file copy
sudo cp ./zinst /usr/bin/zinst

## Default dir create
sudo mkdir -p $BaseDIR/vault/Source
sudo mkdir -p $BaseDIR/dist/rhel7

## Set default configuration for zinst package server
sudo zinst self-config ip=$BaseIP host=$BaseIP dir=$BaseDIR 2> /dev/null

## Remove tmp dir for exception
sudo rm -Rf ./RootDirectorY 2> /dev/null

## Base pacakge copy to current Dir.
cp ./base_package/* ./

## Package install for default server setting
zinst i server_default_setting-1.3.2.zinst -same 2> /dev/null

## Base package copy to package server source Dir.
sudo cp -Rfv ./dist/rhel7/* /data/dist/rhel7/
sudo cp ./zinst /data/dist/

## Zinst package_server install 
zinst i zinst_simple_server-1.0.7.zinst -same

