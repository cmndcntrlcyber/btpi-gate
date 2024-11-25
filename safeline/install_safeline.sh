#-------------------------------
# Install Safeline WAF
cd /opt
mkdir -p "/data/safeline"
cd "/data/safeline"
wget "https://waf.chaitin.com/release/latest/compose.yaml"
cd "/data/safeline"
touch ".env"
echo "SAFELINE_DIR=/data/safeline" >> ".env"
echo "IMAGE_TAG=latest" >> ".env"
echo "MGT_PORT=10443" >> ".env"
echo "POSTGRES_PASSWORD= `BTPI-N3xu5-P@55`" >> ".env"
echo "SUBNET_PREFIX=172.18.0" >> ".env"
echo "IMAGE_PREFIX=chaitin" >> ".env"
echo "RELEASE=lts" >> ".env"
docker compose up -d
docker exec safeline-mgt resetadmin
#--------------------------------