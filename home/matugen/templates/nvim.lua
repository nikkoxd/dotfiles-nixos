local palette = {
	base00 = "{{colors.surface.dark.hex}}",
	base01 = "{{colors.surface_container_lowest.dark.hex}}",
	base02 = "{{colors.surface_container_high.dark.hex}}",
	base03 = "{{colors.surface_container_highest.dark.hex}}",
	base04 = "{{colors.surface_container_highest.light.hex}}",
	base05 = "{{colors.surface_container_high.light.hex}}",
	base06 = "{{colors.surface_container_lowest.light.hex}}",
	base07 = "{{colors.surface.light.hex}}",
	base08 = "{{colors.secondary.default.hex | set_lightness: 5.0}}",
	base09 = "{{colors.secondary.default.hex | set_lightness: 10.0}}",
	base0A = "{{colors.secondary.default.hex}}",
	base0B = "{{colors.primary.default.hex | set_lightness: 5.0}}",
	base0C = "{{colors.primary.default.hex | set_lightness: 10.0}}",
	base0D = "{{colors.primary.default.hex}}",
	base0E = "{{colors.tertiary.default.hex}}",
	base0F = "{{colors.tertiary.default.hex | set_lightness: 5.0}}",
}

return palette
