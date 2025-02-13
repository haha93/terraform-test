resource "google_sql_database_instance" "instance" {
  name             = var.instance_name
  database_version = "MYSQL_8_0"  # or your preferred version
  region           = var.region
  
  settings {
    tier = "db-f1-micro"  # or your preferred tier
    
    backup_configuration {
      enabled = true
      binary_log_enabled = true
    }
    
    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "allow-all"
        value = "0.0.0.0/0"  # Be more restrictive in production
      }
    }
  }

  deletion_protection = false  # Set to true for production
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "users" {
  name     = var.database_user
  instance = google_sql_database_instance.instance.name
  password = var.database_password
}


