#!/bin/sh

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get install -y apt-transport-https ca-certificates gnupg

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update && sudo apt-get install -y google-cloud-sdk

sudo apt-get install -y google-cloud-sdk-app-engine-python
sudo apt-get install -y google-cloud-sdk-app-engine-python-extras
sudo apt-get install -y google-cloud-sdk-app-engine-java
sudo apt-get install -y google-cloud-sdk-app-engine-go
sudo apt-get install -y google-cloud-sdk-bigtable-emulator
sudo apt-get install -y google-cloud-sdk-cbt
sudo apt-get install -y google-cloud-sdk-cloud-build-local
sudo apt-get install -y google-cloud-sdk-datalab
sudo apt-get install -y google-cloud-sdk-datastore-emulator
sudo apt-get install -y google-cloud-sdk-firestore-emulator
sudo apt-get install -y google-cloud-sdk-pubsub-emulator
sudo apt-get install -y kubectl
