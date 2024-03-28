env=$1
rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-$env/state-dev.tfvars
terraform apply  -auto-approve
