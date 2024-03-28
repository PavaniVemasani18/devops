rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-dev/state-dev.tfvars
terraform apply  -auto-approve
