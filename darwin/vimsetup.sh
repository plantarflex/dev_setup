cp .vimrc ~/

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "call plug#begin('~/.vim/plugged')" >> ~/.vimrc

## javascript
#git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript

# Typescript
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim

# graphQL
echo "Plug 'jparise/vim-graphql'" >> ~/.vimrc
vim +PluginInstall +qall


