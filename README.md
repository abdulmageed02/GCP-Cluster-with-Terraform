
# Infrastructure.

* infrastructure built with terraform tool.
### it consists of :
* 1 VPC:
    * 2 Subnets "management", "restricted"
    * NAT in "management" subnet
    * Private VM in "management" subnet to manage the cluster.
    * Private Kubernetes cluster in "restricted" subnet with 3 worker nodes.
    * 2 Service Accounts
        * one for the private VM to manage the cluster
        * one used by the nodes in the cluster

#
### image is built from  [python app](https://github.com/atefhares) then pushed to GCR so the private cluster can access it 
#

# Deployment :
* the deployment is orchestrated by [K8S](https://kubernetes.io)
* cluster is built on [GCP](https://console.cloud.google.com/welcome)
* the cluster is managed by the private VM in "management" subnet

### deployment consists of :
   *  redis pod 
   *  service that exposes redis po on port 6379
   *  Deployment of [python app](https://github.com/atefhares/DevOps-Challenge-Demo-Code) 
   *  LoadBalancer that expose the whole deployment  


## Check the live deployment from [here](http://34.143.158.92/)