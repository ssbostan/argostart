{{- define "name" -}}
{{- default (printf "%s-%s" .Chart.Name .Release.Name ) .Values.overrideName -}}
{{- end -}}
