https://docs.microsoft.com/en-us/azure/aks/ingress-basic

# Create a namespace for your ingress resources
kubectl create namespace ingress-basic

# Add the official stable repository
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

# Use Helm to deploy an NGINX ingress controller
helm install nginx-ingress stable/nginx-ingress     --namespace ingress-basic     --set controller.replicaCount=1     --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux     --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

# assigned dns deltatre-k8s-basic-aks-public.westeurope.cloudapp.azure.com to public load balancer ip 51.136.77.122