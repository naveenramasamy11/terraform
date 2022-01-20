data "google_compute_instance" "appserver" {
  name = "primary-application-server"
  zone = "us-central1-a"
}