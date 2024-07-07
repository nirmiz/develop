### GH ###
resource "aws_iam_user" "github_actions_user" {
  name = "github-actions-user"
}

resource "aws_iam_access_key" "github_actions_access_key" {
  user = aws_iam_user.github_actions_user.name
}

resource "aws_iam_user_policy_attachment" "ec2_policy" {
  user       = aws_iam_user.github_actions_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_user_policy_attachment" "s3_policy" {
  user       = aws_iam_user.github_actions_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
