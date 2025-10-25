provider "aws" { 
    region = "us-east-1"
}

terraform { 
    backend "s3" { 
        bucket = "sctp-core-tfstate" 
        key    = "marlon.tfstate" 
        region = "us-east-1"
    }
}
    
resource "aws_s3_bucket" "marlon-bucket" {
    bucket = "marlon-github-actions-bucket"
}

#resource "null_resource" "example" {
#    triggers = {
#        value = "A example resource that does nothing!"
#    }
#}
#