variable "environment" {
  type        = string
  description = "Define infrastructure’s environment"

  validation {
    condition     = can(regex("^(dev|qa|prod)$", var.environment))
    error_message = "The environment value must be dev, qa, or prod."
  }
}
