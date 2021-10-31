# AWS secrets manager UI

## Install with terraform

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

  set {
    name  = "env.HOST"
    value = ""
  }

  set {
    name  = "env.PORT"
    value = ""
  }

  set {
    name  = "env.FILTER_NAMES"
    value = ""
  }

  set {
    name  = "env.AUTH_ENABLED"
    value = ""
  }

  set {
    name  = "env.AUTH_TYPE"
    value = ""
  }

  set {
    name  = "env.AUTH_ACCOUNTS"
    value = ""
  }

  set {
    name  = "env.JWT_SIGNATURE_KEY"
    value = ""
  }

  set {
    name  = "env.JWT_EXPIRY_TIME"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_APP_NAME"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_REGION"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_CLIENT_ID"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_CLIENT_SECRET"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_REDIRECT_URL"
    value = ""
  }

  set {
    name  = "env.AWS_COGNITO_ALLOWED_EMAILS"
    value = ""
  }

}
```
