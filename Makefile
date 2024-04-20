.PHONY: apply

#Installs the ingress-nginx controller and applys all kubernetes infrastructure
apply:
	@cd $(CURDIR)/terraform && curl -sS https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.0/deploy/static/provider/cloud/deploy.yaml -o ingress-nginx.yaml && \
	cd $(CURDIR)/terraform && kubectl apply -f ingress-nginx.yaml && \
	cd $(CURDIR)/terraform && terraform init && terraform plan && terraform apply --auto-approve
	
#destorys all kubernetes infrastructure
destroy:
	@cd $(CURDIR)/terraform && terraform init && terraform destory --auto-aprove


