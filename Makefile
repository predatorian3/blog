# Used to update and deploy this blog.

.PHONY: deploy-blog run-dev-server

deploy-blog: 
	bash ./steps.sh
	bash ./deploy.sh

run-dev-server: 
	hugo server -D 