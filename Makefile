install:
	@sudo ln -s $(PWD)/dockerctx $(HOME)/.local/bin/dockerctx
	@sudo ln -s $(PWD)/bash_completion.sh /etc/bash_completion.d/dockerctx

uninstall:
	@sudo rm -f $(HOME)/.local/bin/dockerctx /etc/bash_completion.d/dockerctx
