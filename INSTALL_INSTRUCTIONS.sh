
# APT install dependencies for Python 3.12 and home-assistant
sudo apt install python3-pip python3-dev python3-venv autoconf libssl-dev
sudo apt install libxml2-dev libxslt1-dev libjpeg-dev libffi-dev libudev-dev
sudo apt install zlib1g-dev pkg-config libavformat-dev libavcodec-dev
sudo apt install libavdevice-dev libavutil-dev libswscale-dev libswresample-dev
sudo apt install libavfilter-dev ffmpeg libgammu-dev
sudo apt install libsqlite3-dev sqlite libturbojpeg
# sudo reboot
# source ~/.bashrc

# Download and Install Python 3.12
mkdir .py
cd .py
sudo wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
sudo tar -xzf Python-3.12.0.tgz
cd Python-3.12.0/
./configure
make -j 4
sudo make install
# sudo reboot
# source ~/.bashrc

# Download and install home-assistant and add venv
mkdir ha_ws
cd ha_ws/
git clone https://github.com/TamaGO89/ha_test.git
cd ha_test/
git remote add upstream https://github.com/home-assistant/core.git
python3.12 -m venv venv
# sudo reboot
# source ~/.bashrc

# PIP Install dependencies for Python3.12 and home-assistant
source venv/bin/activate
sudo pip install numpy
pip3 install numpy PyTurboJPEG wheel ha-ffmpeg hassil home-assistant-intents pymicro-vad my-pypi-package
script/setup
rm venv/bin/*3.10
# sudo reboot
# source ~/.bashrc

python3 -m script.scaffold integration
