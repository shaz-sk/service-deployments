#!/bin/bash

echo "shutting down minikube..."
minikube stop && minikube delete && rm -fr $HOME/.minikube