gcloud services enable compute
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable container

gcloud services enable storage-api.googleapis.com
gcloud services enable storage.googleapis.com

gcloud services enable monitoring
gcloud services enable logging

gcloud services enable containerscanning.googleapis.com
gcloud services enable dns.googleapis.com
gcloud services enable iam.googleapis.com

PROJECT_ID=user-boxylkxbbveb
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="user:ethan.bui@tribv.cloud" \
    --role="roles/editor"

PROJECT_ID=user-boxylkxbbveb
gcloud config set project $PROJECT_ID --quiet



gcloud services enable cloudfunctions.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable secretmanager.googleapis.com
gcloud services enable run.googleapis.com
gcloud services enable dataproc.googleapis.com
gcloud services enable cloudkms.googleapis.com 
gcloud services enable domains.googleapis.com

terraform state list
terraform state rm google_container_cluster.autopilot_cluster
terraform force-unlock --force LOCK_ID
terraform force-unlock --force 5d8b421c-3596-61dd-fdd1-165dfb867b59
