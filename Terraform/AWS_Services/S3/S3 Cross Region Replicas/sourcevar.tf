# Bucket Accelearation Configuration:

variable "status" {
    description = "Accelearation Configuration Status"
    default= "Suspended"
}

# Giving Bucket Public Policy :

variable "block_public_acls" {
    description = " Block Public acl"
    default = "false"
}

# Giving Ignore Public ACLs :

variable "block_public_policy" {
    description = "block public polciy"
    default = "false"
}

# Giving Bucket Public Policy :
variable "ignore_public_acls" {
    description = " ignore Public acls"
    default = "false"
}

# Giving Restrict Public buckets :

variable "restrict_public_bucket" {
    description = "restrict public acls"
    default = "false"
}
# Bucket OwnerShip:

variable "bucket_ownership" {
    description = "Bucket OwnerShip"
    default = "BucketOwnerPreferred"
}

# Bucket ACL:

variable "bucket_acl" {
    description = "bucket_acl"
    default = "public-read"
}

# Bucket Versioning:
variable "bucket_versioning_status" {
    description = "bucket versioning status"
    default = "Enabled"
}

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
