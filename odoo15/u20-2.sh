git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
pyenv install -v 3.9.10
pyenv virtualenv 3.9.10 odoo15
pyenv activate odoo15
cd /opt/odoo15/odoo
pip install setuptools wheel
pip install -r requirements.txt
pip install inotify
pyenv deactivate odoo15
