#!/bin/sh

for extension in $(ls vsix/); do
    echo "[cursor] >>>> install from file $extension"
    cursor --install-extension vsix/$extension 
echo "<<<<<\n"
done

for extension in $(cat extensions.list | grep -v installed); do
    echo "[cursor] >>>> install $extension"
    cursor --install-extension "$extension";
    echo "<<<<<\n"
done

echo "[cursor] >>>> install extension updates"
cursor --update-extensions
echo "<<<<<\n"
