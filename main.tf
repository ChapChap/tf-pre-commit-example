# main.tf
terraform {
  required_version = ">= 1.0.0, < 1.0.4"
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

output "test" {
  value     = random_password.password.result
  sensitive = true
}
