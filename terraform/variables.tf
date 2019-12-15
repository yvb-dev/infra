variable project {
  description = "Project ID"
}

variable region {
  description = "Region"

  # Значение по умолчанию
  default = "europe-west1"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for provisioner (connection)"
}

variable disk_image {
  description = "Disk image"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

