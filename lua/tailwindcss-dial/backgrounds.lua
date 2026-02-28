local colors = require("tailwindcss-dial.colors")

local M = {}

-- https://tailwindcss.com/docs/background-attachment
M.bg_attachment = { "bg-fixed", "bg-local", "bg-scroll" }

-- https://tailwindcss.com/docs/background-clip
M.bg_clip = { "bg-clip-border", "bg-clip-padding", "bg-clip-content", "bg-clip-text" }

-- https://tailwindcss.com/docs/background-color
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "bg-" .. color_name .. "-" .. shade)
  end

  M["bg_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/background-image
M.bg_image = {
  "bg-linear-to-t",
  "bg-linear-to-tr",
  "bg-linear-to-r",
  "bg-linear-to-br",
  "bg-linear-to-b",
  "bg-linear-to-bl",
  "bg-linear-to-l",
  "bg-linear-to-tl",
}

-- https://tailwindcss.com/docs/background-origin
M.bg_origin = { "bg-origin-border", "bg-origin-padding", "bg-origin-content" }

-- https://tailwindcss.com/docs/background-position
M.bg_position = {
  "bg-top-left",
  "bg-top",
  "bg-top-right",
  "bg-left",
  "bg-center",
  "bg-right",
  "bg-bottom-left",
  "bg-bottom",
  "bg-bottom-right",
}

-- https://tailwindcss.com/docs/background-repeat
M.bg_repeat = {
  "bg-repeat",
  "bg-repeat-x",
  "bg-repeat-y",
  "bg-repeat-space",
  "bg-repeat-round",
  "bg-no-repeat",
}

-- https://tailwindcss.com/docs/background-size
M.bg_size = {
  "bg-auto",
  "bg-cover",
  "bg-contain",
}

return M
