#!/bin/bash

# System Update
sudo apt update && sudo apt upgrade -y

# Install necessary dependencies
sudo apt install -y curl git

# Run the Pterodactyl Installer (Automated)
bash <(curl -s https://pterodactyl-installer.se) << EOF
1
0
mariadb
YourStrongDatabasePassword123!
nginx
n
EOF

echo "Pterodactyl Panel installation completed!"
echo "Please manually create an admin user with: cd /var/www/pterodactyl && php artisan p:user:make"
