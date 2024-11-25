## Getting Started

### To run and test the API locally

- Prerequisite - minikube and kubectl should be installed
- To start up minikube, run
  ```shell
  ./minikube-start.sh
  ```
- After it starts up, run the deployment script
  ```shell 
  ./deploy.sh
  ``` 
- On Mac OS, tunnelling was required. After ingress is up and `kubectl get ingress` returns the IP address run the below
  ```shell 
  minikube tunnel
  ```
- Add to /etc/hosts/  
`127.0.0.1       hello-world.info`
- API call
- http://hello-world.info/api/v1/stock/report  
- To cleanup the deployment, run 
  ```shell
  ./cleanup.sh  
  ```
- To shutdown minikube run
  ```shell
  ./minikube-shutdown.sh
  ```
  
### What is in the code
- Config map for environment variables
- Secret for APIKEY
- Deployment with replicas and readiness probe
- Service and Ingress for host hello-world.info
- Horizontal pod autoscaling
- Deployment and cleanup scripts