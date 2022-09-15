# Disable Swap
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo swapoff -a

# Letting iptables see bridged traffic
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sudo sysctl --system

# Disable firewalld
sudo systemctl stop firewalld
sudo systemctl disable firewalld


# Installing kubeadm, kubelet and kubectl
sudo apt update
sudo apt -y install curl apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update
sudo apt -y install vim git curl wget kubelet=1.22.0-00 kubeadm=1.22.0-00 kubectl=1.22.0-00 --allow-downgrades
sudo apt-mark hold kubelet kubeadm kubectl

kubectl version --client && kubeadm version
