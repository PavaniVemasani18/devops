rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-${var.env}/state-${var.env}.tfvars
terraform apply -var-file=env-${var.env}/main-file.tfvars -auto-config
