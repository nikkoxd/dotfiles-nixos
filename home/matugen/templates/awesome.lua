local palette = {
  <* for name, value in colors *>{{name}} = "{{value.default.hex}}",
  <* endfor *>
}

return palette
