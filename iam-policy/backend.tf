terraform {
  backend "s3" {
    bucket = "" # Bucket name
    key    = "terraform.tfstate"     # Change this if needed
    region = ""             # Change this to your region
  }
}
