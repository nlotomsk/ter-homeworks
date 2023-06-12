resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_name
}


# resource "local_file" "hosts_cfg" {
#   content = templatefile("${path.module}/hosts.tftpl",

#     { 
#        for_each-vm = yandex_compute_instance.platform-2,
#        count-vm = yandex_compute_instance.web,
#        count-disk-vm = yandex_compute_instance.wm-disk
#     } 
#   )

#   filename = "${abspath(path.module)}/inventory"
# }

resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/hosts2.tftpl",

    { 
       for_each-vm = yandex_compute_instance.platform-2,
       count-vm = yandex_compute_instance.web,
       #count-disk-vm = yandex_compute_instance.wm-disk
    } 
  )

  filename = "/home/senibratov/github/mnt-homeworks/08-ansible-02-playbook/playbook/inventory/inventory.yml"
} 
