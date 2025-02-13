variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "Region for Cloud SQL instance"
  default     = "us-central1"
}

variable "instance_name" {
  description = "Name for the Cloud SQL instance"
}

variable "database_name" {
  description = "Name for the database"
}

variable "database_user" {
  description = "Database user name"
}

variable "database_password" {
  description = "Database user password"
}