terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.18.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "<secret>"
}

# Create a web server
resource "digitalocean_droplet" "d1" {
  image  = "ubuntu-20-04-x64"
  name   = "swe-devops-d1"
  region = "fra1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [<secret>]
}

# Create a web server
resource "digitalocean_droplet" "d2" {
  image  = "ubuntu-20-04-x64"
  name   = "swe-devops-d2"
  region = "fra1"
  size   = "s-2vcpu-2gb"
  ssh_keys = [<secret>]
}
