brew "rcm"
brew "git-lfs"
brew "neovim"

brew "bat"
brew "git-delta"
brew "the_silver_searcher"
brew "autojump"
brew "eza"
brew "jq"
brew "lazygit"
brew "lazydocker"
brew "tldr"
brew "direnv"

if OS.mac?
  brew "mas"
  brew "fileicon"

  cask "1password"
  cask "1password-cli"
  cask "dash"
  cask "hey-desktop"
  cask "ghostty"
  cask "keybase"
  cask "slack"
  cask "raycast"
  cask "obsidian"
  cask "brainfm"
  cask "hyperkey"
  cask "rectangle-pro"
  cask "ubersicht"
  cask "claude-code"
  cask "rapidapi"
  cask "unifi-identity-endpoint"
  cask "signal"

  cask "airfoil"
  mas "djay", id: 450527929

  mas "Things", id: 904280696
  mas "Tailscale", id: 1475387142
  mas "Neptunes", id: 1006739057
  mas "iA Writer", id: 775737590
  mas "Tomato 2", id: 1494210770
end

if Dir.exist?(File.expand_path("~/pco-box"))
  cask "zoom"
  cask "krisp"
  cask "tuple"
  cask "cleanshot"

  mas "Nordlayer", id: 1488888843
else
  brew "ripgrep"
  brew "colima"
  brew "docker"
  brew "docker-buildx"
end
