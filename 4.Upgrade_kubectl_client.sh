curl -LO https://dl.k8s.io/release/v$1/bin/linux/amd64/kubectl
curl -LO https://dl.k8s.io/v$1/bin/linux/amd64/kubectl.sha256
echo "$(<kubectl.sha256) kubectl" | sha256sum --check

chmod +x ./kubectl
sudo mv ./kubectl $(which kubectl)
