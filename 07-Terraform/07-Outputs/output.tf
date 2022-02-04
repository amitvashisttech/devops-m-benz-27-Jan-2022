output "Service_IP" {
  value = kubernetes_service.example.spec.0.cluster_ip
}



output "Node_Port" {
  value = kubernetes_service.example.spec.0.port.0.node_port
}
