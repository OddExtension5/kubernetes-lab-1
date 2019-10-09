#! /bin/bash

K8S_REST_PORT=$(1:-8001)

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'}

curl https://localhost:${K8S_REST_PORT}/api/v1/proxy/namespaces/default/pods/$POD_NAME/
