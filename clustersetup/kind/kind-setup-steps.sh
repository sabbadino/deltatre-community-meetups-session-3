kind delete cluster --name deltatre-k8s-basic
sleep 10
kind create cluster --config kind-create-cluster-settings.yaml --name deltatre-k8s-basic
#install dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml
#give dashboard service account cluster admin rights
kubectl apply -f assigndashboardusertocluster-admin.yaml

# install ngnix ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
kubectl wait --namespace ingress-nginx   --for=condition=ready pod   --selector=app.kubernetes.io/component=controller   --timeout=90s



# get dashboard secret
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard | awk '{print $1}')
cd ..
#kubectl proxy
#http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/


