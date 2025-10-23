provider "aws" { 
region = "us-east-1" 
}

terraform { 
    backend "s3" { 
        bucket = "sctp-ce11-tfstate" 
        key    = "marlon.tfstate" 
        region = "us-east-1" 
    } 
}

resource "aws_s3_bucket" "app_bucket" {
    bucket = "marlon-github-actions-app_bucket-${random_string.bucket_suffix.result}"

    tags = {
        Name = "Github Actions App Bucket"
        Environment = "development"
        Project = "github-actions-activity-3-1"
    }
}