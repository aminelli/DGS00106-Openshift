#!/bin/bash

oc apply -f vmrestore.yaml
oc get vmrestore -n corso
oc wait vmrestore debian13-restore1 -n corso --for=condition=Ready --timeout=300s

virtctl start debian13-vm -n corso
