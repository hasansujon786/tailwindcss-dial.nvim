local colors = require("tailwindcss-dial.colors")

local M = {}

-- https://tailwindcss.com/docs/box-shadow
M.box_shadow = {
  "shadow-none",
  "shadow-2xs",
  "shadow-xs",
  "shadow-sm",
  "shadow-md",
  "shadow-lg",
  "shadow-xl",
  "shadow-2xl",
}

-- https://tailwindcss.com/docs/box-shadow-color
for _, color_name in pairs(colors.names) do
  local group = {}
  for _, shade in pairs(colors.shades) do
    table.insert(group, "box-shadow-" .. color_name .. "-" .. shade)
  end

  M["box_shadow_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/text-shadow
M.text_shadow = {
  "text-shadow-2xs",
  "text-shadow-xs",
  "text-shadow-sm",
  "text-shadow-md",
  "text-shadow-lg",
  "text-shadow-none",
}

-- https://tailwindcss.com/docs/text-shadow-color
for _, color_name in pairs(colors.names) do
  local group = {}
  for _, shade in pairs(colors.shades) do
    table.insert(group, "text-shadow-" .. color_name .. "-" .. shade)
  end

  M["text_shadow_color_" .. color_name] = group
end

local blend_modes = {
  "normal",
  "multiply",
  "screen",
  "overlay",
  "darken",
  "lighten",
  "color-dodge",
  "color-burn",
  "hard-light",
  "soft-light",
  "difference",
  "exclusion",
  "hue",
  "saturation",
  "color",
  "luminosity",
  "plus-lighter",
  "plus-darker",
}

-- https://tailwindcss.com/docs/mix-blend-mode
M.mix_blend_mode = {}
-- https://tailwindcss.com/docs/background-blend-mode
M.bg_blend_mode = {}
for _, mode in ipairs(blend_modes) do
  table.insert(M.mix_blend_mode, "mix-blend-" .. mode)
  table.insert(M.bg_blend_mode, "bg-blend-" .. mode)
end

-- https://tailwindcss.com/docs/mask-clip
M.mask_clip = {
  "mask-clip-border",
  "mask-clip-padding",
  "mask-clip-content",
  "mask-clip-text",
}

-- https://tailwindcss.com/docs/mask-composite
M.mask_composite = {
  "mask-composite-auto",
  "mask-composite-subtract",
  "mask-composite-intersect",
  "mask-composite-exclude",
  "mask-composite-add",
}

-- https://tailwindcss.com/docs/mask-mode
M.mask_mode = {
  "mask-mode-alpha",
  "mask-mode-luminance",
  "mask-match",
}

-- https://tailwindcss.com/docs/mask-origin
M.mask_origin = {
  "mask-origin-border",
  "mask-origin-padding",
  "mask-origin-content",
  "mask-origin-fill",
  "mask-origin-stroke",
  "mask-origin-view",
}

-- https://tailwindcss.com/docs/mask-position
M.mask_position = {
  "mask-position-top-left",
  "mask-position-top",
  "mask-position-top-right",
  "mask-position-left",
  "mask-position-center",
  "mask-position-right",
  "mask-position-bottom-left",
  "mask-position-bottom",
  "mask-position-bottom-right",
}

-- https://tailwindcss.com/docs/mask-repeat
M.mask_repeat = {
  "mask-repeat",
  "mask-repeat-x",
  "mask-repeat-y",
  "mask-repeat-space",
  "mask-repeat-round",
  "mask-no-repeat",
}

-- https://tailwindcss.com/docs/mask-size
M.mask_size = {
  "mask-auto",
  "mask-cover",
  "mask-contain",
}

-- https://tailwindcss.com/docs/mask-type
M.mask_type = {
  "mask-type-luminance",
  "mask-type-alpha",
}

return M
