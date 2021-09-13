# my_vimrc
My work in progres for a vimrc.
just a basic vimrc 

# install

Download plug.vim and put it in the "autoload" directory.

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

or for neovim 

´´´
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
´´´

Reload .vimrc and :PlugInstall to install plugins.
