terraform {
  backend "gcs" {
    bucket = "tf-state-ci-group-factory-04b6"
    prefix = "ci_groups/obe/bu2"
  }

  required_providers {
    google = {
      version = "~> 3.76"
    }
  }
}

provider "google" {
  impersonate_service_account = var.terraform_service_account
}