# Bucket Object Upload One:
variable "Bucket_Key" {
    description = " Bucket Object Key"
    default = "index.html"
}
# Make Public ACL Action:
variable "bucket_acl_action"{
    description = "Giving Make Public ACL in Action"
    default = "public-read"
}

# File Source Path:
variable "path_one"{
    description = "path for object one"
    default = "/home/ubuntu/index.html"
}

# Content Type:
variable "Object_Content_Type"{
    description = "Content Type HTML File"
    default = "text/html"
}

# Bucket Object Upload two:
variable "Bucket_Key_two" {
    description = " Bucket Object Key Two"
    default = "error.html"
}

# File Source Path:
variable "path_one_objTwo"{
    description = "path for object two"
    default = "/home/ubuntu/error.html"
}
