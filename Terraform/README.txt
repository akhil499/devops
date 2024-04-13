# Infrastructure as code (Terraform)

PROBLEMS

1. Moving resources from one cloud to another/ or to on premisis
2. for eg: AWS CFT only works for AWS if we want to move to AZURE we should re write the templates in Azure resource manager
    1. And now companies use hybrid cloud → it requires learning different template building

What Terraform is doing

1. The dev has to write terraform template with the requirements and cloud provider details
2. Based on the cloud provider and given template Terraform converts it into API call
3. And calls the respective APIs of the cloud provider to do the job

PRACTICAL IMPLEMENTATION

to install terraform on linux :
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

IMPORTANT TERRAFORM COMMANDS

1. terraform init → Initialize
2. terraform plan → Dry run
3. terraform apply
4. terraform destroy

To run terraform we need to have authenticated with the cloud provider.
for AWS we should install aws cli and do aws configure

There are two types

local state → where running the terraform files from where it is stored , (local)

remote state → running the terraform from remote location (eg: s3)