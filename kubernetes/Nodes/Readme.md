# Nodes

Nodes are physical or virtual machines
A group of nodes form a cluster
The master node is also called the Control Plane. The kubernetes services and controller are located on the control plane. They are also called the master components and you usually don't run your application containers on the master node.

The nodes running the containers are called the worker nodes.

## Get nodes information

Get a list of all the installed nodes. Using Docker Desktop, there should be only one.

    kubectl get nodes

Get some info about the node.

    kubectl describe node [node-name]