This config uses the inbuilt [lsp](https://microsoft.github.io/language-server-protocol/) functionality so you will need [neovim](https://github.com/neovim/neovim) installed from the master branch.

Plugins are used via [vim-plug](https://github.com/junegunn/vim-plug) so be sure that the necessary config has been run.

Once cloned, symlink the repo's directory to the location neovim will look for, something like this:
```bash
cd /path/to/repos
git clone https://github.com/php1ic/php1ic-nvim
ln -s /path/to/repos/php1ic-nvim ~/.config/nvim
```

Initial run of neovim will likely give a lot of errors as the plugins have yet to be installed.
Either skip them and run `:PlugUpdate` or prior to the first run install the plugins via the [command line](https://github.com/junegunn/vim-plug/wiki/tips#install-plugins-on-the-command-line)
