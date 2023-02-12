# Kubernetes

Let’s test our local Kubernetes installation.

    kubectl cluster-info

## Current context

Get the current context:

    kubectl config current-context

## List all contexts

List all the contexts:

    kubectl config get-contexts

## Change context

Use a context:

    kubectl config use-context [contextName]

## Using kubectx

What's great about Kubernetes is the incredible amount of tools created by the community and available for free.  Kubectx is a simple tool that provides an easy way to list and change context.

You can install it on:

Windows (if you have Chocolatey installed):

    choco install kubectx-ps
    
    if you dont, 
    Run Get-ExecutionPolicy. If it returns Restricted, then run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process.

    Now run the following command:
    `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

macOS (if you have Brew installed):

    brew install kubectx

Ubuntu:

    sudo apt install kubectx

To list the contexts, simply type:

    kubectx

To change context:

    kubectx <contextName>

## Rename context

Rename context:

    kubectl config rename-context [old-name] [new-name]

## Delete context

Delete context:

    kubectl config delete-context [contextName]
