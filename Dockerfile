FROM node:latest
EXPOSE 8080
COPY K8sfile.js .
CMD node K8file.js
