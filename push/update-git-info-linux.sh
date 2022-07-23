#!/bin/bash
echo "Enter git user name" 

read GIT_USER

echo "Enter git repo name"

read GIT_REPO

echo "Enter Managed Cluster name"

read MANAGED_CLUSTER

for i in ../argocd-definitions/dev/app*; do 
	sed -i -e "s/GITHUB_USER/$GIT_USER/" -e "s/GITHUB_REPO/$GIT_REPO/" -e "s/CLUSTER_NAME/$MANAGED_CLUSTER/" $i
done 

git add ./argocd-definitions/dev/app*

git branch -M hosted-demo

git commit -m "Update GITHUB_USER, GITHUB_REPO and CLUSTER_NAME"

git push -u origin hosted-demo

