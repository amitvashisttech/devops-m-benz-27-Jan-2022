resource "kubernetes_pod" "test" {
  provider = kubernetes.default
  metadata {
    name = "terraform-example"
  }

  spec {
    container {
      image = "nginx"
      name  = "example"

      env {
        name  = "environment"
        value = "test"
      }

      port {
        container_port = 80
      }
    }
 }
}



resource "kubernetes_pod" "python-app" {
  provider = kubernetes.terraform-dev
  metadata {
    name = "python-app-terraform-example"
  }

  spec {
    container {
      image = "amitvashist7/mypython-web-app:v1"
      name  = "k8s-demo"

      port {
        container_port = 8081
      }
    }
 }
}

