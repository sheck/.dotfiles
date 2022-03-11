# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Requirements

- zsh needs to be your login shell
   
   `chsh -s $(which zsh)` or `sudo chsh $(whoami) -s $(which zsh)`

- Probably need neovim installed
- [Nix package manager](https://nixos.org/download.html)

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

## Other stuff
- `nix-env -iA nixpkgs.bat`
- `nix-env -iA nixpkgs.watchman` (to get automatic import renaming working with coc-tsserver)
