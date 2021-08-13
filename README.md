
### make the pack folder a git repository
``` bash
cd ~/.vim/pack
git init
```
### add as many plugins as you want in the desired
### package directories

### for example, lets add NERDtree and its git plugin
### as autoloaded in plugins/ directory
``` bash
git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree
git submodule add https://github.com/Xuyuanp/nerdtree-git-plugin plugins/start/nerdtree-git-plugin
```

### lets also add the one color scheme in the colors/ directory
``` bash
git submodule add https://github.com/rakr/vim-one.git colors/start/one
```

### and optinally, if we want the elixir syntax and compiler tools under syntax/
``` bash
git submodule add https://github.com/elixir-lang/vim-elixir syntax/opt/elixir
```

### start vim and configure the plugins as you wish :)
``` bash
cd -
vim ~/.vimrc
```

### when need to update,
### it is just a matter of updating submodules
``` bash
git submodule update --remote --merge
git commit
```

