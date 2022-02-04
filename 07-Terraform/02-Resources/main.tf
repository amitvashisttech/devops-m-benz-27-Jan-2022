provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "kubernetes-admin@kubernetes"
}

resource "kubernetes_pod" "test" {
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

