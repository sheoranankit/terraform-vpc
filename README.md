# terraform-vpc

- To pass custom values for vpc edit ***vpc.tfvars.reference*** in vars folder to ***vpc.tfvars*** and pass your values there.

- To apply:-

    ```
    terraform init
    terraform validate
    terraform plan -var-file=vars/vpc.tfvars -out plan.out
    terraform apply "plan.out"

    ```
- After Successful Deployment of source part, you will get the required outputs.

- To clean up the stack, run the following command -

    ```
    terraform destroy -var-file=vars/vpc.tfvars

    ```