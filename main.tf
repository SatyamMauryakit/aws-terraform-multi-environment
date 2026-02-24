module "dev-infra" {
    source = "./infra-app"
    env = "dev"
    bucket_name = "infra-app-bucket148"
    instance_count = 1
    instance_type = "t3.micro"
    ami_id = "ami-019715e0d74f695be"
    hash_key = "student_ID"

  
}

module "prd-infra" {
    source = "./infra-app"
    env = "prd"
    bucket_name = "infra-app-bucket093"
    instance_count = 2
    instance_type = "t3.micro"
    ami_id = "ami-019715e0d74f695be"
    hash_key = "student_ID"

  
}

module "stg-infra" {
    source = "./infra-app"
    env = "stg"
    bucket_name = "infra-app-bucket127"
    instance_count = 1
    instance_type = "t3.small"
    ami_id = "ami-019715e0d74f695be"
    hash_key = "student_ID"

  
}