#!/bin/bash

var1=$(cat bd |awk {'print $1'} |sed -n '2p')
var2=$(cat bd |awk {'print $1'} |sed -n '3p')
var3=$(cat bd |awk {'print $1'} |sed -n '4p')
var4=$(cat bd |awk {'print $1'} |sed -n '5p')

_var1=$(cat bd |awk {'print $2'} |sed -n '2p')
_var2=$(cat bd |awk {'print $2'} |sed -n '3p')
_var3=$(cat bd |awk {'print $2'} |sed -n '4p')
_var4=$(cat bd |awk {'print $2'} |sed -n '5p')

yq w -i storage.yaml "spec.pools[0].nodeSelector[*]" "$_var1"
yq w -i storage.yaml "spec.pools[1].nodeSelector[*]" "$_var2"
yq w -i storage.yaml "spec.pools[2].nodeSelector[*]" "$_var3"
yq w -i storage.yaml "spec.pools[3].nodeSelector[*]" "$_var4"

yq w -i storage.yaml "spec.pools[0].dataRaidGroups[0].blockDevices[0].blockDeviceName" "$var1"
yq w -i storage.yaml "spec.pools[1].dataRaidGroups[0].blockDevices[0].blockDeviceName" "$var2"
yq w -i storage.yaml "spec.pools[2].dataRaidGroups[0].blockDevices[0].blockDeviceName" "$var3"
yq w -i storage.yaml "spec.pools[3].dataRaidGroups[0].blockDevices[0].blockDeviceName" "$var4"


testing again
