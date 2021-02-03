variable bucket_name {
  description = "Name of the bucket that is going to be created"
}

variable "s3_logging_bucket" {
  description = "The name of the acme corp logging bucket"
  default = "acme-s3-logging-bucket"
}

variable "cost_centre" {
  description = "The cost centre code for the bucket"
}