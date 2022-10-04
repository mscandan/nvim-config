# Install Neovim and another dependencies
  ```sh
    brew install neovim luajit tree-sitter fd rg
  ```

# Configuration
  - LSPs

    - Go
      ```sh
        brew install gopls
      ```

    - Rust
      ```sh
        brew install rust-analyzer
      ```

    - Lua
      ```sh
        brew install lua-language-server
      ```

    - TypeScript
      ```sh
        npm install -g typescript-language-server typescript vscode-langservers-extracted
      ```

    - Prettier
      ```sh
        brew install fsouza/prettierd/prettierd
      ```
  - Plugins
    - to install plugins we need to install plugin manager
      ```sh
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim
      ```
    - to install plugins run this command in neovim
        ```sh
          :PackerInstall
        ```
