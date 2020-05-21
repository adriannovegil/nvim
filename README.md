## Neovim Configuration

To install this configuration including plugins:

```
git clone https://github.com/adriannovegil/nvim ~/.config/nvim
```

## Install Plugins

To install a new plugin, I use [`vim-plug`](https://github.com/junegunn/vim-plug), for me:

 * Easier to setup: Single file. No boilerplate code required.
 * Easier to use: Concise, intuitive syntax
 * Super-fast parallel installation/update (with any of +job, +python, +python3, +ruby, or Neovim)
 * Creates shallow clones to minimize disk space usage and download time
 * On-demand loading for faster startup time
 * Can review and rollback updates
 * Branch/tag/commit support
 * Post-update hooks
 * Support for externally managed plugins

If you want to install a new plugin, add a `vim-plug` section to your `~/.config/nvim` for __Neovim__

 * Begin the section with call plug#begin()
 * List the plugins with Plug commands
 * call plug#end() to update &runtimepath and initialize plugin system

__Example__

```
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
```

Reload and execute `:PlugInstall` to install plugins.

```
### `Plug` options

| Option                  | Description                                      |
| ----------------------- | ------------------------------------------------ |
| `branch`/`tag`/`commit` | Branch/tag/commit of the repository to use       |
| `rtp`                   | Subdirectory that contains Vim plugin            |
| `dir`                   | Custom directory for the plugin                  |
| `as`                    | Use different name for the plugin                |
| `do`                    | Post-update hook (string or funcref)             |
| `on`                    | On-demand loading: Commands or `<Plug>`-mappings |
| `for`                   | On-demand loading: File types                    |
| `frozen`                | Do not update unless explicitly specified        |
```

## Configure the Plugins

All the plugin configurations are in the `plugin-config` folder.

The configuration is loaded fro the `init.vim` file at the end of the file:

```
" load config from modules
source ~/.config/nvim/plugin-config/neovim.config.conf
source ~/.config/nvim/plugin-config/nerdtree.config.conf
source ~/.config/nvim/plugin-config/vim_airline.config.conf
source ~/.config/nvim/plugin-config/coc.config.conf
source ~/.config/nvim/plugin-config/colorschemes.config.conf
source ~/.config/nvim/plugin-config/git_fugitive.config.conf
source ~/.config/nvim/plugin-config/greplace.config.conf
source ~/.config/nvim/plugin-config/previm.config.conf
source ~/.config/nvim/plugin-config/javascript_libraries_syntax.config.conf
source ~/.config/nvim/plugin-config/nerdcommenter.config.conf
source ~/.config/nvim/plugin-config/haskell-vim.conf
```

To change a plugin configuration, you can edit the file ;-)

## Update the plugins

To disable a pluging, you just to comment the plugin line in the `init.vim` file and then execute the `:PlugClean` command.

To upgrade the plugins, just execute the `:PlugUpdate` command.

To update the plugin manager, just execute the `:PlugUpgrade` command.

___Commands___

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |

## References

Interesting links

 * https://github.com/junegunn/vim-plug
 * https://spacevim.org/use-vim-as-a-java-ide/
 * https://github.com/fatih/vim-go
 * https://mendo.zone/fun/neovim-setup-haskell/
 * https://github.com/johnmendonca/nvim
 * https://stsewd.dev/es/posts/neovim-plugins/
 * https://programadorwebvalencia.com/diferencias-entre-neovim-y-vim/
 * https://github.com/jie-meng/VimConfig
 * https://github.com/junegunn/vim-plug
