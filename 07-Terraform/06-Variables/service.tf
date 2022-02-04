resource "kubernetes_service" "example" {
  metadata {
    name = "terraform-example"
  }
  spec {
    selector = {
      app = kubernetes_deployment.example.metadata.0.labels.test
    }
    session_affinity = "ClientIP"
    port {
      port        = 80
      target_port = var.my_target_port
      node_port   = var.my_service_port
    }

    type = "NodePort"
  }
}
