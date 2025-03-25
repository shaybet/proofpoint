# ProofPoint Assignment - Terraform Project

### Overview
This project is a Terraform project that deploys a Kubernetes cluster using Kind, deploys nginx-ingress to route traffic to web apps without the need for specifying ports, and dynamically deploys web applications.

### Requirements 
- Terraform version `1.11.2` Installed.
- Git installed.
- Docker Desktop (required for Kind).

### Project Structure
This project consists of three Terraform modules:
1. Deploying a Kind Cluster
2. Deploying nginx-ingress
3. Deploying a web app


### How to Run the Code
1. To get the project files from GitHub, use the following command
```cmd
git clone https://github.com/shaybet/proofpoint.git
```
2. Navigate to the project directory
```cmd
cd proofpoint/proof
```
3. Initialize Terraform
```cmd
terraform init
```
4. Create a Terraform plan
```cmd
terraform plan
```
5. Apply the Terraform plan
```cmd
terraform apply
```
6. To connect to the Kind cluster, use the following command
```cmd
export KUBECONFIG="kind-config-cluster"
```

### Accessing the Web App
When the Terraform apply command is successful, you will see the output with the URL to access the web app.

You can access the web app by navigating to the URL in your browser.

### TODO
When using a single kind node, kind uses it for control-plane/worker and then the nginx infress works. When adding additional worker nodes the ingress stops working and web app becomes inaccessible.
I would like to investigate this further and find a solution to make it work with multiple worker nodes.