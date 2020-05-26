rem helm upgrade --debug --recreate-pods --install k8sdemowithhelm helm/demoapp -f helm/myvalues.yaml

helm upgrade --debug --recreate-pods --install k8sdemowithhelm demoapp -f myvalues-predemo.yaml
