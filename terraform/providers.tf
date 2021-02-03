provider "aws" {
  region = "eu-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id[terraform.workspace]}:role/${var.assume_role}"
    session_name = "example"
  }
}