#!/bin/bash

SERVICE_NAME="stock-ticker"

echo "applying kubectl changes"

kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-config.yaml
kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-secret.yaml
kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-deployment.yaml
kubectl rollout status deployment/$SERVICE_NAME-deployment
kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-service.yaml
kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-ingress.yaml
kubectl apply -f $SERVICE_NAME/$SERVICE_NAME-hpa.yaml
