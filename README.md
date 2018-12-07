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

**Getting Solarized To Work on Mac**

The solarized theme will not "just work" with the default mac terminal in my
experience. Here is what I've done to get it working when I use Vim in the
terminal;
- Set up iterm2, zsh, and oh-my-zsh.[1]
- Set up the solarized colors for iterm2. Now when you open Vim it should "just work" with the solarized theme.

[1]: https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c

## Resources

 - [Vimcasts: Synchronizing Plugins with Git Submodules and Pathogen][vimcast-pathogen]

[vimcast-pathogen]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
