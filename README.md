# Vim Configurations

## Set Up

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

3. Pull down the submodules:
`git submodule init`
`git submodule update`

4. Make sure the syntastic checkers are installed:
[SCSS-Lint][scss-lint]
[JSX-Hint][jsx-hint]

[scss-lint]: https://github.com/causes/scss-lint
[jsx-hint]: https://github.com/CondeNast/JSXHint

## Managing Plugins

**Add a plugin**
`git submodule add https://github.com/tpope/vim-surround.git bundle/surround`

**Remove a plugin**
[from StackOverflow post][remove-git-submodule]

1. `git submodule deinit asubmodule `
2. `git rm asubmodule`
3. `rm -rf .git/modules/asubmodule`

**Note:** This depends on using git version 1.8.5.

[remove-git-submodule]: http://stackoverflow.com/a/16162000

## Resources

 - [Vimcasts: Synchronizing Plugins with Git Submodules and Pathogen][vimcast-pathogen]

[vimcast-pathogen]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
