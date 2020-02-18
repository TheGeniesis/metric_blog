# Metric application
![PHP 7.4](https://img.shields.io/badge/PHP-7.4-green)
![SYMFONY 4,4](https://img.shields.io/badge/SYMFONY-4.4-green)

This application was created to show an example integration [Prometheus](http://prometheus.io) with [Symfony](https://symfony.com/) 4 Framework

Application has 5 endpoints:

| Method | Routing         | Description                |
|--------|-----------------|----------------------------|
| GET    | /example        | Endpoint to count          |
| POST   | /example        | Endpoint to count          |
| GET    | /second/example | Endpoint to count          |
| POST   | /second/example | Endpoint to count          |
| GET    | /metrics        | Get metrics for Prometheus |

## Pre-requirements
- [Docker](https://www.docker.com/)
- [Docker-compose](https://docs.docker.com/compose/)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [Task](https://taskfile.dev) (optional, you can run commands from `taskfile.yaml` manually)

> Application wasn't tested on Windows

## Setup
### Installation
- Run `task init`

### Run application
- Setup environment: #repo od Kamila
- Run `task start`
- Open `http://localhost` to check if works
- To generate some example traffic use [prepared stress tests project](https://github.com/TheGeniesis/metric_blog_stress_tests)

## Development 
### Installation
- Run `task init-dev`

### Run application
- Run `task start-dev`
- Open `http://localhost` to check if works

### Remove application
- Run `task remove-dev`
