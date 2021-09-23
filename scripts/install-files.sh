# #!/usr/bin/env bash
# # file: install-files.sh
# # description: Copy files from source to destination.

# set -x
# trap read debug

# # TODO: If run again, it neess to move all the files from OneDrive into the local folder then move the local folder back to onedrive

# ## Config
# HOME_SOURCE_DIR=/mnt/DATA/VikashKothary/VIKASH-LAPTOP/
# HOME_DESTINATION_DIR=~/

# echo '--- Source'
# ls ${HOME_SOURCE_DIR}
# echo '--- Destination'
# ls ${HOME_DESTINATION_DIR}

# echo '--- Move files from destination to source to preserve files.'
# basename "${HOME_SOURCE_DIR}/Code"
# mv ${HOME_DESTINATION_DIR}/Desktop/* "${HOME_SOURCE_DIR}/Desktop/."
# basename "${HOME_DESTINATION_DIR}/Documents"
# mv ${HOME_DESTINATION_DIR}/Downloads/* "${HOME_SOURCE_DIR}/Downloads/."
# basename "${HOME_DESTINATION_DIR}/Pictures"
# basename "${HOME_DESTINATION_DIR}/Music"
# basename "${HOME_DESTINATION_DIR}/Videos"

# echo '--- Remove destination once empty.'
# rmdir "${HOME_DESTINATION_DIR}/Desktop"
# rmdir "${HOME_DESTINATION_DIR}/Documents"
# rmdir "${HOME_DESTINATION_DIR}/Downloads"
# rmdir "${HOME_DESTINATION_DIR}/Music"
# rmdir "${HOME_DESTINATION_DIR}/Pictures"
# rmdir "${HOME_DESTINATION_DIR}/Videos"

# echo '--- Copy folders.'
# ln -s "${HOME_SOURCE_DIR}/Desktop" "${HOME_DESTINATION_DIR}/."
# ln -s "${HOME_SOURCE_DIR}/Documents" "${HOME_DESTINATION_DIR}/."
# ln -s "${HOME_SOURCE_DIR}/Downloads" "${HOME_DESTINATION_DIR}/."
# ln -s "${HOME_SOURCE_DIR}/Music" "${HOME_DESTINATION_DIR}/."
# ln -s "${HOME_SOURCE_DIR}/Pictures" "${HOME_DESTINATION_DIR}/."
# ln -s "${HOME_SOURCE_DIR}/Videos" "${HOME_DESTINATION_DIR}/."

# echo '--- List symlinks.'
# find ${HOME_DESTINATION_DIR} -maxdepth 1 -type l -xtype d -print0 | xargs -0 basename

# echo '--- Delete dotfiles.'
# rm -i ${HOME_DESTINATION_DIR}/.bash_profile
# rm -i ${HOME_DESTINATION_DIR}/.bashrc
# rm -i ${HOME_DESTINATION_DIR}/.bash_aliases
# rm -i ${HOME_DESTINATION_DIR}/.bash_config
# rm -i ${HOME_DESTINATION_DIR}/.bash_secrets
# rm -i ${HOME_DESTINATION_DIR}/.bash_logout
# rm -i ${HOME_DESTINATION_DIR}/.tmux.conf
# rm -i ${HOME_DESTINATION_DIR}/.gitconfig
# rm -i ${HOME_DESTINATION_DIR}/.gitignore

# DOTFILES_SOURCE_DIR=${PWD}/files/dotfiles/

# echo '--- Copy files.'
# #ln -s ${DOTFILES_SOURCE_DIR}/.bash_profile ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.bashrc ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.bash_aliases ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.bash_config ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.bash_secrets ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.bash_logout ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.tmux.conf ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.gitconfig ${HOME_DESTINATION_DIR}
# ln -s ${DOTFILES_SOURCE_DIR}/.gitignore ${HOME_DESTINATION_DIR}

# ## Development
# # mkdir ~/.m2
# # trash $HOME/.m2/settings.xml
# # ln -s $PWD/files/settings.xml $HOME/.m2/settings.xml

