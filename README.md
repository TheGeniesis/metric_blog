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
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- Unix system (to run [makefile](https://www.gnu.org/software/make/manual/html_node/Introduction.html))

> Application wasn't tested on Windows

## Setup
### Installation
- Run `make init`

### Run application
- Setup environment: #repo od Kamila
- Run `make build-image`
- Run `make load-image-kind`
- Run `make deploy-on-k8s`
- Open `http://localhost` to check if works
- To generate some example traffic use [prepared stress tests project](https://github.com/TheGeniesis/metric_blog_stress_tests)

### Remove application
- Run `make remove`

## Development 
### Installation
- Run `make init-dev`

### Run application
- Run `make start-dev`
- Open `http://localhost` to check if works
