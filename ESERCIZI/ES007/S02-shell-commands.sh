#!/bin/bash

oc apply -f vmsnapshot.yaml

# Stato
oc get vmsnapshot -n corso
oc wait vmsnapshot debian13-snap1 -n corso --for=condition=Ready --timeout=300s
oc describe vmsnapshot debian13-snap1 -n corso

# Pronto all'uso? (true/false)
oc get vmsnapshot debian13-snap1 -n corso -o jsonpath='{.status.readyToUse}{"\n"}'

# Contenuto e volumi coinvolti
oc get vmsnapshotcontent -n corso
oc get volumesnapshot -n corso