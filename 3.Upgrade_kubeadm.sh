apt-mark unhold kubeadm && \
apt-get update && apt-get install -y kubeadm=$1 && \
apt-mark hold kubeadm

kubeadm version
kubeadm upgrade plan

