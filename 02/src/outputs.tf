output "external_ip_platform-1" {
  value = yandex_compute_instance.platform-1.network_interface.0.nat_ip_address
}
output "external_ip_platform-2" {
  value = yandex_compute_instance.platform-2.network_interface.0.nat_ip_address
}