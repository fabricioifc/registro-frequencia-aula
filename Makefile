# Nome do container
CONTAINER=registro-frequencia-dev

# Subir containers
dev:
	docker compose up -d

# Parar containers
down:
	docker compose down

# Rebuild da imagem
build:
	docker compose build

# Rebuild completo (sem cache)
build-clean:
	docker compose build --no-cache

# Reiniciar containers
restart:
	docker compose restart

# Ver logs
logs:
	docker compose logs -f

# Acessar shell do container
sh:
	docker exec -it $(CONTAINER) sh

# Limpar containers, imagens e volumes
clean:
	docker compose down -v --remove-orphans

# Listar containers
ps:
	docker compose ps