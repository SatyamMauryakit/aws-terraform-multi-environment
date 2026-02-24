variable "env" {
    description = "The environment for my infrastructure"
    type        = string
  
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type        = string
}

variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number

}

variable "instance_type" {
    description = "The EC2 instance type"
    type        = string
}

variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type        = string
}

variable "hash_key" {
    description = "The hash key for the DynamoDB table"
    type        = string
}