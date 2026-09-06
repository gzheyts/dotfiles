#!/bin/sh

for extension in $(cat extensions.list | grep -v installed); do
    echo "[vscode] >>>> install $extension"
    code --install-extension "$extension";
    echo "<<<<<\n"
done

echo "[vscode] >>>> install extension updates"
code --update-extensions
echo "<<<<<\n"
