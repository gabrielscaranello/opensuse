#! /bin/bash

echo "Removing Firefox ESR"
sudo zypper remove -y MozillaFirefox

echo "Adding Firefox Repo"
sudo zypper addrepo https://download.opensuse.org/repositories/mozilla/16.0/mozilla.repo

echo "Installing Firefox"
sudo zypper install MozillaFirefox
