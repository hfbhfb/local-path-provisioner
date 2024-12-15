



go build
kubectl apply -f debug/config.yaml
./local-path-provisioner --debug start --service-account-name=default

go clean -modcache
gowatch


kubectl get po 


# key
	EnvProvisionerName            = "PROVISIONER_NAME"
	DefaultProvisionerName        = "rancher.io/local-path"




# debug
kubectl delete -f examples/pvc/pvc.yaml
kubectl delete -f examples/pod/pod.yaml


kubectl apply -f examples/pvc/pvc.yaml
kubectl apply -f examples/pod/pod.yaml


kubectl get po 
kubectl get pvc 
kubectl get pv

kubectl get pvc local-path-pvc -o yaml > test-yamls/pvc.yaml
kubectl get pv pvc-93b78af6-f239-4f4f-a92d-f9eb80d041c7 -o yaml > test-yamls/pv.yaml
 



# 
kubectl apply -f deploy/local-path-storage.yaml


