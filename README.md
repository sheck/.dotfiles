# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) and using the [SpaceVim](https://github.com/SpaceVim/SpaceVim) distribution.

## Requirements

- zsh needs to be your login shell
   
   `chsh -s $(which zsh)`

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
5. [Install RCM](https://github.com/thoughtbot/rcm)
6. `rcup`
7. Open nvim, and run `:CocUpdate` to install the correct extensions
