#  Neovim config
##### by Mattio-cmd

## Showcase

### IDE like appearence
![donut_compilation.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/donut_compilation.png)
![startify.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/startify.png)

### Beautifull colorscheme for more focus whlist coding
![cpp.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/cpp.png)

### Organized configuration
![organized.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/organized.png)
![nerdtree.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/nerdtree.png)

### Full transparency support
![transparency.png](https://github.com/Mattio-cmd/nvim/blob/main/showcase/transparency.png)

## Features
- [x] IDE like stable coding enviorment.
- [x] Beautifull apearence with eye saving taken into mind.
- [x] Colorscheme specially selected for more focus in actually editing a file.
- [x] Amazing remaps.
- [x] Organized configuration with usefull comments in case a setting is not understood.
- [x] Full transparency support with picom.


## Installation
To install this config is actually pretty straight forward.
```
git clone https://github.com/Mattio-cmd/nvim.git
mv nvim ~/.config
```
After this, just open the ```plugins.vim``` file located under ```~/.config/nvim/vim-plug```  uncoment all the plugins you want to install and in comand mode run:
```
PlugInstall
```
NOTE: If you plan to also use coc  you need to install ```nodejs``` first. Otherwhise you are going to get and error every time you open neovim.

##  Important remaps
- ```Control + h, j, k or l``` will serve as the movement keys for splits in normal mode.
- ```TAB``` will move you to the next tab.
- ```Shift + TAB``` will move you to the previous tab.
- ```Control + s``` will save your current buffer.
- ```Control + q``` will save and quit your vim sesion.
- ```Control + x``` will close the current buffer you are in but will not save your work.
- ```leader + /``` will bring a terminal at the bottom of the screen. 
  * The terminal will be resized at just 20 for better screen space management.
  * This is usefull for C, C++ & Rust programing.
- ```Control + p```  will bring a BIG terminal window within the vim instance.
  * This is usefull if you want to see most of the compilation errors/warnings more easily.
- ```Control + v``` will vertically split the window.
- ```Shift + h``` will horizontally split the window.
- ```Shift + k``` will bring a help menu in whatever happens you are positioned.


## Aditional comments
- This 100% works on most linux distros and OpenBSD (or at least on my set up)
