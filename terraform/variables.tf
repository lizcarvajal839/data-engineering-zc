variable "credentials" {
  description = "My credentials"
  default     = "../keys/my_creds.json"
}

variable "project" {
  description = "project"
  default     = "project-365c0647-83e4-43bb-b94"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}


variable "location" {
  description = "Project location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery dataset Name"
  default     = "demo_dataset"

}

variable "gcs_bucket_name" {
  description = "My Storage bucket Name"
  default     = "project-365c0647-83e4-43bb-b94-terra-bucket"

}
variable "gcs_storage_class" {
  description = "Bucket storage class"
  default     = "STANDARD"
}