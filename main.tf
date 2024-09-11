provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx-img" {
    name = "nginx:latest"
    keep_locally = false
}
resource "docker_container" "nginx-container" {
    image = docker_image.nginx-img.name
    name  = "nginx-container"
    ports {
        internal = 80
        external = 8080
    }
}
