#!make

help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF}' $(MAKEFILE_LIST)

build: ## Generate build files and delete all conflicting outputs
	dart run build_runner build --delete-conflicting-outputs

watch: ## Watch build files and delete all conflicting outputs
	dart run build_runner watch --delete-conflicting-outputs
