provider "google" {
  credentials = "${file("/home/ded/ans/ansible/dedtest-97af01ce632d.json")}"
  project     = "dedtest-1352"
  region      = "europe-west1"
}

resource "google_compute_instance" "default" {
  name         =  "instance-1"
  machine_type = "n1-standard-1"
  zone         = "europe-west1-b"

  disk {
    image = "ubuntu-1404-trusty-v20160627"
  }


  network_interface {
    network = "default"
    access_config {
       nat_ip = ""
    }
  }

  metadata_startup_script = "echo hi > /test.txt"

}

