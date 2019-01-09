sudo apt install --reinstall virtualbox-dkms
sudo dpkg-reconfigure virtualbox-dkms
sudo dpkg-reconfigure virtualbox
sudo modprobe vboxdrv
sudo modprobe vboxnetflt