# Kubernetes in Practice
 
 LAB Instruction for Up and Running Kubernetes in your local system.
 
 So, let's get started
 
 # Deploying Containerized Application
 
   Well, the first step for deploying containerized application is the application.
   
   I put together some demo JavaScript Code that you'll run is a node.js application.
   
   Open a terminal window ( in Linux or macOS) or command prompt ( in Windows ) navigate to a 
   location on you computer where you want the code to land and clone the repo from github by using the 
   command.
   
      > git clone "https://github.com/OddExtension5/kubernetes-lab-1.git"
     
   Navigate to the Kubernetes directory and take a look at the  [JavaScript code](https://github.com/OddExtension5/kubernetes-lab-1/blob/master/K8sfile.js).
   
   This toy application doesn't do anything serious it just output a message to the console but
   that's enough for our purposes here.
   
   Now run the application in node by giving command as:
   
   > node K8sfile.js
   
   Open a browser and point it to localhost port 8080 ( localhost:8080 ) to see the message.
   
   **Now we have the application it's time to containerized it.**
   
   ------------------------------------------- ***CONTAINERIZED OUR APPLICATION*** --------------------------------------------------------
   
   Here , we'll use **Docker** to containerized our application.
   
   Here's how you use docker to do that take a look at [Dockerfile](https://github.com/OddExtension5/kubernetes-lab-1/blob/master/Dockerfile)
   
   Use this docker definition to containerized the application but before we do that we need to start 
   the minikube and I'll tell you why?
   
   Execute the **minikube start** command in terminal or command prompt.
   
   The first time minikube runs it has to download the ISO image to run inside VirtualBox
   and may take a minute or two depending on the speed of your internet connection.
   
   Once the images has been downloaded minikube will start.
   
   Minikube runs inside VirtualBox in its own VM ( have a look in VirtualBox in your local system )
   
   We need to make sure that docker uses the internal registry on minikubes VM by this command:
   
   > **eval $(minikube docker-env)
   
   otherswise docker will use the local registry on your machine which is not accessible from the VM
    or minikube is running.
    
   Now from the terminal window execute the docker build command
   
   > **docker build -t K8file:v1 .**
   
   This will create a image with name of K8sfile and a tag  of v1 and store it in the docker registry
   of the minikube host.
   
   When deploying the image to minikube you'll reference that tag explicitly.
   
   #### Let's Recap what we have done till now:
   
   You've installed the requisite software.
   You've tested and containerized the application.
   You've started your local kubernetes cluster minikube.  
   
   
   Now it's time to deploy the containerized application to minikube from the terminal window (or command prompt).
   
   Execute the following command:
   
   > **kubectl run K8file --image=K8file:v1 --port=8080**
   
   Now the application is running in its own pod.
   
   Not very exciting is it.
   
   Okay so remember Pod is like a mini-host complete with its own IP address and port space.
   When Kubernetes start a pod it's isolated in its own network.
   So, how do we interact with the application.
   One way is the proxy which you can start in a separate terminal window.
   
   Start a new terminal window and execute the 
   
   > **kubectl proxy**
   
   By default the proxy uses port 8001 but you can specify a different port using the 
   **--port** option.
   
   > **kubectl proxy --port=8080**
   
   This starts the proxy using port 8080.
   
   Now you can connect to the cluster through port 8080 on your computer.
   
   I've written a script to get the pod name and use it to access the application through the cluster
   rest interface the script is called **[test-K8sfile.sh](https://github.com/OddExtension5/kubernetes-lab-1/blob/master/test-K8sfile.sh)**
    and takes the port as as an argument. Here is the command:
    
    > **./test-K8file.sh 8080**
    
    
   Now we have minikube up and running let's see how we can manage it.
   You can use the kubectl command to get information about the pods, deployments and so on.
   
   For example:
   
   > **kubectl get pods**
   
   > **kubectl get deployments**
   
   Kubernetes also has Web-based UI dashboard.
   By default the dashboard is not deployed but you can see the dashboard using given command:
   
   > **minikube dashboard**
   
   
   #####  For more details on Kubernetes and Docker, you can follow my notes.
    
   
   
   
   
    
      
