#!/usr/bin/env bash
echo "*** installing docker ***"
sudo apt-get update -qq > /dev/null 2>&1
sudo apt-get -y install docker.io htop
sudo usermod -aG docker vagrant
echo "*** install kubectl ***"
curl -sLO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
echo "*** install rke ***"
sudo curl -sL "https://github.com/rancher/rke/releases/download/v0.3.0/rke_linux-amd64" -o /usr/local/bin/rke
sudo chmod +x /usr/local/bin/rke
echo "*** spining up the cluster ***"
cd /vagrant
rke up
mkdir /home/vagrant/.kube
cp kube_config_cluster.yml /home/vagrant/.kube/config
chown vagrant:vagrant /home/vagrant/.kube/config
kubectl get nodes -o wide
kubectl cluster-info
echo "done. 😎"