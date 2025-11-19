#/bin/bash

PROJECT_ID=user-boxylkxbbveb
REGION=us-central1

gcloud config set project $PROJECT_ID --quiet

cd infra
terraform init && terraform destroy --auto-approve && echo "Terraform destroy is complete. Done."