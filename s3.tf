
resource "aws_s3_bucket" "terraform_tutorial" {
    bucket = "com.github.53ningen.terraform.tutorial" # S3 bucket 名は global で一意になるように
    acl = "private"
    versioning {
        enabled = false 
    }
}

