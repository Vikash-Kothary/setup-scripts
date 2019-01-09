# https://medium.com/@griggheo/running-selenium-webdriver-tests-using-firefox-headless-mode-on-ubuntu-d32500bb6af2
# http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

#sudo apt-get install firefox xvfb
#Xvfb :10 -ac &
#export DISPLAY=:10
cd /tmp
wget https://ftp.mozilla.org/pub/firefox/releases/54.0/linux-x86_64/en-US/firefox-54.0.tar.bz2
tar -xjf firefox-54.0.tar.bz2
sudo rm -rf /opt/firefox54
sudo mv firefox /opt/firefox54
sudo mv /usr/bin/firefox /usr/bin/firefoxold
sudo ln -s /opt/firefox54/firefox-bin /usr/bin/firefox
firefox https://addons.mozilla.org/en-US/firefox/addon/selenium-ide/
firefox https://addons.mozilla.org/en-US/firefox/addon/firebug/