validate:
	@terraform init -backend=false terraform
	@terraform validate $(TF_VALIDATE_ARGS) terraform

clean:
	@find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;
	@find . -type d -name ".terraform" -prune -exec rm -rf {} \;



