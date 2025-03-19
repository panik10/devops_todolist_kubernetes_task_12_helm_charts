#!/bin/bash
kind create cluster --config cluster.yml
kubectl taint nodes -l app=mysql app=mysql:NoSchedule

# Install Ingress Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

heln install todoapp helm-chart/todoapp