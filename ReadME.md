<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Express Event Bus Demo</title>
</head>
<body>
    <h1>Express Event Bus Demo</h1>

    <p>This project demonstrates an event-driven architecture using an Express-based event bus. It consists of several microservices:</p>

    <ul>
        <li><strong>Posts Service:</strong> Responsible for managing posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <p>The Event Broker distributes events to other services, and all other services post events to the Event Broker.</p>

    <h2>Prerequisites</h2>

    <ul>
        <li>Kubernetes cluster installed on your PC.</li>
        <li>Terraform installed on your system.</li>
    </ul>

    <h2>Getting Started</h2>

    <ol>
        <li>Clone this repository.</li>
        <li>Ensure you have a Kubernetes cluster available and Terraform installed.</li>
        <li>Run <code>make apply</code> to install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</li>
        <li>Access the services through the Ingress controller.</li>
    </ol>

    <h2>Usage</h2>

    <h3><code>make apply</code></h3>

    <p>This command will install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</p>

    <h3><code>make destroy</code></h3>

    <p>This command will destroy all Kubernetes-related infrastructure provisioned by Terraform.</p>

    <h2>Services</h2>

    <ul>
        <li><strong>Posts Service:</strong> Manages posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <h2>Project Structure</h2>

    <ul>
        <li><code>/posts-service</code>: Contains the Posts Service.</li>
        <li><code>/query-service</code>: Contains the Query Service.</li>
        <li><code>/comments-service</code>: Contains the Comments Service.</li>
        <li><code>/event-broker-service</code>: Contains the Event Broker Service.</li>
        <li><code>/terraform</code>: Contains Terraform configurations for Kubernetes infrastructure provisioning.</li>
    </ul>

    <h2>Contributing</h2>

    <p>Feel free to contribute to this project by creating issues or submitting pull requests.</p>

    <h2>License</h2>

    <p>This project is licensed under the MIT License - see the <a href="LICENSE">LICENSE</a> file for details.</p>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Express Event Bus Demo</title>
</head>
<body>
    <h1>Express Event Bus Demo</h1>

    <p>This project demonstrates an event-driven architecture using an Express-based event bus. It consists of several microservices:</p>

    <ul>
        <li><strong>Posts Service:</strong> Responsible for managing posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <p>The Event Broker distributes events to other services, and all other services post events to the Event Broker.</p>

    <h2>Prerequisites</h2>

    <ul>
        <li>Kubernetes cluster installed on your PC.</li>
        <li>Terraform installed on your system.</li>
    </ul>

    <h2>Getting Started</h2>

    <ol>
        <li>Clone this repository.</li>
        <li>Ensure you have a Kubernetes cluster available and Terraform installed.</li>
        <li>Run <code>make apply</code> to install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</li>
        <li>Access the services through the Ingress controller.</li>
    </ol>

    <h2>Usage</h2>

    <h3><code>make apply</code></h3>

    <p>This command will install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</p>

    <h3><code>make destroy</code></h3>

    <p>This command will destroy all Kubernetes-related infrastructure provisioned by Terraform.</p>

    <h2>Services</h2>

    <ul>
        <li><strong>Posts Service:</strong> Manages posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <h2>Project Structure</h2>

    <ul>
        <li><code>/posts-service</code>: Contains the Posts Service.</li>
        <li><code>/query-service</code>: Contains the Query Service.</li>
        <li><code>/comments-service</code>: Contains the Comments Service.</li>
        <li><code>/event-broker-service</code>: Contains the Event Broker Service.</li>
        <li><code>/terraform</code>: Contains Terraform configurations for Kubernetes infrastructure provisioning.</li>
    </ul>

    <h2>Contributing</h2>

    <p>Feel free to contribute to this project by creating issues or submitting pull requests.</p>

    <h2>License</h2>

    <p>This project is licensed under the MIT License - see the <a href="LICENSE">LICENSE</a> file for details.</p>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Express Event Bus Demo</title>
</head>
<body>
    <h1>Express Event Bus Demo</h1>

    <p>This project demonstrates an event-driven architecture using an Express-based event bus. It consists of several microservices:</p>

    <ul>
        <li><strong>Posts Service:</strong> Responsible for managing posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <p>The Event Broker distributes events to other services, and all other services post events to the Event Broker.</p>

    <h2>Prerequisites</h2>

    <ul>
        <li>Kubernetes cluster installed on your PC.</li>
        <li>Terraform installed on your system.</li>
    </ul>

    <h2>Getting Started</h2>

    <ol>
        <li>Clone this repository.</li>
        <li>Ensure you have a Kubenretes installed and Terraform installed.</li>
        <li>Run <code>make apply</code> to install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</li>
        <li>Access the services through the Ingress controller.</li>
    </ol>

    <h2>Usage</h2>

    <h3><code>make apply</code></h3>

    <p>This command will install the Ingress-Nginx controller and provision all Kubernetes manifests for the services.</p>

    <h3><code>make destroy</code></h3>

    <p>This command will destroy all Kubernetes-related infrastructure provisioned by Terraform.</p>

    <h2>Services</h2>

    <ul>
        <li><strong>Posts Service:</strong> Manages posts.</li>
        <li><strong>Query Service:</strong> Handles queries related to posts.</li>
        <li><strong>Comments Service:</strong> Manages comments on posts.</li>
        <li><strong>Event-Broker Service:</strong> Distributes events among other services.</li>
    </ul>

    <h2>Project Structure</h2>

    <ul>
        <li><code>/post-service</code>: Contains the Posts Service.</li>
        <li><code>/query-service</code>: Contains the Query Service.</li>
        <li><code>/comments-service</code>: Contains the Comments Service.</li>
        <li><code>/event-broker</code>: Contains the Event Broker Service.</li>
        <li><code>/terraform</code>: Contains Terraform configurations for Kubernetes infrastructure provisioning.</li>
    </ul>

>
</body>
</html>
