- The main.tf will create the dynamodb and s3 bucket
	- dynamodb to handle the scenario of multiple user changing or running the terraform state file.
	- the s3 bucket will store the state file.

- The outpt.tf is just a output file.

- The instance.tf file is a demo, it creates a Ec2 instance and its state file will be stored in above created s3 bucket.
	- while configuring the terraform add the backend details 
		- the s3 and dynamodb which are created on step one

- As the final step the ec2 instance will be created, state file will be on s3.