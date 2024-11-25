#-------------------------------
# Install Safeline WAF
cd /opt
mkdir -p "/opt/safeline"
cd "/opt/safeline"
curl "https://raw.githubusercontent.com/cmndcntrlcyber/btpi-gate/refs/heads/main/safeline/compose.yaml" > "/opt/safeline/compose.yaml"
cd "/opt/safeline"
touch ".env"
echo "SAFELINE_DIR=/opt/safeline" >> ".env"
echo "IMAGE_TAG=latest" >> ".env"
echo "MGT_PORT=10443" >> ".env"
echo "POSTGRES_PASSWORD=`BTPI-N3xu5-P@55`" >> ".env"
echo "SUBNET_PREFIX=172.18.0" >> ".env"
echo "IMAGE_PREFIX=chaitin" >> ".env"
echo "RELEASE=lts" >> ".env"
docker compose up -d
docker exec safeline-mgt resetadmin
#--------------------------------