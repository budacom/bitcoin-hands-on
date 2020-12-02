PROJECT ?= bitcoin-hands-on
LOGS_SINCE := 3h

SHELL := /bin/bash
REQUIRED_BINS := docker docker-compose gem docker-sync

run: setup console

BOLD ?= $(shell tput bold)
NORMAL ?= $(shell tput sgr0)

help:
	@echo "${BOLD}Local environment tasks:${NORMAL}"
	@echo "  setup				Setup the environment, create containers and initialize app"
	@echo "  console			Start the interactive console"
	@echo "  resync				Delete sync volumen and resync"
	@echo ""
	@echo "  syntax: make <task>"

setup: check
	@echo "Setting up docker sync.."
	docker-sync start

	@echo ""
	@echo "Preparing application.."
	docker-compose build app

	@echo ""
	@echo "All done. Go back to the README.md"

console:
	docker-compose run --rm app ruby main.rb

resync: check
	docker-compose down
	docker-sync clean
	docker-sync start

check:
	$(foreach bin,$(REQUIRED_BINS),\
	$(if $(shell command -v $(bin) 2> /dev/null),,$(error Please install `$(bin)`)))