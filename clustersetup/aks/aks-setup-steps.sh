# install az cli https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest
# this script assumes that the a resource group k8s-basic-demo-aks has already been created 
az login 
# 
# replace "Enterprise - Event Management System" with your subscription name 
az account set --subscription "Enterprise - Event Management System"
az aks create --resource-group k8s-basic-demo-aks --name deltatre-k8s-basic-aks  --node-count 2 --output table --generate-ssh-keys
az aks get-credentials --name deltatre-k8s-basic-aks --resource-group k8s-basic-demo-aks 
# give dashboard service account fullrights 
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --resource-group k8s-basic-demo-aks --name deltatre-k8s-basic-aks
# opens http://127.0.0.1:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default