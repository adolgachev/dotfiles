#!/usr/bin/env bash

# Install common global node.js

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade node

# Install the nodejs packages

# build tools
npm install -g bower
npm install -g gulp
npm install -g iron-meteor

# transpilers
npm install -g coffee-script
npm install -g jade
npm install -g less

