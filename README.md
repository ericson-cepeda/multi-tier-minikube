# Generic Service

## Deployment

Multi-tier (data, application) deployment using ansible, minikube, kubeless, docker-compose and serverless framework dividing the application in 2 parts: FaaS and RESTFul API.

## TODO

* Handle helm charts errors
* Abstract helm charts values as YAML descriptors
    * Create MySQL databases
    * Define Elasticsearch cluster
* Define functional liveness probes
* Define functional Slack integrations
* Isolate services, deployments and namespaces descriptors
* Abstract SOC services as git submodules
* Create CI pipeline with CircleCI
    * Create image releases and latest versions per branch
* Distribute tiers across isolated clusters or instance groups