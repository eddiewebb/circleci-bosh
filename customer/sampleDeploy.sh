

## Setup AWS envronment
bosh -e circle update-cloud-config aws-config.yml \
-v internal_cidr=10.0.10.0/24 \
-v internal_gw=10.0.10.1 \
-v internal_dns=[10.0.10.2,8.8.8.8] \
-v region=us-east-2 \
-v az=us-east-2a \
-v default_key_name=eddies \
-v default_security_groups=[sg-67e4fb0c,eddies-_services_sg, eddies-_users_sg] \
-v circle_subnet=subnet-b2f092da \
-v builder_iam_profile=profile-id-123



## Deploy Circle CI
bosh -e circle deploy manifest.yml \
-v frontend_ip=18.221.140.32
