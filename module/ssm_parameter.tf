resource "aws_ssm_parameter" "secret_sub" {
  name             = "SECRET_VALUE_SUB"
  type             = "SecureString"
  value_wo         = var.secret
  value_wo_version = var.value_wo_version
}