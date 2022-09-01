local aurora = {}
local colors = {
  black = "#141425",
  blue = "#7aa2f7",
  green = "#9ece6a",
  yellow = "#e0af68",
  red = "#f7768e",
  purple = "#ad8ee6",
  magenta = "#9e71cf",
  bg_gutter = '#443454',
  fg_statusline = '#a9b1d6',
  bg_statusline = '#232433',
  fg_sidebar = '#a9b1d6',
}

aurora.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.bg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

aurora.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.bg_gutter, fg = colors.green },
}

aurora.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.bg_gutter, fg = colors.yellow },
}

aurora.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.bg_gutter, fg = colors.magenta },
}

aurora.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.bg_gutter, fg = colors.red },
}

aurora.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.bg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.bg_gutter },
}

for _, mode in pairs(aurora) do
  mode.a.gui = "bold"
end

return aurora
