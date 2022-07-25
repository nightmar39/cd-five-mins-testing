#!/bin/bash

for i in ./argocd-definitions/dev/app*; do 
	sed -i '' -e "s/nightmar39/GITHUB_USER/" -e "s/cd-five-mins-testing/GITHUB_REPO/" -e "s/us-support-v2-cluster/CLUSTER_NAME/" $i
done 
