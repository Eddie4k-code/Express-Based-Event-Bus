#Comment Service Deployment
resource "kubectl_manifest" "query" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: query
spec:
  replicas: 2
  selector:
    matchLabels:
      app: query
  template:
    metadata:
      labels:
        app: query
    spec:
      containers:
        - name: query
          image: eddie1322/query:latest
YAML
}

resource "kubectl_manifest" "query-service" {
  yaml_body = <<YAML
apiVersion: v1
kind: Service
metadata:
  name: query-cluster-ip-srv
spec:
  type: NodePort
  selector:
    app: query
  ports:
    - name: query
      protocol: TCP
      port: 4003
      targetPort: 4003
YAML
}