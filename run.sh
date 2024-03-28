rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-dev/state-dev.tfvars
terraform apply -var-file=env-dev/main-file.tfvars -auto-config
