# Comment Service Deployment
resource "kubectl_manifest" "ingress-srv" {
  yaml_body = <<YAML
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ingress-srv
spec:
  ingressClassName: nginx
  rules:
    - http:
        paths:
          - path: /posts
            pathType: Prefix
            backend:
              service:
                name: posts-cluster-ip-srv
                port:
                  number: 4000
YAML
}


