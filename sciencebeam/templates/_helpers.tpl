{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sciencebeam-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "sciencebeam-chart.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "sciencebeam-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cermine.fullname" -}}
{{- printf "%s-%s" .Release.Name "cermine" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "grobid.fullname" -}}
{{- printf "%s-%s" .Release.Name "grobid" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "scienceparse_v1.fullname" -}}
{{- printf "%s-%s" .Release.Name "scienceparse-v1" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "scienceparse_v2.fullname" -}}
{{- printf "%s-%s" .Release.Name "scienceparse-v2" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
