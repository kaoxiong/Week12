echo "for this script to work you must already have a server and must not have Samba install."
sleep 2
echo " "
echo "This script will start your server for you if you do not have Samba install."
echo " "
echo "Please enter the path to your smb.conf file (example: /home/ubuntu/Desktop): "
read smb_config_file
echo " "
echo "Starting your server......"
sleep 2
nmbd -D -s $smb_config_file
smbd -D -s $smb_config_file
sleep 2
echo " "
echo "Done. Your server has been started."
