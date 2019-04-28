"""
Failed to update apt cache: E:The repository 'http://ppa.launchpad.net/gnome-terminator/ppa/ubuntu bionic Release' does not have a Release file.

See: https://github.com/ansible/ansible-modules-core/issues/2951
"""

sudo rm -vf /var/lib/apt/lists/*
