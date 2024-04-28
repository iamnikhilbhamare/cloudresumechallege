terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }
}

provider "aws" {
  profile = "nikhilnonprod"
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

#Create an API resource with integration with Lambda
resource "aws_apigatewayv2_api" "new_visitorcounter" {
  name          = "new_visitorcounter-http-api"
  protocol_type = "HTTP"
}