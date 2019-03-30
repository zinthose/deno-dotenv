
all: fmt test

install:
	curl -L https://deno.land/x/install/install.sh | sh

test:
	deno --reload --allow-env --allow-read ./test.ts

fmt:
	prettier --no-color --write *.md *.ts *.yml

.PHONY: test fmt install
