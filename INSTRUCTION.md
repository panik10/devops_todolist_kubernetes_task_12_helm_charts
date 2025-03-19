first of all run:
```
kind create cluster --config cluster.yml
```

taint nodes:
```
kubectl taint nodes -l app=mysql app=mysql:NoSchedule
```

install ingress:
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```

go to .infrastructure folder:
```
cd .infrastructure
```

verify the templates by:
```
helm install todoapp helm-chart/todoapp --dry-run
```

install the helm cluster:
```
heln install todoapp helm-chart/todoapp
```

get the info about the status:
```
kubectl get all,cm,secret,ing -A
```


after starting the application you will be able to access the app on http://localhost/

if the page loads and active - all workds fine
