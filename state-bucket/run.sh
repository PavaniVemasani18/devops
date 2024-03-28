env=$1
action=$2
if [ -z $env ]; then
  echo "env [dev/prod] is missing"
fi
if [ -z $action ]; then
  echo "action [init/apply/destroy] is missing"
fi
rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-$env/state-$env.tfvars
terraform action  -auto-approve
