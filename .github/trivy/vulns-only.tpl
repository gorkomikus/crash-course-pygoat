{{- range .Results }}
  {{- if .Vulnerabilities }}
Target: {{ .Target }}
{{- range .Vulnerabilities }}
- {{ .Severity }} {{ .VulnerabilityID }} ({{ .PkgName }} {{ .InstalledVersion }} -> {{ .FixedVersion }}): {{ .Title }}
{{- end }}

  {{- end }}
{{- end }}
