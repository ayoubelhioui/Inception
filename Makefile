all:
	bash ../script.sh
	@docker-compose -f srcs/docker-compose.yml up -d
down: 
	@docker-compose -f srcs/docker-compose.yml down
clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $(docker network ls -q);\
 	sudo rm -rf /home/ael-hiou/data/mysql;\
	sudo rm -rf /home/ael-hiou/data/wordpress
.PHONY: all down clean