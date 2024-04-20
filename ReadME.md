# Express Event Bus Demo

This project demonstrates an event-driven architecture using an Express-based event bus. It consists of several microservices:

- **Posts Service:** Responsible for managing posts.
- **Query Service:** Handles queries related to posts.
- **Comments Service:** Manages comments on posts.
- **Event-Broker Service:** Distributes events among other services.

The Event Broker distributes events to other services, and all other services post events to the Event Broker.

## Prerequisites

- Kubernetes installed on your system.
- Terraform installed on your system.

## Getting Started

1. Clone this repository.
2. Ensure you have a Kubernetes installed and Terraform installed.
3. Run `make apply` to install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.
4. Access the services through the Ingress controller.

## Usage

### `make apply`

This command will install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.

### `make destroy`

This command will destroy all Kubernetes-related infrastructure provisioned by Terraform.

## Services

- **Posts Service:** Manages posts.
- **Query Service:** Handles queries related to posts.
- **Comments Service:** Manages comments on posts.
- **Event-Broker Service:** Distributes events among other services.

## Nginx Routes
- **localhost/posts/create:** Reaches the post-service to create a new post
- **localhost/posts:** Reaches the query-service to query posts
- **localhost/posts/comments:** Reaches the comment-service for creating comments

## Project Structure

- `/post-service`: Contains the Posts Service.
- `/query-service`: Contains the Query Service.
- `/comments-service`: Contains the Comments Service.
- `/event-broker`: Contains the Event Broker Service.
- `/terraform`: Contains Terraform configurations for Kubernetes infrastructure provisioning.
