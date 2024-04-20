# Comment Service Deployment
resource "kubectl_manifest" "ingress-srv" {
  yaml_body = <<YAML
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ingress-srv
  annotations:
    nginx.ingress.kubernetes.io/use-regex: 'true'
spec:
  ingressClassName: nginx
  rules:
    - http:
        paths:
          - path: /posts/create
            pathType: Prefix
            backend:
              service:
                name: posts-cluster-ip-srv
                port:
                  number: 4000
          - path: /posts
            backend:
              service:
                name: query-cluster-ip-srv
                port:
                  number: 4003
          - path: /posts/?(.*)/comments
            backend:
              service:
                name: comments-cluster-ip-srv
                port:
                  number: 4001
YAML
}


