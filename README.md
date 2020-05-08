# nvim-config
I use this repository to version control my nvim config files.

# TO-DO

- [x] Use Vim-plug to transform Nvim into an IDE for Python
- [ ] Figure out which options my script is turning on that are already set on by default
- [ ] Customize my own statusline
- [ ] Create a bash file which contains all the code I need to run to install dependencies of my script (From Vim-plug to even the Hack fonts)
- [ ] Learn more about Vimscript to improve my config file

## USING MY CONFIG FILE
Feel free to fork this repo and use my configuration, i'd be glad
if you could give me tips to improve it.

Fork this repo and then go to $HOME/nvim and execute the following commands:

1. git init
2. git remote add origin https://github.com/**username**/nvim-config
3. git pull origin master

### WHY NOT *GIT CLONE*?
Because doing it this way its more comfortable. Since $XDG\_CONFIG\_HOME=$HOME,
the config files for nvim need to be within **nvim**. Using this approach you
clone only the contents of the repo directly into the *nvim directory*.
If you use *git clone* then you will have to extract the contents of **nvim\_config**
into its parent directory (nvim).


## EXTRA DIRECTORIES
By default, your nvim folder should only have two directories:

* bin
* share

Those are the only directories that are being ignored. If
you have more directories, add them to .gitignore.
