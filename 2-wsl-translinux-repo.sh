SCRIPT="script.deb.sh"
curl -s https://packagecloud.io/install/repositories/arkane-systems/wsl-translinux/${SCRIPT} \
    | bash
apt-get update

apt install systemd-genie
