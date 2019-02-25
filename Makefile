local-setup-osx:
	brew install pipenv
	brew install kubernetes-helm kubernetes-cli
	brew cask install minikube
	# https://github.com/ansible/ansible/issues/37148
	brew install libgit2

local-kube-osx:
	# https://github.com/kubernetes/minikube/issues/261
	minikube start --vm-driver=parallels
	helm init

local-kube-health:
	kubectl version        
	kubectl describe componentstatuses
	
local-env-install:
	PIPENV_VENV_IN_PROJECT=1 pipenv install

local-env-start:
	pipenv shell

local-kube-install-tiers:
	ansible-playbook top.yml

deploy-soc-serverless:
	cd soc && serverless deploy

build-soc-rest:
	cd soc_rest && docker -t us.gcr.io/bits/socservice:dev .
	docker push us.gcr.io/bits/socservice:dev

run-soc-rest: 