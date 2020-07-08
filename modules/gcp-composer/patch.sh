#!/bin/bash

composer=$(gcloud composer environments describe testcom --location us-east1 | grep  "gkeCluster" | cut -d '/' -f 6-)

gcloud container clusters get-credentials $composer --zone us-east1-b --project ekstepspeechrecognition

namespace=$(kubectl get namespace | grep "composer" | awk '{print $1;}')
echo $namespace

#service account credentials
kubectl create secret generic --namespace=$namespace gc-storage-rw-key --from-file=key.json=$GOOGLE_APPLICATION_CREDENTIAL_SERVICE_ACC

gcloud composer environments run testcom --location=us-east1 variables -- --set composer_namespace $namespace