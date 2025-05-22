# Dotfiles
Dotfile are managed using [GNU Stow](https://www.gnu.org/software/stow/). 
To ensure Stow works correctly, clone this repository into your home directory. 
The directory structure of each Stow package is designed so that Stow knows where to 
create the appropriate symlinks. If you are interested, [here](https://www.jakewiesler.com/blog/managing-dotfiles) 
is a pretty good article to help you get started.

# Installing Stow Packages
- nvim: `stow nvim`
- ghostty: `stow ghostty`
- zsh: `stow zsh`
- tmux: `stow tmux`

## Nvim
Before setting up the configuration, make sure you follow the Lazy [requirements](https://lazy.folke.io/#%EF%B8%8F-requirements)

### Plugins
-   [Comment.nvim](https://github.com/numToStr/Comment.nvim): Provides easy commenting functionality with support for multiple languages.
-   [Conform.nvim](https://github.com/stevearc/conform.nvim): A modern configuration for code formatting and linting.
-   [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A fast, customizable status line for Neovim.
-   [Nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatically closes pairs of parentheses, brackets, quotes, and more.
-   [Nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): A file explorer tree to help with easy navigation within your project.
-   [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting, code folding, and text object selection using Treesitter.
-   [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): A highly extendable fuzzy finder for searching files, buffers, and more.
-   [github-nvim-theme](https://github.com/projekt0n/github-nvim-theme): Github's Neovim themes. 

### LSP
-   [Mason](https://github.com/williamboman/mason-lspconfig.nvim): Closes some gaps that exist between `mason.nvim` and `lspconfig`.
-   [Mason-lspconfig](https://github.com/williamboman/mason.nvim): Allows you to easily manage external editor tooling such as LSP servers and more.
-   [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp): A completion engine plugin for Neovim written in Lua.
-   [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Provides basic, default Nvim LSP client configurations for various LSP servers.

### Misc.
- [ripgrep](https://github.com/BurntSushi/ripgrep): Recursively searches directories for a regex pattern. Used by the Neovim Telescope plugin.p
