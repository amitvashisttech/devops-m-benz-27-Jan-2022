provider "kubernetes" {
  config_path    = "/root/.kube/default-config"
  config_context = "kubernetes-admin@kubernetes"
  alias = "default"
}


provider "kubernetes" {
  config_path    = "/root/.kube/terraform-dev-config"
  config_context = "amit@kubernetes"
  alias = "terraform-dev"
}
