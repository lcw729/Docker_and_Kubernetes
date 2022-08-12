#!/bin/bash
kubectl delete -f nodeport-service.yaml
kubectl delete -f deploy-nginx.yaml
kubectl create -f deploy-nginx.yaml
kubectl create -f nodeport-service.yaml
