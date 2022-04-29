
resource "linode_firewall" "db_firewall" {
  label = "${var.SITE}-db-firewall-${var.ENV}"
  tags  = ["${var.ENV}", "db_firewall"]

  inbound {
    label    = "allow-http"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "80"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }

  inbound {
    label    = "allow-https"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "443"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }

  inbound {
    label    = "allow-ssh"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "22"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }

  inbound {
    label    = "allow-postgres"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "5432"
    ipv4     = formatlist("%s/32", var.web_servers_private_ips.*)
    ipv6     = ["::/0"]


  }

  inbound_policy  = "DROP"
  outbound_policy = "ACCEPT"

  linodes = var.db_linode_ids
}
