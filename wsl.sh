#!/bin/sh
sudo apt update -y
sudo apt install python -y
sudo apt install build-essential apt-transport-https lsb-release ca-certificates curl -y
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install python3-pip -y
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
cat >> ~/.bashrc << "EOF"
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0"
EOF
touch ~/.bash_aliases
echo "alias jupyter-notebook=\"~/.local/bin/jupyter-notebook --no-browser\"" >> ~/.bash_aliases
echo "alias explorer=\"explorer.exe .\"" >> ~/.bash_aliases
echo "alias portl=\"sudo lsof -i -P -n | grep LISTEN\"" >> ~/.bash_aliases
echo "alias cprun=\"g++ -Wall  -fsanitize=address -fsanitize=undefined  main.cpp -o main && ./main\"" >> ~/.bash_aliases
pip3 install notebook scikit-learn matplotlib pandas numpy jupyterlab seaborn
sudo apt install jupyter-core -y
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python get-pip.py
sudo apt-get install python-dev -y 
pip install notebook
pip install scikit-learn matplotlib pandas numpy seaborn
sudo apt install libnss3-dev -y
sudo apt install -y libgdk-pixbuf2.0-0
sudo apt install -y libgtk-3-0
sudo apt install -y libxss1
sudo apt install -y httpie
sudo npm install -g expo-cli
sudo apt install -y  golang-go
go get -u github.com/justjanne/powerline-go
cat >> ~/.bashrc << "EOF"
GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $? -hostname-only-if-ssh)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
EOF
npm install -g typescript
source ~/.bashrc