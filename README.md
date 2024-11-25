## Getting Started

### To run and test the API locally

- Prerequisite - minikube and kubectl should be installed
- Start up minikube using the below script
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