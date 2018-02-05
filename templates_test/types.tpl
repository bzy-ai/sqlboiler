{{- $varNameSingular := .Table.Name | singular | camelCase | replaceReserved -}}
var (
	{{$varNameSingular}}DBTypes = map[string]string{{"{"}}{{.Table.Columns | columnDBTypes | makeStringMap}}{{"}"}}
	_ = bytes.MinRead
)
