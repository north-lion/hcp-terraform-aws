resource "aws_ssm_parameter" "secret" {
  name  = "SECRET_VALUE"
  type  = "SecureString"
  value = var.secret
}