sudo apt update
sudo apt install make build-essential libssl-dev python3-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev libpq-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxmlsec1-dev libffi-dev liblzma-dev -y
sudo apt install make -y
sudo apt install gcc -y
sudo mkdir -p /opt/odoo15
sudo chown -R $USER /opt/odoo15/
sudo apt install git -y
git clone https://github.com/odoo/odoo -b 15.0 --depth=1 /opt/odoo15/odoo
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'reboot server'
