```
# kubectl create ns terraform-dev 
# kubectl config get-contexts
# kubectl config set-context terraform-dev --cluster=kubernetes --user=kubernetes-admin --namespace=terraform-dev		
# kubectl config get-contexts
# cd /root/.kube/
# cp -rf config  terraform-dev-config
# mv config /root/.kube/default-config
# kubectl config use-context terraform-dev  --kubeconfig=/root/.kube/terraform-dev-config
# kubectl config get-contexts  --kubeconfig=/root/.kube/terraform-dev-config

```
