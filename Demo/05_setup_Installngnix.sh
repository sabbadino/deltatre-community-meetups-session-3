 # https://hub.helm.sh/
 # helm repo add nginx-stable https://helm.nginx.com/stable
 # helm repo update
 #--set controller.service.httpPort.nodePort=90
#helm upgrade --debug --install nginxingresscontroller nginx-stable/nginx-ingress --set controller.service.type=NodePort 

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml