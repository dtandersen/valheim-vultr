terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.1.3"
    }
  }
}

# Configure the Vultr Provider
provider "vultr" {
  api_key = var.vultr_api_key
  rate_limit = 700
  retry_limit = 3
}



resource "vultr_instance" "my_instance" {
    plan = "vc2-2c-4gb"
    region = "lax"
    os_id = "362"
#    user_data = base64encode(data.template_file.cloud_init.rendered)
    ssh_key_ids = var.ssh_key_ids
    hostname = "valheim"
    script_id = vultr_startup_script.valheim.id
}

#data "template_file" "cloud_init" {
#  template = file("${path.module}/cloud-init.tpl")
#  vars = {
#    name = var.name
#    world = var.world
#    password = var.password
#  }
#}

resource "vultr_startup_script" "valheim" {
    name = "man_run_docs"
    script = base64encode(data.template_file.cloud_init.rendered)
}

data "template_file" "script" {
  template = file("${path.module}/script.tpl")
  vars = {
    name = var.name
    world = var.world
    password = var.password
  }
}
