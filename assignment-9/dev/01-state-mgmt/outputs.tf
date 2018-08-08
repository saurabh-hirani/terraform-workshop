output "tf_bucket_id" {
  value       = "${module.remote_state.tf_bucket_id}"
  description = "Terraform bucket ID"
}

output "tf_log_bucket_id" {
  value       = "${module.remote_state.tf_log_bucket_id}"
  description = "Terraform log bucket ID"
}
