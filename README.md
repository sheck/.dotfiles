# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Setup

1. `vim ~/.gitconfig.local`
2. ```
   [user]
     name = Nick Sheck
     email = sheck@users.noreply.github.com
   ```
3. `cd ~ && git clone --recurse-submodules git@github.com:sheck/.dotfiles.git`
4. Clone secret `dotfiles-local` repo to `~/dotfiles-local`
5. Install homebrew (prepend `NONINTERACTIVE=1` when installing on Ubuntu)
6. `cd excluded_assets && brew bundle`
7. `chsh -s $(which zsh)` or `sudo chsh $(whoami) -s $(which zsh)` (Ubuntu)
8. `rcup`
9. `npm i -g git-mob`

### macOS

1. `cd excluded_assets`
2. `brew bundle --file Brewfile-macos`
3. `brew bundle --file Brewfile-alt`
4. `cp excluded_assets/OfficeCO2.jsx ~/Library/Application\ Support/Übersicht/widgets`
