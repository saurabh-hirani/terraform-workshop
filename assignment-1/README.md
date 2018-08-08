### assignment-1

1. Create s3 bucket from the cmdline

```
# export AWS_DEFAULT_REGION=us-east-1

# export AWS_PROFILE=$your_aws_profile

# aws s3 mb s3://shirani-test-bucket

# aws s3 rb s3://shirani-test-bucket --force
```

2. Set environment variables

```
# cd assignment-1

# echo $AWS_DEFAULT_REGION
# echo $AWS_PROFILE
# echo $AWS_ACCESS_KEY_ID
# echo $AWS_SECRET_ACCESS_KEY

# export TF_VAR_userid='your_user_id'
```

3. Create infra through terraform:

```
# cat main.tf

# terraform init

# terraform plan

# terraform apply

# cat terraform.tfstate

# make changes - toggle versioning

# terraform plan

# TF_LOG=DEBUG terraform apply
```

4. Verify dependency graph

```
# terraform graph | dot -Tpng > graph.png
```

5. Destroy the infra

```
# TF_LOG=DEBUG terraform destroy
```
