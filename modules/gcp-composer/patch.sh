#!/bin/bash

LOCATION="us-east1"
ZONE="us-east1-b"
COMPOSER_ENV_NAME="ekstepcomposer"
PROJECT="ekstepspeechrecognition"

composer=$(gcloud composer environments describe $COMPOSER_ENV_NAME --location $LOCATION | grep  "gkeCluster" | cut -d '/' -f 6-)

gcloud container clusters get-credentials $composer --zone $ZONE --project $PROJECT

namespace=$(kubectl get namespace | grep "composer" | awk '{print $1;}')
echo $namespace

#service account credentials
kubectl create secret generic --namespace=$namespace gc-storage-rw-key --from-file=key.json=$GOOGLE_APPLICATION_CREDENTIAL_SERVICE_ACC

gcloud composer environments run $COMPOSER_ENV_NAME --location=$LOCATION variables -- --set composer_namespace $namespace