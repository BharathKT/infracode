# --- root/backend.tf ---
#
terraform {
  backend "s3" {
    bucket = "cicd-repo2024"
    key    = "infrastate.tfstate"
    region = "ap-southeast-1"
  }
}
