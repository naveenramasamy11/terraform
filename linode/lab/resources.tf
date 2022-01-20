resource "linode_firewall" "ansicorp_firewall" {
  label = "ansicorp-firewall"
  tags  = ["lab"]

  inbound {
    label    = "allow-ssh"
    action   = var.action
    protocol = "TCP"
    ports    = "22"
    ipv4     = ["0.0.0.0/0"]
  }
  inbound_policy = "ACCEPT"
  outbound_policy = "DROP"
}