#!/bin/sh
rm -fr ~/.config/Code/User/snippets/

ln -s `realpath User/snippets/` ~/.config/Code/User/snippets
ln -sf `realpath User/keybindings.json` ~/.config/Code/User/keybindings.json
ln -sf `realpath User/settings.json` ~/.config/Code/User/settings.json


ls --color=always -la ~/.config/Code/User 

