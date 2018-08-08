### assignment-6

1. Create **dev** infra through terraform:

```
# cd assignment-6/dev

# terraform init

# change windows path / to \ accordingly

# terraform plan -var-file=../common/common.tfvars

# terraform apply -var-file=../common/common.tfvars

# terraform destroy -var-file=../common/common.tfvars
```


2. Create **stage** infra through terraform:

```
# cd assignment-6/stage

# terraform init

# terraform plan -var-file=../common/common.tfvars

# terraform apply -var-file=../common/common.tfvars

# terraform destroy -var-file=../common/common.tfvars
```
