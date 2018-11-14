#!/usr/bin/env sh

(
    ABSPATH=$(cd "$(dirname "$0")"||exit; pwd)
    cd "$ABSPATH" || exit

    sudo -v
    # Clone the docker project
    git clone https://github.com/docker/docker-ce.git

    sudo -v
    # Build the docker manual 
    cd "docker-ce/components/cli" || exit
    make -f docker.Makefile manpages
   
    # Add the manpages to our manpath conf, requires root 
    echo "MANPATH $ABSPATH/docker-ce/components/cli/man" | sudo tee -a /private/etc/man.conf

    # Reload manuals
    man -d man
)   
