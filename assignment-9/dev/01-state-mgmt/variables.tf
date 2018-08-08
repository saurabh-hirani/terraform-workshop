variable "tf_bucket_name" {
  description = "S3 bucket where terraform state files will be stored"

  // cannot use snapshot_ebs name as S3 buckets don't allow underscores
  default = "shirani-tf-workshop-assignment-9-dev-state"
}
