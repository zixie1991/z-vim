HOME = $(shell cd && pwd)

install-desktop:
	/bin/rm -rf ~/.vim ~/.vimrc
	cp -r .vimrc_desktop ${HOME}/.vimrc
	cp -r .vim ${HOME}
	git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/vundle

install-server:
	/bin/rm -rf ~/.vim ~/.vimrc
	cp -r .vimrc_server ${HOME}/.vimrc
	cp -r .vim ${HOME}
	git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/vundle
