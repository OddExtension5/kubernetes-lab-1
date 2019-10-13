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

<hr>

# Installation
    
  ## macOS
    
   ### Before you Begin
   
   > To check if virtualization is supported on macOS, run the following command on your terminal.
   
   > **sysctl -a | grep -E --color 'machdep.cpu.features|VMX'** 

If you see **VMX** in the output (should be colored), the VT-x feature is enabled in your machine.

   ### Installing Minikube
   
   #### Install kubectl

   Make sure you have kubectl installed. You can install kubectl according to the instructions in Install and Set Up kubectl.

   #### Install a Hypervisor

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
   
<hr>
   
# Linux
  
 ## Before You Begin
  
  To check if virtualization is supported on Linux, run the following command and verify that the output is non-empty:

  > **grep -E --color 'vmx|svm' /proc/cpuinfo**
  
 ## Installing Minikube
  
 ### Install kubectl

Make sure you have kubectl installed. You can install kubectl according to the instructions in Install and Set Up kubectl.

### Install a Hypervisor

  If you do not already have a hypervisor installed, install one of these now:

   • [KVM](https://www.linux-kvm.org/page/Main_Page), which also uses QEMU

   • [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

> **Note**: Minikube also supports a --vm-driver=none option that runs the Kubernetes components on the host and not in a VM. Using this  driver requires Docker and a Linux environment but not a hypervisor. It is recommended to use the apt installation of docker from    (Docker, when using the none driver. The snap installation of docker does not work with minikube.

### Install Minikube using a package

There are experimental packages for Minikube available; you can find Linux (AMD64) packages from Minikube’s releases page on GitHub.

Use your Linux’s distribution’s package tool to install a suitable package.

### Install Minikube via direct download

If you’re not installing via a package, you can download a stand-alone binary and use that.

> **curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube**
  
Here’s an easy way to add the Minikube executable to your path:

> **sudo mkdir -p /usr/local/bin/**

> **sudo install minikube /usr/local/bin/**

<hr>

# Windows

## Before you Begin

To check if virtualization is supported on Windows 8 and above, run the following command on your Windows terminal or command prompt.

> **systeminfo**

If you see the following output, virtualization is supported on Windows.

> Hyper-V Requirements:     VM Monitor Mode Extensions: Yes
                          Virtualization Enabled In Firmware: Yes
                          Second Level Address Translation: Yes
                          Data Execution Prevention Available: Yes
                          
If you see the following output, your system already has a Hypervisor installed and you can skip the next step.

> Hyper-V Requirements:     A hypervisor has been detected. Features required for Hyper-V will not be displayed.

## Installing Minikube

### Install kubectl

Make sure you have kubectl installed. You can install kubectl according to the instructions in Install and Set Up kubectl.

### Install a Hypervisor

If you do not already have a hypervisor installed, install one of these now:

• [Hyper-V](https://docs.microsoft.com/en-in/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v?redirectedfrom=MSDN)

• [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

> **Note**: Hyper-V can run on three versions of Windows 10: Windows 10 Enterprise, Windows 10 Professional, and Windows 10 Education.

### Install Minikube using Chocolatey

The easiest way to install Minikube on Windows is using [Chocolatey](https://chocolatey.org/) (run as an administrator):

> **choco install minikube**

After Minikube has finished installing, close the current CLI session and restart. Minikube should have been added to your path automatically.

### Install Minikube using an installer executable

To install Minikube manually on Windows using [Windows Installer](https://docs.microsoft.com/en-us/windows/win32/msi/windows-installer-portal), download [minikube-installer.exe](https://github.com/kubernetes/minikube/releases/latest/download/minikube-installer.exe) and execute the installer.

### Install Minikube via direct download

To install Minikube manually on Windows, download [minikube-windows-amd64](https://github.com/kubernetes/minikube/releases/tag/v1.4.0), rename it to **minikube.exe**, and add it to your path.
