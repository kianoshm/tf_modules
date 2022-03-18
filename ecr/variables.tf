variable "aws_ecr_repository" {}
variable "policies_file_path" {}
variable "ecr_scan_on_push" {
  type = bool
  default = true
}
#variable "ecr_name" {}
variable "ecr_policy" {}
# Tags
variable "tag_function" {
  description = "Tags"
  type = object({
    Environment = string
    Name        = string
    Application = string
    Section     = string
    Service     = string
  })
}
