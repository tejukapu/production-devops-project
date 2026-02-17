terraform {
  backend "s3" {
    bucket         = "ravi-teja-terraform-state-bucket"
    key            = "eks-project/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
