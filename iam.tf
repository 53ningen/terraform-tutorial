resource "aws_iam_user" "cocoa" {
  name = "cocoa"
  path = "/"
}

# IAM policy attatchments

resource "aws_iam_policy_attachment" "IAMReadOnlyAccess-policy-attachment" {
  name       = "IAMReadOnlyAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  groups     = []
  users      = ["${aws_iam_user.cocoa.name}"]
  roles      = []
}

