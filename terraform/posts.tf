#Posts Service Deployment and NodePort Definition.
resource "kubectl_manifest" "posts" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: posts
spec:
  replicas: 2
  selector:
    matchLabels:
      app: posts
  template:
    metadata:
      labels:
        app: posts
    spec:
      containers:
        - name: posts
          image: eddie1322/posts:latest
YAML
}

resource "kubectl_manifest" "posts-srv" {
  yaml_body = <<YAML
apiVersion: v1
kind: Service
metadata:
  name: posts-cluster-ip-srv
spec:
  type: ClusterIP
  selector:
    app: posts
  ports:
    - name: posts
      protocol: TCP
      port: 4000
      targetPort: 4000
YAML
}