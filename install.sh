#!/bin/bash
echo "Downloading..."
cd ~/Downloads
curl -LO https://github.com/matthewyang204/Chase-Game/releases/download/2.0/Install.Chase.Game.2.0.dmg
echo "Installing with sudo, enter password if asked..."
hdiutil attach ~/Downloads/Install.Chase.Game.2.0.dmg
sudo cp -R /Volumes/Chase\ Game/Chase\ Game.app /Applications/Chase\ Game.app
echo "Installation complete, cleaning up..."
hdiutil detach /Volumes/Chase\ Game
sudo rm -R ~/Downloads/Install.Chase.Game.2.0.dmg
echo "done"
