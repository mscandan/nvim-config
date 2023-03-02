# Install Neovim and another dependencies
  ```sh
    brew install neovim luajit tree-sitter fd rg fzf
  ```


## Clone this repository
  ```sh
    git clone https://github.com/mscandan/nvim-config ~/.config/nvim
  ```

## Plugins
  - to install plugins we need to install plugin manager
    ```sh
      git clone --depth 1 https://github.com/wbthomason/packer.nvim\
       ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
  - to install plugins run this command in Neovim
      ```sh
        :PackerSync
      ```
  - to install lsp's run this command in Neovim
      ```sh
        :MasonInstall typescript-language-server css-lsp eslint_d html-lsp lua-language-server tailwindcss-language-server gopls rust-analyzer
      ```
      
## Key Bindings
  | Binding | Command |
  | --- | --- |
  | space | lead key |
  | ;f | project wide file search |
  | sf | file search in cwd |
  | ;r | project wide grep |
  | \\ | buffer search |
  | leader+ca | code actions |
  | ctrl+j | go to next diagnostic |
  | K | hover doc |
  | gd | go to definition |
  | gr | go to references |
  | gR | rename |
  | leader+h | Go to left split |
  | leader+l | Go to right split |
  | leader+k | Go to top split |
  | leader+j | Go to bottom split |
  | leader+n | Go to next buffer |
  | leader+p | Go to previous buffer |
  | gcc | Comment |
  | gcb | Block comment |
        
