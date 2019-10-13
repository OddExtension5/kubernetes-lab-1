# Kubernetes in Practice

## Kubernetes (K8s)
   
  Kubernetes is an open-source system for automating deployment, scaling, and management of containerized applications.

## Prerequisites:
   
   + [Docker](https://github.com/docker/toolbox/releases) 
   + [Oracle VM Virtual Box](https://www.virtualbox.org/)
   + [Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
   + [Minikube (sort of Kubernetes)](https://kubernetes.io/docs/tasks/tools/install-minikube/)
   + [node.js](https://nodejs.org/en/)
   
 ## What is Minikube?
   
  Minikube is a tool that makes it easy to run Kubernetes locally. Minikube runs a single-node Kubernetes cluster inside a VM on your laptop for users looking to try out Kubernetes or develop with it day-to-day.
  
   ### Installation
    
   #### macOS
     
   > To check if virtualization is supported on macOS, run the following command on your terminal.
   
   > **sysctl -a | grep -E --color 'machdep.cpu.features|VMX** 

If you see **VMX** in the output (should be colored), the VT-x feature is enabled in your machine.

   #### Installing Minikube
   
   ##### Install kubectl

   Make sure you have kubectl installed. You can install kubectl according to the instructions in Install and Set Up kubectl.

   ##### Install a Hypervisor

   If you do not already have a hypervisor installed, install one of these now:

   • [HyperKit](https://github.com/moby/hyperkit)

   • [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

   • [VMware Fusion](https://www.vmware.com/products/fusion.html)

   #### Install Minikube

   The easiest way to install Minikube on macOS is using Homebrew:

   > **brew cask install minikube**

   You can also install it on macOS by downloading a stand-alone binary:

   > **curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
  && chmod +x minikube**
  
   Here’s an easy way to add the Minikube executable to your path:

   > **sudo mv minikube /usr/local/bin**
