env=$1
rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-$env/state-$env.tfvars
terraform apply  -auto-approve
