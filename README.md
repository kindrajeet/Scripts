# Scripts

This will ideally help in getting the "Storage.yaml" modified on real time with the "bd" devices added in the yaml with UUID and node name.

Pre-requisities for getting this script executed:

Install YQ (yaml query tool) on Linux systems- Ideally Personal workstation - only once

$ snap install yq
$ once on customer system, get the output of "kubectl get bd -n openebs"
$ clone this repository on local system (ideally your workstation where "yq" is installed)
$ Modify the "bd" file to match the contents of output achieved from "kubectl get bd -n openebs"
$ ./main.sh
$ Recheck the storage.yaml if the entries have been modified


Key Points: (Since in alpha phase)

count for the number of block devices present
make similar entries in "main.sh" for each variable in each section to match the count of block devices

To Do: (to check if yaml needs to be modified for additional entries depending on node counts & if it works and avoids sparsh files)
