#! /bin/bash

echo "Enabling services..."

sudo systemctl enable --now docker

echo "Services enabled."
