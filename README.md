#Vim Configurations

##Set Up
0. **Back up your old configs.** :)
```
mv ~/.vim ~/.vimbak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.gvimrc ~/.gvimrc.bak
```
1. Clone the repository.
`git clone https://github.com/flarnie/dotvim ~/.vim`

2. Create symlinks to the nested `.vimrc` and `.gvimrc` directories.
```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

3. 

##Resources
 - [Vimcasts: Synchronizing Plugins with Git Submodules and Pathogen][vimcast-pathogen]

[vimcast-pathogen]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
