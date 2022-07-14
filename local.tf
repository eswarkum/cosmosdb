locals {
  name = lower("${var.proj_code}-${var.env}-${random_string.random.result}")
}