run: 
	@docker-compose -p drone up -d
stop:
	@docker-compose -p drone stop
clean: stop
	@docker-compose -p drone down
clean-images: 
	@docker rmi `docker images | grep 'drone'`