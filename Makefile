# Used to update and deploy this blog.

.PHONY: deploy-blog run-dev-server pull-submodules

deploy-blog:
	bash ./steps.sh
	bash ./deploy.sh

run-dev-server:
	hugo server -D
	
pull-submodules:
	git submodule init
	git submodule update