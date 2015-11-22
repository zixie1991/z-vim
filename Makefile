HOME = $(shell cd && pwd)

install-desktop:
	cp -r .vimrc ${HOME}/.vimrc
	cp -r .vim ${HOME}
	git clone https://github.com/vim-scripts/vundle.git ${HOME}/.vim/bundle/vundle

install-server:
	cp -r .vimrc_server ${HOME}/.vimrc
	cp -r .vim ${HOME}
	git clone https://github.com/vim-scripts/vundle.git ${HOME}/.vim/bundle/vundle
