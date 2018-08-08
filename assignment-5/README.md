### assignment-5

1. Create **dev** infra through terraform:

```
# cd assignment-5/dev

# terraform init

# change windows path / to \ accordingly

# terraform plan -var-file=../common/common.tfvars

# terraform apply -var-file=../common/common.tfvars

# terraform destroy -var-file=../common/common.tfvars
```


2. Create **stage** infra through terraform:

```
# cd assignment-5/stage

# terraform init

# terraform plan -var-file=../common/common.tfvars

# terraform apply -var-file=../common/common.tfvars

# terraform destroy -var-file=../common/common.tfvars
```
