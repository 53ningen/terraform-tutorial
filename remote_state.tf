
resource "aws_s3_bucket" "terraform_tutorial_tfsate" {
    bucket = "com.github.53ningen.terraform.tutorial.tfstate" # S3 bucket 名は global で一意になるように
    acl = "private"
    versioning {
        enabled = true
    }
}

