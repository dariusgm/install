# depends on curl
# depends on git
# depends on make
# depends on pyenv
# depends on node
# depends on rust
# depends on neovim
# depends on lazygit

sudo npm install -g neovim tree-sitter-cli
pip install pynvim
cargo install fd-find
cargo install ripgrep
# install font
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip -o UbuntuMono.zip

# install lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
