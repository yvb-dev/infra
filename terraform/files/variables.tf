variable project {
  description = "project id"
}

variable region {
  description = "Region"
}

variable zone {
  description = "Region"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable disk_image_app {
  description = "Disk image for app"
}

variable disk_image_db {
  description = "Disk image for db"
}

variable "users" {
  type        = "list"
  description = "Users ssh"
}
