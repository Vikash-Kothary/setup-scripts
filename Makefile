#!/usr/bin/make

ENV := local
-include config/.env.${ENV}
export

#@ - help: Show all commands.
help:
	@fgrep -h "#@ " $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

#@ - docs: Open documentation.
.PHONY: docs
docs:
	@${OPEN} docs/src

lint:
	@false

install:
	@${BASH} scripts/install-files.sh

uninstall:
	@false

%:
	@[[ ! -f "scripts/${*}.sh" ]] || ${BASH} "scripts/${*}.sh"

init:
	@false

.PHONY: clean
clean:
	@rm main.retry