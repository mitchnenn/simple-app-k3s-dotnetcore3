build:
	docker build . --tag thecrazyrussian/simple-app-dotnet:2

publish:
	docker push thecrazyrussian/simple-app-dotnet:2

deploy:
	kubectl apply -f kubernetes/deployment.yaml
	kubectl apply -f kubernetes/service.yaml
	kubectl apply -f kubernetes/ingress.yaml