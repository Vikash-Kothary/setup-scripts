# https://medium.com/@griggheo/running-selenium-webdriver-tests-using-firefox-headless-mode-on-ubuntu-d32500bb6af2
sudo apt-get install firefox xvfb
Xvfb :10 -ac &
export DISPLAY=:10