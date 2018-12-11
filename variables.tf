variable "s3_bucket_name" {
  description = "Name of the bucket"
}

variable "s3_bucket_acl" {
  description = "Private or Public"
}

variable "environment" {
  description = "Environment of the Stack"
}

variable "project" {
  description = "Specify to which project this resource belongs"
  default     = ""
}

variable "region" {
  description = "Default Region for Cloud Analytics Platform"
}

variable "versioning_enabled" {
  default = false
}
