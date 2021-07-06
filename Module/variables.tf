variable "ami_id" {
    type = string
    description = "AMI ID for Instance"
    default = "ami-005e284ecef49125a"
}

variable "user_data_filename" {
    type = string
    description = "Users Data File Path/Name"
    default = "files/script-user.sh"
}

variable "role_policy_filename" {
    type = string
    description = "Role Policy File Path/Name"
    default = "files/iam-role-policy.json"
}