.PHONY: default help
default: help

#!
#! Launching the application:
install:             ## Run npm install
brain-games:         ## Run game
publish:             ## Publish package

#!
#! Other:
help:                ## Show this message
	@egrep -h "##|#!" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | sed -e 's/: /  /' | sed -e 's/^/  make /' | sed -e 's/^[ ]*make #![ ]*//'
	@echo

.PHONY: install
install:
	@(npm install)

.PHONY: publish
publish:
	@(npm publish --dry-run)

.PHONY: brain-games
brain-games:
	@(node bin/brain-games.js)
