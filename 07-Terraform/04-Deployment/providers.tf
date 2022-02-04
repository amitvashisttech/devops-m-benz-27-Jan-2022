provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "kubernetes-admin@kubernetes"
}





provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "terraform-dev"
  alias = "terraform-dev"
}
