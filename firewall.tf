resource "google_compute_firewall" "ssh-firewall" {
  name    = "ssh-firewall"
  source_ranges =  [ "0.0.0.0/0" ]
  network = module.network.network_name
  #  depends_on = [
  #   module.network
  # ]
  
  # #ping
  # allow {
  #   protocol = "icmp"
  # }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  #source_tags = ["bastion-vm"]
}

