variable "docker_image_url" {
  description = "ECR image URL for the Flask app"
  type        = string
}

resource "aws_ssm_parameter" "datadog_api_key" {
  name  = "/datadog/api_key"
  type  = "SecureString" 

  tags = {
    Environment = "prod"
  }
}

