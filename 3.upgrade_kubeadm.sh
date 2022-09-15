apt-mark unhold kubeadm && \
apt-get update && apt-get install -y kubeadm=$1 --allow-downgrades && \
apt-mark hold kubeadm

kubeadm version
kubeadm upgrade plan --ignore-preflight-errors=CoreDNSUnsupportedPlugins,CoreDNSMigration

