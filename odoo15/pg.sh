sudo apt install postgresql postgresql-client -y
sudo -u postgres createuser -s $USER
createdb $USER