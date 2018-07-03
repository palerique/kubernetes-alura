#!/usr/bin/env bash

#Starting database:
pushd rafaelnercessian/db;
pwd

kubectl create -f statefulset.yaml
kubectl create -f servico-banco.yaml
kubectl create -f permissoes.yaml

popd

#Starting App:
pushd rafaelnercessian/app;
pwd

kubectl create -f deployment.yaml
kubectl create -f servico-aplicacao.yaml

popd
pwd

echo done!!!