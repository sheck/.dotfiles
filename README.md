# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) and using the [SpaceVim](https://github.com/SpaceVim/SpaceVim) distribution.

## Requirements

- zsh needs to be your login shell
   
   `chsh -s $(which zsh)` or `sudo chsh $(whoami) -s $(which zsh)`

- Probably need neovim installed

## Setup

1. `vim ~/.gitconfig.local`
2. ```
   [user]
     name = Nick Sheck
     email = sheck@users.noreply.github.com
   ```
3. `cd ~ && git clone https://github.com/sheck/.dotfiles`
4. Clone secret `dotfiles-local` repo to `~/dotfiles-local`
5. `brew install rcm` or `sudo apt install rcm`
6. `rcup`
7. Install coc extensions: `cd ~/.config/coc/extensions && npm i && rm package-lock.json`. You might need to open neovim and run `:CocUpdate` as well.
8. `npm install -g javascript-typescript-langserver; gem install solargraph`
