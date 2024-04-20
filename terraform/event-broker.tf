#Event-Broker Service Deployment
resource "kubectl_manifest" "event-broker" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: event-broker
spec:
  replicas: 2
  selector:
    matchLabels:
      app: event-broker
  template:
    metadata:
      labels:
        app: event-broker
    spec:
      containers:
        - name: event-broker
          image: eddie1322/event-broker:latest
YAML
}

resource "kubectl_manifest" "event-broker-service" {
  yaml_body = <<YAML
apiVersion: v1
kind: Service
metadata:
  name: event-broker-srv
spec:
  type: ClusterIP
  selector:
    app: event-broker
  ports:
    - name: event-broker
      protocol: TCP
      port: 4005
      targetPort: 4005
YAML
}


