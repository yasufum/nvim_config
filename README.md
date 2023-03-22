# My neovim configuration

## Install

For using `coc.nvim`, install `nodejs` and `yarn` before the plugin
itself. Use shell scripts provoded by each projects to install the latest releases.

Installing `nodejs` requires root privilege and show a prompt to
confirm the installation. So, add `sudo bash -s -- -y` to not
be interrupted at once.

```sh
curl -sL install-node.vercel.app/lts | sudo bash -s -- -y
```

It's similar to `yarn` withouth root privilege.

```sh
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash -s -- -y
```

Put all configs of neovim under `$HOME/.config/nvim`.

```sh
cd $HOME/.config
git clone http://lyric:8080/git/yasufum/nvim-config.git
mv nvim-config nvim
```

## Coc plugins

`coc.nvim` is a LSP implementation branched from VSCode.
Each of extension list below is installed via command `:CocInstall PLUGIN_NAME`.

- coc-json
- coc-yaml
- coc-sh
- coc-tsserver
- coc-solargraph
- coc-rls
- coc-git
- coc-pyright
