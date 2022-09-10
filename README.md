This config uses the inbuilt [lsp](https://microsoft.github.io/language-server-protocol/) functionality from [neovim](https://github.com/neovim/neovim). 

Plugins are used via [packer](https://github.com/wbthomason/packer.nvim) so be sure that the necessary config have been run.

Once cloned, symlink the repo's directory to the location neovim will look for, something like this:
```bash
cd /path/to/repos
git clone https://github.com/php1ic/php1ic-nvim
ln -s /path/to/repos/php1ic-nvim ~/.config/nvim
```

Initial run of neovim will likely give a lot of errors as the plugins have yet to be installed.
Either skip them and run `:PackerSync` or prior to the first run install the plugins via the [command line](https://github.com/wbthomason/packer.nvim#bootstrapping)
