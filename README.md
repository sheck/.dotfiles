# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Requirements

- zsh needs to be your login shell
   
   `chsh -s $(which zsh)` or `sudo chsh $(whoami) -s $(which zsh)`

- Probably need neovim installed
- Homebrew/linuxbrew

## Setup

1. `vim ~/.gitconfig.local`
2. ```
   [user]
     name = Nick Sheck
     email = sheck@users.noreply.github.com
   ```
3. `cd ~ && git clone --recurse-submodules git@github.com:sheck/.dotfiles.git`
4. Clone secret `dotfiles-local` repo to `~/dotfiles-local`
5. `brew bundle`
6. `rcup`

### macOS

1. `brew bundle --file Brewfile-macos`
2. `brew bundle --file Brewfile-alt`
