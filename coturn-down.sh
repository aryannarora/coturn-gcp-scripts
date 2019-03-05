PREFIX=$(awk '{for(i=1;i<=NF;i++) if ($i=="prefix:") print $(i+1)}' options.yaml)
ZONE=$(awk '{for(i=1;i<=NF;i++) if ($i=="zone:") print $(i+1)}' options.yaml)
PROJECT_ID=$(gcloud config list project | awk 'FNR ==2 { print $3 }')

echo "Deleting Coturn"

yes y | gcloud deployment-manager deployments delete $PREFIX-coturn

echo "Deleted"