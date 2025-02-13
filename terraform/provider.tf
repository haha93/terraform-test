terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  
  backend "gcs" {
    bucket = "your-terraform-state-bucket"
    prefix = "cloud-sql"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}