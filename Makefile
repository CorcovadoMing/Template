all:
	@echo 'Command:'
	@echo '    sudo make install'
	@echo '    sudo make uninstall'

install: 
	mkdir -p ~/.config
	cp -r -n ../template ~/.config
	rsync -av ./bin/* /usr/local/bin

uninstall:
	rm -r ~/.config/template
	rm /usr/local/bin/template
	rm /usr/local/bin/genprofile


