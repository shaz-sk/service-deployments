#!/bin/bash

echo "starting minikube..."
minikube start && minikube addons enable ingress
kubectl config use-context minikube