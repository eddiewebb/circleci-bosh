# install Circle CI Server with BOSH

This assumes you have BOSH cli and running director, if not start with https://bosh.io/docs/quick-start/

# Setup

## Prerequesites
1) You need an elastic IP (ELB/ALB can be configured alternately)
2) You need security groups (see docs)
3) Optional: IAM Profile for builder images
4) Not yet supported:  AMI images for machine/remote docker (use replicated)

## Provide your Cloud Config
[aws-config.yml](aws-config.yml) is provided as a sample, you can edit that or consult https://bosh.io/docs/cloud-config/

**NOTE:** going forward CCI should provide these and use modifiers in the CLI.

## Edit your manifest
The provided [manifest.yml](manifest.yml) should do everyhting you need. Only edit if advise from support.

## BOSH Deploy
`bosh -e circle-director -d circle-static deploy ./manifest.yml`