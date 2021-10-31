{{- define "awssecretsmanagerui-helm-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "awssecretsmanagerui-helm-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "awssecretsmanagerui-helm-chart.labels" -}}
helm.sh/chart: {{ include "awssecretsmanagerui-helm-chart.chart" . }}
{{ include "awssecretsmanagerui-helm-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "awssecretsmanagerui-helm-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "awssecretsmanagerui-helm-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
