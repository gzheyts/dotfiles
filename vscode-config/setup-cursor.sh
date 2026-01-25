#!/bin/sh

rm -fr ~/.config/Cursor/User/snippets/

ln -s `realpath User/snippets/` ~/.config/Cursor/User/snippets
ln -sf `realpath User/keybindings.json` ~/.config/Cursor/User/keybindings.json
ln -sf `realpath User/settings.json` ~/.config/Cursor/User/settings.json


ls --color=always -la ~/.config/Cursor/User 

