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
      target_port = 80
      node_port   = 31001
    }

    type = "NodePort"
  }
}
