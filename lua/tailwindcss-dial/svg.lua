local colors = require("tailwindcss-dial.colors")

local M = {}

-- https://tailwindcss.com/docs/fill
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "fill-" .. color_name .. "-" .. shade)
  end

  M["fill_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/stroke
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "stroke-" .. color_name .. "-" .. shade)
  end

  M["stroke_color_" .. color_name] = group
end

return M
