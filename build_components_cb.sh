#!/bin/bash
# Copyright 2021 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#            http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Submits a Cloud Build job that builds and deploys
# the pipelines and pipelines components

# shellcheck disable=SC2155
export PROJECT_ID=$(gcloud config get-value core/project)



# To use regional Cloud Build, add '--region=$REGION'. However, the project need to be added to allow
gcloud builds submit .. --config components/cloudbuild_components.yaml --substitutions TAG_NAME=latest
