gcloud services enable compute
gcloud services enable cloudresourcemanager.googleapis.com

PROJECT_ID=user-fqwqfkmepzep
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="user:ethan.bui@tribv.cloud" \
    --role="roles/editor"

PROJECT_ID=user-fqwqfkmepzep
gcloud config set project $PROJECT_ID

gcloud services enable container

gcloud services enable storage-api.googleapis.com
gcloud services enable storage.googleapis.com

gcloud services enable monitoring
gcloud services enable logging

gcloud services enable containerscanning.googleapis.com

gcloud services enable cloudfunctions.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable secretmanager.googleapis.com
gcloud services enable run.googleapis.com
gcloud services enable dataproc.googleapis.com
gcloud services enable cloudkms.googleapis.com 
gcloud services enable domains.googleapis.com
