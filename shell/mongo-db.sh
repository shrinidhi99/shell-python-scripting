# Start MongoDB
sudo service mongod start
# Verify that MongoDB has started successfully
sudo service mongod status
# Stop MongoDB
sudo service mongod stop
# Restart MongoDB
sudo service mongod restart
# Begin using MongoDB
mongo
# Uninstall MongoDB
# Stop MongoDB
sudo service mongod stop
# Remove Packages
sudo apt-get purge mongodb-org*
# Remove Data Directories
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb