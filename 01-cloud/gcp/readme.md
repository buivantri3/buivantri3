gcloud services enable compute
gcloud services enable cloudresourcemanager.googleapis.com

PROJECT_ID=user-fqwqfkmepzep
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="user:ethan.bui@tribv.cloud" \
    --role="roles/editor"

PROJECT_ID=user-fqwqfkmepzep
gcloud config set project $PROJECT_ID