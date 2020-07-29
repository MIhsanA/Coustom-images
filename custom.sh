#!/bin/bash
az group create -n customRG -l uksouth
az vm create -g customRG -n customVM --image UbuntuLTS --generate-ssh-keys --custom-data ~/cloud-init.txt
az vm open-port -g customRG -n customVM --port 5000