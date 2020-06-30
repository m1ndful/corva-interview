# Corva API Deployment guide

## Infrastructure setup

In order to provision infrastructure for this project, please issue following command:

```
HOSTED_ZONE_ID=YOUR_AWS_HOSTED_ZONE_ID DOMAIN_NAME=YOUR_ZONE_DOMAIN_NAME ./provision.sh
```

This will deploy AWS infrastructure with ECS Cluster hosted on EC2 instances located in private subnets and ALB for accepting external traffic.

Core components used:

- VPC
- Security Groups
- Internet and NAT gateways
- EC2 ASG as a compute platform spread among 2 availability zones
- ECR Registry for hosting docker images
- ECS Cluster as a docker orchestration service
- ECS Service with task allocation spread between availability zones
- ALB and Route53 for external endpoints setup

## CI/CD

TravisCI was used as a CI/CD service.
Please refer to `.travis.yml` for details.

### Deployments

Deployments being done by performing CloudFormation stack update and passing new image version as a parameter.

Application supports `/version` route, which contains **build number** and **build commit**.

```
$ curl http://lb-endpoint.region.elb.amazonaws.com/version
{"Build commit":"hashid","Build number":"1"}
```