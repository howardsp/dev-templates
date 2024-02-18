#/bin/bash
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && nix --experimental-features 'nix-command flakes' flake update" \;
