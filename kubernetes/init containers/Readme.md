# Init Container

Let's use an Init container.

Init Containers lets you initialize a pod before an application container runs.
Let's say for an app container to run, it requires a series of configuration files.

In the pod definition, we define a container that will run first, this is the init conatiner.
Upon completion, K8s will start the app container.

In the sample, we're basically initializing our nginx container by using an init container
## Create the deployment

    kubectl apply -f myapp.yaml

Wait for the main pod to come up

    kubectl get pods

## Connect to the Nginx container

    kubectl exec -it init-demo -- /bin/bash

## Hit the default webpage

It should be the one downloaded by the Init container from http://info.cern.ch

    curl localhost
    exit

## Cleanup

    kubectl delete -f myapp.yaml