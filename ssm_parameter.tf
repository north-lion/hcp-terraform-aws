resource "aws_ssm_parameter" "secret" {
  name             = "SECRET_VALUE"
  type             = "SecureString"
  value_wo         = var.secret
  value_wo_version = var.value_wo_version
}