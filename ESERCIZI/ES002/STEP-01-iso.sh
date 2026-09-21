#!/bin/bash

# 1. Download ISO

# 2. Caricare l'iso come DataVolume:

virtctl image-upload dv win2022-iso \
  --namespace=nms-vm-iso \
  --image-path=./WindowsServer2022.iso \
  --storage-class=standard
  --insecure

  


