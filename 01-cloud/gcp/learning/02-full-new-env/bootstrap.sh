#/bin/bash

PROJECT_ID=user-boxylkxbbveb
REGION=us-central1

gcloud config set project $PROJECT_ID --quiet

cd infra
terraform init && terraform apply --auto-approve && echo "Terraform apply is complete. Proceeding to next steps..."

cd .. && cd hello-world-app
gcloud container clusters get-credentials my-autopilot-cluster --region $REGION --project $PROJECT_ID
skaffold run --default-repo $REGION-docker.pkg.dev/$PROJECT_ID/my-docker-repo

echo "Done."