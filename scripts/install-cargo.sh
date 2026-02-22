#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/cargo-packages")

echo "Installing cargo..."
echo "Installing rustup if not installed..."

if ! command -v cargo &>/dev/null; then
  sudo zypper install -y rustup
fi

echo "Installing Rust stable..."
rustup install stable

echo "Installing cargo packages..."
echo "$PACKAGES" | xargs cargo install
echo "Cargo packages installed."

echo "Cargo installed..."
