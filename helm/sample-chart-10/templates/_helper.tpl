
{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

{{- define "startupConf" -}}
release={{- .Release.Name }}
chart={{- .Chart.Version }}
version={{- .Chart.Version }}
{{- end -}}

{{- define "startupArgs" -}}
--release {{- .Release.Name -}}
--chart {{- .Chart.Version -}}
--version {{- .Chart.Version -}}
{{- end -}}
