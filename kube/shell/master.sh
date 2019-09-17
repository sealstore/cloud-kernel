kubeadm init --config ../conf/kubeadm.yaml
mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config
kubectl taint nodes --all node-role.kubernetes.io/master-

echo "==================================================================="
echo "      安装常见问题见此链接评论区：http://sealyun.com/faq"
echo "      交流QQ群：98488045"
echo "      官网：www.sealyun.com"
echo "      更多版本：store.lameleg.com"
echo "==================================================================="
