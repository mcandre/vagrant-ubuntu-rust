#!/bin/sh
sudo apt-get update &&
    sudo apt-get install -y curl ca-certificates build-essential &&
    su vagrant -c 'curl https://sh.rustup.rs -sSf | sh -s -- -y' &&
    sudo apt-get purge -y curl &&
    sudo apt-get autoremove --purge -y &&
    sudo apt-get autoclean -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* \
        /var/cache/apt/pkgcache.bin \
        /var/cache/apt/srcpkgcache.bin
