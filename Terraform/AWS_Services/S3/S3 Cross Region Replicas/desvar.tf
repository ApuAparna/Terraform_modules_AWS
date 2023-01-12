# Bucket Accelearation Configuration:

variable "status_1" {
    description = "Accelearation Configuration Status"
    default= "Suspended"
}

# Giving Bucket Public Policy :

variable "block_public_acls_1" {
    description = " Block Public acl"
    default = "false"
}

# Giving Ignore Public ACLs :

variable "block_public_policy_1" {
    description = "block public polciy"
    default = "false"
}

# Giving Bucket Public Policy :
variable "ignore_public_acls_1" {
    description = " ignore Public acls"
    default = "false"
}

# Giving Restrict Public buckets :

variable "restrict_public_bucket_1" {
    description = "restrict public acls"
    default = "false"
}
# Bucket OwnerShip:

variable "bucket_ownership_1" {
    description = "Bucket OwnerShip"
    default = "BucketOwnerPreferred"
}

# Bucket ACL:

variable "bucket_acl_1" {
    description = "bucket_acl"
    default = "public-read"
}

# Bucket Versioning:
variable "bucket_versioning_status_1" {
    description = "bucket versioning status"
    default = "Enabled"
}
