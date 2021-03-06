#!/usr/bin/env bash
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# This script calls add-user.sh and gives this user very permissive privileges in Batch on GKE
# Warning: only give these privileges if the user is a cluster admin.

# This script assumes that the kubectl is already configured.

read -p "Please enter the name of your project:" PROJECT_NAME
echo "Output from gcloud auth list may be helpful for the next prompt: "
echo $(gcloud auth list)
read -p "Please enter the username in this GCP project (example: alice@example.com). Leave blank if using a service account:" USER_NAME
if [[ -z $USER_NAME ]]; then
  read -p "Please enter the service account in this GCP project (example: bob-batch@project.iam.gserviceaccount.com):" SERVICE_ACCOUNT
fi
echo "A short name is also needed to create k8s resources names."
echo "A short name consists of lower case alphanumeric characters, -, and ."
echo "example: use alice as short name for username alice@example.com"
read -p "Please type in a short name: " SHORT_NAME

# adjust the directory to where the admin-tools dir is
pushd ../../admintools/users
if [[ -n $USER_NAME ]]; then
  ./add-user.sh -s "${SHORT_NAME}" -u "${USER_NAME}" -n default --project "${PROJECT_NAME}"
else
  ./add-user.sh -s "${SHORT_NAME}" -sa "${SERVICE_ACCOUNT}" -n default --project "${PROJECT_NAME}"
fi
popd
