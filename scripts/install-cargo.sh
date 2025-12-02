#! /bin/bash

echo "Installing cargo..."

echo "Installing rustup if not installed..."

if ! command -v cargo &> /dev/null; then
  sudo zypper install -y rustup
fi

echo "Installing Rust stable..."

rustup install stable

echo "Cargo installed..."
