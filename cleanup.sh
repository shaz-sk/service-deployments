#!/bin/bash

SERVICE_NAME="stock-ticker"

echo "removing deployments..."
kubectl delete deployment/$SERVICE_NAME-deployment
kubectl delete service/$SERVICE_NAME-service
kubectl delete ingress/$SERVICE_NAME-ingress
