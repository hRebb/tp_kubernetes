kubectl apply -f pod.yaml
kubectl get po
kubectl port-forward simple-webapp-red 8080:8080 --address 0.0.0.0

kubectl apply -f nginx-deployment.yml
kubectl get pods
kubectl get deployment
kubectl get replicaset

kubectl describe pods | grep "Image:"

kubectl get replicaset
kubectl describe replicaset <replicaset_name> | grep "Image:"

kubectl delete pod simple-webapp-red
kubectl delete deployment nginx-deployment

kubectl run simple-webapp-red --image=mmumshad/simple-webapp-color --env="COLOR=red" --port=8080