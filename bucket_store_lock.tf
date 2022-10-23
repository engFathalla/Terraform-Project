terraform {
  backend "s3" {
    bucket         = "my-new-bucket-2050"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    profile        = "fathalla"
    dynamodb_table = "lock_table"
  }
}