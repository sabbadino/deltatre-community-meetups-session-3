# in stall az cli https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest
az login 
az account set --subscription "Enterprise - Event Management System"
az aks create --resource-group k8s-basic-demo-aks --name deltatre-k8s-basic-aks  --node-count 2 --output table --generate-ssh-keys
az aks get-credentials --resource-group k8s-basic-demo-aks --name deltatre-k8s-basic-aks
# give dashboard service account fullrights 
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --resource-group k8s-basic-demo-aks --name deltatre-k8s-basic-aks
# opens http://127.0.0.1:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default