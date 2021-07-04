# NEOVIM
This is my very personal neovim setup
![imagen](https://user-images.githubusercontent.com/71275841/124337574-9459d700-dba3-11eb-89a9-243ce4a13c4a.png)


## Install Neovim in Linux

### Ubuntu/Debian

~~~
sudo apt-get update && sudo apt-get install neovim
~~~

### Arch-linux

~~~
sudo pacman -Sy neovim
~~~

### Fedora

~~~
sudo dnf install neovim
~~~

To open neovim in terminal use the command `nvim`

## Configuration
To configure neovim you have to create the folder `nvim` in the path `~/.config/` 
Inside the nvim folder you have to create the `init.vim` file and in that file will go all your settings

## Plugins
### List
- Theme: [ayu](https://github.com/ayu-theme/ayu-vim)
- Status bar: [LightLine](https://github.com/itchyny/lightline.vim)
- File Explorer: [nerdtree](https://github.com/scrooloose/nerdtree)
- NerdTree git: [Nerdtree-git](https://github.com/Xuyuanp/nerdtree-git-plugin)
- Icons: [DevIcons](https://github.com/ryanoasis/vim-devicons)
- AutoCompletion: [coc](https://github.com/neoclide/coc.nvim)
- 

### Installation

#### Step 1
[Vim-Plug](https://github.com/junegunn/vim-plug) is used for module management so let's install it with the following command in terminal
~~~
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~

#### Step 2

To install the plugins you must create the `plugins` folder in the directory `~/.config/nvim`
To add the plugins to neovim you must write to the init.vim

~~~
call plug#begin('~/.config/nvim/plugins')

" here will go the plugins 

call plug#end()
~~~

#### Step 3
Once the plugins are added restart neovim and in command mode you have to type 

~~~
:PlugInstall
~~~
