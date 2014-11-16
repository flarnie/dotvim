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
3. Make sure the syntastic checkers are installed:
[SCSS-Lint][scss-lint]
[JSX-Hint][jsx-hint]

[scss-lint]: https://github.com/causes/scss-lint
[jsx-hint]: https://github.com/CondeNast/JSXHint

## Managing Plugins
**Add a plugin**
`git submodule add https://github.com/tpope/vim-surround.git bundle/surround`

**Remove a plugin**
[from blog post by David Walsh][remove-git-submodule]

1. Delete the section from the `.gitmodules` file.
2. `git add .gitmodules`
3. Delete the section from `.git/config` locally.
4. Run `git rm --cached path/to/submodule`.  Don't include a trailing slash --
   that will lead to an error.
5. `rm -rf .git/modules/submodule-name`
6. If you want to actually remove the plugin locally: `rm -rf path/to/submodule`.

[remove-git-submodule]: http://davidwalsh.name/git-remove-submodule

##Resources
 - [Vimcasts: Synchronizing Plugins with Git Submodules and Pathogen][vimcast-pathogen]

[vimcast-pathogen]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
