pyenv install -v 3.9.10
pyenv virtualenv 3.9.10 odoo15
pyenv activate odoo15
cd /opt/odoo15/odoo
pip install setuptools wheel
pip -r requirements.txt
pyenv deactivate odoo15
