# dotfiles
I use this repository to version control my dotfiles.

# Installation
### R
The .R files should go in the user's R home directory to be loaded into the session.
To find out which is your R home directory just run Sys.getenv("R\_USER") on the R console.

### Git
The .gitconfig file should go in the user's home directory.

### Tmux
The .tmux.config file should go in the user's home directory.

### Nvim
On windows the init.vim file should go inside the directory: ~/AppData/Local/nvim.
And on linux the init.vim file should go inside the directory located at: ~/.config/nvim.

If said directory doesn't exist, create it in the same path and put the init.vim file inside.
