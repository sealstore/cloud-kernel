kubeadm init --config ../conf/kubeadm.yaml
mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config

kubectl apply -f ../conf/net/

kubectl taint nodes --all node-role.kubernetes.io/master-

kubectl apply -f ../conf/heapster/
kubectl apply -f ../conf/heapster/rbac

kubectl apply -f ../conf/dashboard

kubectl apply -f ../conf/prometheus

echo "==================================================================="
echo "      安装常见问题见此链接评论区：http://sealyun.com/pro/products/"
echo "      交流QQ群：98488045"
echo "      官网：www.sealyun.com"
echo "==================================================================="
