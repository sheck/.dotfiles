# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Requirements

- zsh needs to be your login shell
   
   `chsh -s $(which zsh)` or `sudo chsh $(whoami) -s $(which zsh)`

- Probably need neovim installed
- [Nix package manager](https://nixos.org/download.html)
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
5. `nix-env -iA nixpkgs.rcm`
6. `rcup`
7. `nix-env -iA nixpkgs.sheckPackages`

## Other (could do this first 🤷‍♂️)
1. `brew bundle`
2. `brew bundle --file Brewfile-alt`
