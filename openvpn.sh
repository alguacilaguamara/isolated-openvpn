# cd ~/Documents
sudo vagrant up
sudo vagrant ssh -c "sudo openvpn --config /vagrant/<name>.ovpn --data-ciphers AES-256-CBC --auth-user-pass /vagrant/<creds>.txt & bash"
sudo vagrant halt
