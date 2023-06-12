resource "yandex_compute_disk" "disk-hdd" {
    count=0
    name       = "disk-hdd-${count.index+1}"
    type       = "network-hdd"
    size       = var.count_disk_size
}

resource "yandex_compute_instance" "wm-disk" {
  name        = "netology-${local.env}-${local.project}-${local.role.2}"
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
  dynamic "secondary_disk"{
    for_each = toset(yandex_compute_disk.disk-hdd[*].id)
    content {
        disk_id = secondary_disk.key
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
    ssh-keys           = "ubuntu:${local.key_ssh}"
  }
}