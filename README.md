# AWS secrets manager UI

## Install from terraform

```
resource "kubernetes_namespace" "aws_secrets_manager_ui" {
  metadata {
    name = "aws-secrets-manager-ui"
  }
}

resource "helm_release" "aws_secrets_manager_ui" {
  name       = "aws-secrets-manager-ui"
  chart      = "aws-secrets-manager-ui-helm-chart"
  repository = "https://thuc.space/awssecretsmanagerui-helm-chart/"
  namespace  = kubernetes_namespace.aws_secrets_manager_ui.metadata[0].name

  set {
    name  = "env.AWS_ACCESS_KEY_ID"
    value = ""
  }

  set {
    name  = "env.AWS_SECRET_ACCESS_KEY"
    value = ""
  }

}
```

## More detail variable environments

https://github.com/ledongthuc/awssecretsmanagerui
