resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

/*resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}*/


data "yandex_compute_image" "ubuntu" {
  family = var.vm_name
}

/*resource "yandex_compute_instance" "platform-1" {
  name        = "netology-${local.env}-${local.project}-${local.role.0}"
  platform_id = var.vm_web_instance_platform_id
  resources {
    cores         = var.vm_web_resources.cores
    memory        = var.vm_web_resources.memory
    core_fraction = var.vm_web_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_instance_scheduling_policy
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_web_instance_network_interface_nat
  }

  metadata = {
    serial-port-enable = var.vm_metadata["serial-port-enable"]
    ssh-keys           = var.vm_metadata["ssh-keys"]
  }

}*/

resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/hosts.tftpl",

    { 
       for_each-vm = yandex_compute_instance.platform-2,
       count-vm = yandex_compute_instance.web,
       count-disk-vm = yandex_compute_instance.wm-disk
    } 
  )

  filename = "${abspath(path.module)}/inventory"
} 
