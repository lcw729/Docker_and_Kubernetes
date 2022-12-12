$ kubectl exec -it pod-reader -- /bin/bash
$ CA_CERT=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt 
$ TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token) 
$ curl --cacert $CA_CERT -H "Authorization: Bearer $TOKEN" "https://35.200.91.132/api/v1/pods/"
10.244.1.107