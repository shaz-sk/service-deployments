#!/bin/bash

SERVICE_NAME="stock-ticker"

echo "removing deployments..."

kubectl delete deployment/$SERVICE_NAME-deployment
kubectl delete service/$SERVICE_NAME-service
kubectl delete ingress/$SERVICE_NAME-ingress
kubectl delete hpa/$SERVICE_NAME-hpa
kubectl delete secret stock-ticker-secret
kubectl delete configMap stock-ticker-config
