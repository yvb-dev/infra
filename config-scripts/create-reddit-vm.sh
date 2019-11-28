#!/bin/bash

gcloud compute instances create reddit-app --boot-disk-size=15GB --machine-type=g1-small --tags puma-server --image  reddit-full --image-project=infra-258714 --restart-on-failure
