
# Imperative vs Declarative

Let's deploy an Nginx container using both methods.

## Imperative

    kubectl create deployment mynginx1 --image=nginx

    `kubectl get deploy` to list deployed images

## Declarative

    kubectl create -f deploy-example.yaml

    `kubectl get deploy` to list deployed images

## Cleanup

    kubectl delete deployment mynginx1
    kubectl delete deploy mynginx2