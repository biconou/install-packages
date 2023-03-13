
# Version intégration Linux Server
#sudo ARCH="amd64" GCLOUD_STACK_ID="523525" GCLOUD_API_KEY="eyJrIjoiNGE0OGIxZjE5ZjdlNWM5OTA0NWRkNjU4OTAwMDNlYzJiOWVkZDViYyIsIm4iOiJzdGFjay01MjM1MjUtZWFzeXN0YXJ0LWdjb20iLCJpZCI6NzgzNzQ4fQ==" GCLOUD_API_URL="https://integrations-api-eu-west.grafana.net" /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/grafana/agent/release/production/grafanacloud-install.sh)"

#sudo systemctl restart grafana-agent.service

# Version intégration Hosted Prometheus metrics 
# curl -O -L "https://github.com/grafana/agent/releases/latest/download/agent-linux-amd64.zip";
# unzip "agent-linux-amd64.zip";
# chmod a+x agent-linux-amd64;

sudo ARCH="amd64" GCLOUD_STACK_ID="523525" GCLOUD_API_KEY="eyJrIjoiNGE0OGIxZjE5ZjdlNWM5OTA0NWRkNjU4OTAwMDNlYzJiOWVkZDViYyIsIm4iOiJzdGFjay01MjM1MjUtZWFzeXN0YXJ0LWdjb20iLCJpZCI6NzgzNzQ4fQ==" GCLOUD_API_URL="https://integrations-api-eu-west.grafana.net" /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/grafana/agent/release/production/grafanacloud-install.sh)"

sudo cp configuration/grafana-agent.yaml /etc
sudo systemctl restart grafana-agent.service