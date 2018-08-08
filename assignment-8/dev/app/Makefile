.PHONY: all plan apply destroy

all: help

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'

help:						## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

get:		verify-aws-profile-set 		## Get the terraform modules
	AWS_PROFILE=${AWS_PROFILE} terraform get

init:		verify-aws-profile-set		## Initialize remote S3 backend.
	AWS_PROFILE=${AWS_PROFILE} terraform init -backend=true -backend-config="bucket=${TF_VAR_userid}-tf-workshop-assignment-8-dev-state" -backend-config="key=app.tfstate" -backend-config="region=${AWS_DEFAULT_REGION}"

plan:		verify-aws-profile-set		## Plan the changes to infra.
	AWS_PROFILE=${AWS_PROFILE} terraform plan -var-file=../common/dev.tfvars -var-file=../../common/common.tfvars

refresh:	verify-aws-profile-set		## Refresh the remote state with existing AWS infra.
	AWS_PROFILE=${AWS_PROFILE} terraform refresh -var-file=../common/dev.tfvars -var-file=../../common/common.tfvars

apply:		verify-aws-profile-set		## Apply the changes in plan.
	AWS_PROFILE=${AWS_PROFILE} terraform apply -var-file=../common/dev.tfvars -var-file=../../common/common.tfvars

output:		verify-aws-profile-set		## See the output.
	AWS_PROFILE=${AWS_PROFILE} terraform output -json

destroy:	verify-aws-profile-set		## Destroy the infra. (BE VERY CAREFUL with THIS).
	AWS_PROFILE=${AWS_PROFILE} terraform destroy -var-file=../common/dev.tfvars -var-file=../../common/common.tfvars

#ifndef AWS_PROFILE
#	$(error AWS_PROFILE is not defined. Make sure that you set your AWS profile and region.)
#endif
verify-aws-profile-set:
ifndef AWS_DEFAULT_REGION
	$(error AWS_DEFAULT_REGION is not defined. Make sure that you set your AWS region.)
endif
