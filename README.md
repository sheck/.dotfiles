# .dotfiles

My dotfiles. Roughly based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Setup

1. `vim ~/.gitconfig.local`
2. ```
   [user]
     name = Nick Sheck
     email = sheck@users.noreply.github.com
   ```
3. `cd ~ && git clone --recurse-submodules https://github.com/sheck/.dotfiles.git`
4. `brew bundle`
5. Clone secret `dotfiles-local` repo to `~/dotfiles-local`
6. Install homebrew (prepend `NONINTERACTIVE=1` when installing on Ubuntu)
7. `sudo chsh $(whoami) -s $(which zsh)` (Ubuntu)
8. `rcup` (may need to run 2x on macos to get ghostty preferences set correctly)
9. `git remote set-url origin git@github.com:sheck/.dotfiles.git`
