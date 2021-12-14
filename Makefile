.PHONY: prepare init validate format plan apply-changes

prepare:
	@echo "Prepare Terraform Project"
	@touch private.auto.tfvars
	@echo 'project_name = "GCP_PROJECT_NAME"' > private.auto.tfvars
	@echo 'region 		 = "GCP_REGION"' >> private.auto.tfvars
	@echo 'zone  		 = "GCP_ZONE"' >> private.auto.tfvars
	@echo 'ssh_keys   = [{user:"username", key="public_key"}]' >> private.auto.tfvars
	@echo "\e[32mPlease Update private.auto.tfvars !"
init:
	@echo "Initialize Terraform Project"
	 - @terraform init -backend-config=private.auto.tfvars
validate:
	@echo "Terraform Validate"
	 - @terraform validate
format:
	@echo "Terraform Format files"
	 - @terraform fmt -recursive
plan:
	@echo "Terraform Plan"
	 - @terraform plan
apply-changes:
	@echo "\033[0;31mUse with Consideration and Caution or DON'T !!"
	@echo "\033[1;33m Are you Sure Press CTRL+C to quit or ENTER to continue ?!!"
	- @read continue
	- terraform apply
	

   	





