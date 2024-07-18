tf-init:
	terraform init

tf-plan:
	terraform plan

tf-apply:
	terraform apply -auto-approve

ec2-private-key:
	terraform output -raw private_key

ec2-dns:
	terraform output -raw ec2_public_dns

tf-destroy:
	terraform destroy -auto-approve

ssh-ec2:
	terraform output -raw private_key > private_key.pem && chmod 600 private_key.pem && ssh -o StrictHostKeyChecking=no -o IdentitiesOnly=yes -i private_key.pem ubuntu@$$(terraform -chdir=./terraform output -raw ec2_public_dns) && rm private_key.pem
