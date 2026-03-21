terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.23.0"
    }
  }
}
provider "google" {
  # Configuration options 
  credentials = "./keys/my_creds.json"
  project = "project-365c0647-83e4-43bb-b94"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "project-365c0647-83e4-43bb-b94-terra-bucket"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}