oc project battleships-scoring 2> /dev/null || oc new-project battleships-scoring

oc new-app quay.io/redhatdemo/2021-scoring-service --name="scoring-service" --as-deployment-config=true --env="QUARKUS_INFINISPAN_CLIENT_SERVER_LIST=datagrid.datagrid.svc.cluster.local:11222"
oc apply -f backend/scoring-route.yaml