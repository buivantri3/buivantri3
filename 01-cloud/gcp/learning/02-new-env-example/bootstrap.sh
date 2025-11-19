#/bin/bash

PROJECT_ID=user-khyaafthvlrn
gcloud config set project $PROJECT_ID --quiet

terraform init && terraform apply --auto-approve && echo "Terraform apply is complete. Proceeding to next steps..."

gcloud container clusters get-credentials my-autopilot-cluster --region us-central1 --project $PROJECT_ID

kubectl create deployment hello-server --image=us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080
