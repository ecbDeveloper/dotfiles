#!/usr/bin/env bash
set -e

echo "=== Atualizando sistema ==="
sudo apt update && sudo apt upgrade -y

echo "=== Instalando pacotes APT ==="
xargs sudo apt install -y <apt-packages.txt

echo "=== Instalando Homebrew (se não tiver) ==="
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
xargs brew install <brew-packages.txt

echo "=== Instalando pacotes Flatpak ==="
xargs flatpak install -y flathub <flatpak-packages.txt

echo "=== Instalando pacotes Snap ==="
xargs sudo snap install <snap-packages.txt

echo "=== Restaurando configs (dotfiles) ==="
cp -r zsh/.zshrc ~/
cp -r wezterm/wezterm.lua ~/.wezterm.lua
cp -r nvim ~/.config/

echo "=== Instalando dotfiles extras do skwp ==="
bash -c "$(curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh)"

echo "=== Finalizado! Reinicie a sessão. ==="
