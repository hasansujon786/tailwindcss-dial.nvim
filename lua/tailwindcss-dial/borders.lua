local colors = require("tailwindcss-dial.colors")

local M = {}

local border_radius_values = {
  "none",
  "xs",
  "sm",
  "md",
  "lg",
  "xl",
  "2xl",
  "3xl",
  "4xl",
  "full",
}

-- https://tailwindcss.com/docs/border-radius
M.border_radius = {}
M.border_radius_t = {}
M.border_radius_b = {}
M.border_radius_l = {}
M.border_radius_r = {}
M.border_radius_tl = {}
M.border_radius_tr = {}
M.border_radius_bl = {}
M.border_radius_br = {}

for _, value in ipairs(border_radius_values) do
  table.insert(M.border_radius, "rounded-" .. value)
  table.insert(M.border_radius_t, "rounded-t-" .. value)
  table.insert(M.border_radius_b, "rounded-b-" .. value)
  table.insert(M.border_radius_l, "rounded-l-" .. value)
  table.insert(M.border_radius_r, "rounded-r-" .. value)
  table.insert(M.border_radius_tl, "rounded-tl-" .. value)
  table.insert(M.border_radius_tr, "rounded-tr-" .. value)
  table.insert(M.border_radius_bl, "rounded-bl-" .. value)
  table.insert(M.border_radius_br, "rounded-br-" .. value)
end

-- https://tailwindcss.com/docs/border-width
M.border_width = {
  "border",
  "border-x",
  "border-y",
  "border-t",
  "border-r",
  "border-b",
  "border-l",
  "border-s",
  "border-e",
  "border-bs",
  "border-be",
}

-- https://tailwindcss.com/docs/border-color
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "border-" .. color_name .. "-" .. shade)
  end

  M["border_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/border-style
M.border_style = {
  "border-solid",
  "border-dashed",
  "border-dotted",
  "border-double",
  "border-hidden",
  "border-none",
}

-- https://tailwindcss.com/docs/border-style
M.divide_style = {
  "divide-solid",
  "divide-dashed",
  "divide-dotted",
  "divide-double",
  "divide-hidden",
  "divide-none",
}

-- https://tailwindcss.com/docs/outline-color
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "outline-" .. color_name .. "-" .. shade)
  end

  M["outline_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/outline-style
M.outline_style = {
  "outline-solid",
  "outline-dashed",
  "outline-dotted",
  "outline-double",
  "outline-none",
  "outline-hidden",
}

return M
