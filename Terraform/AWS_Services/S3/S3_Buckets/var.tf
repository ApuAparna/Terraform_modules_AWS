# AWS ACCESS KEY:

variable "access_key"{
   description= " AWS ACCESS KEY"
   default = "AKIA3GDLWSNWGZUXCF45"
}

# AWS SECRET KEY:

variable "secret_key"{
   description= " AWS SECRET_KEY"
   default = "yQqRwI4HIBQlUbqdGtzoawXrK7E+ErdOkLGURVwA"
}

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
    default = "Disabled"
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
