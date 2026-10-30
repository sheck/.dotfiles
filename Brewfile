brew "rcm"
brew "git-lfs"
brew "jj"
brew "neovim"

brew "bat"
brew "the_silver_searcher"
brew "autojump"
brew "eza"
brew "jq"
brew "lazygit"
brew "lazydocker"
brew "tldr"
brew "direnv"
brew "mise"
brew "starship"
brew "dmmulroy/tap/jj-starship"

if OS.mac?
  brew "mas"

  cask "1password"
  cask "1password-cli"
  cask "hey-desktop"
  cask "ghostty"
  cask "keybase"
  cask "raycast"
  cask "obsidian"
  cask "hyperkey"
  cask "rectangle-pro"
  cask "unifi-identity-endpoint"
  cask "tailscale-app"
  cask "mullvad-vpn"
  cask "thaw"

  mas "Things", id: 904280696
  mas "Neptunes", id: 1006739057
  mas "iA Writer", id: 775737590
end

if Dir.exist?(File.expand_path("~/pco-box"))
  cask "zoom"
  cask "tuple"
  cask "cleanshot"
  cask "slack"

  mas "Nordlayer", id: 1488888843
else
  brew "ripgrep"
  # brew "colima"
  # brew "docker"
  # brew "docker-buildx"
end
