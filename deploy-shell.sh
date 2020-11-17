if [[ "$(kubectl get deploy | cut -d ' ' -f1 | grep nginx-deploy)" == "nginx-deploy" ]]
then
	kubectl apply -f deploy.yaml
else
	kubectl create -f deploy.yaml
fi
