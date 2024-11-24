#!/bin/bash

echo "starting minikube..."
minikube start && minikube addons enable ingress && minikube addons enable ingress-dns

kubectl config use-context minikube