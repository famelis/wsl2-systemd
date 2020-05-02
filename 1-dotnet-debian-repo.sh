
wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg

DIST="debian/10"
wget https://packages.microsoft.com/config/${DIST}/prod.list
mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
chown root:root /etc/apt/sources.list.d/microsoft-prod.list

apt-get update
apt-get install apt-transport-https
apt-get update

apt-get install dotnet-sdk-3.0
# apt-get install aspnetcore-runtime-3.0
# apt-get install dotnet-runtime-3.0
