#Comment Service Deployment
resource "kubectl_manifest" "comments" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: comments
spec:
  replicas: 2
  selector:
    matchLabels:
      app: comments
  template:
    metadata:
      labels:
        app: comments
    spec:
      containers:
        - name: comments
          image: eddie1322/comments:latest
YAML
}

resource "kubectl_manifest" "comments-service" {
  yaml_body = <<YAML
apiVersion: v1
kind: Service
metadata:
  name: comments-cluster-ip-srv
spec:
  type: ClusterIP
  selector:
    app: comments
  ports:
    - name: comments
      protocol: TCP
      port: 4001
      targetPort: 4001
YAML
}