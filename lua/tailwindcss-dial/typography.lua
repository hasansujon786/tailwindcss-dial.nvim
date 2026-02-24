local colors = require("tailwindcss-dial.colors")

local M = {}

-- https://tailwindcss.com/docs/color
for _, color_name in pairs(colors.names) do
  local group = {}
  for _, shade in pairs(colors.shades) do
    table.insert(group, "text-" .. color_name .. "-" .. shade)
  end

  M["color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/font-family
M.font_family = {
  "font-sans",
  "font-serif",
  "font-mono",
}

-- https://tailwindcss.com/docs/font-size
M.font_size = {
  "text-xs",
  "text-sm",
  "text-base",
  "text-lg",
  "text-xl",
  "text-2xl",
  "text-3xl",
  "text-4xl",
  "text-5xl",
  "text-6xl",
  "text-7xl",
  "text-8xl",
  "text-9xl",
}

-- https://tailwindcss.com/docs/font-smoothing
M.font_smoothing = { "antialiased", "subpixel-antialiased" }

-- https://tailwindcss.com/docs/font-style
M.font_style = { "italic", "not-italic" }

-- https://tailwindcss.com/docs/font-stretch
M.font_stretch = {
  "font-stretch-ultra-condensed",
  "font-stretch-extra-condensed",
  "font-stretch-condensed",
  "font-stretch-semi-condensed",
  "font-stretch-normal",
  "font-stretch-semi-expanded",
  "font-stretch-expanded",
  "font-stretch-extra-expanded",
  "font-stretch-ultra-expanded",
}

-- https://tailwindcss.com/docs/font-variant-numeric
M.font_variant_numeric = {
  "normal-nums",
  "ordinal",
  "slashed-zero",
  "lining-nums",
  "oldstyle-nums",
  "proportional-nums",
  "tabular-nums",
  "diagonal-fractions",
  "stacked-fractions",
}

-- https://tailwindcss.com/docs/font-weight
M.font_weight = {
  "font-thin",
  "font-extralight",
  "font-light",
  "font-normal",
  "font-medium",
  "font-semibold",
  "font-bold",
  "font-extrabold",
  "font-black",
}

M.line_height = {
  "leading-none",
  "leading-tight",
  "leading-snug",
  "leading-normal",
  "leading-relaxed",
  "leading-loose",
}

-- https://tailwindcss.com/docs/letter-spacing
M.letter_spacing = {
  "tracking-tighter",
  "tracking-tight",
  "tracking-normal",
  "tracking-wide",
  "tracking-wider",
  "tracking-widest",
}

-- https://tailwindcss.com/docs/list-style-position
M.list_style_position = { "list-inside", "list-outside" }

-- https://tailwindcss.com/docs/list-style-type
M.list_style_type = {
  "list-none",
  "list-disc",
  "list-decimal",
}

-- https://tailwindcss.com/docs/text-align
M.text_align = { "text-left", "text-center", "text-right", "text-justify", "text-start", "text-end" }

-- https://tailwindcss.com/docs/text-decoration-color
for _, color_name in pairs(colors.names) do
  local group = {}
  for _, shade in pairs(colors.shades) do
    table.insert(group, "decoration-" .. color_name .. "-" .. shade)
  end

  M["decoration_" .. color_name] = group
end

-- https://tailwindcss.com/docs/text-decoration-line
M.text_decoration_line = {
  "underline",
  "overline",
  "line-through",
  "no-underline",
}

-- https://tailwindcss.com/docs/text-decoration-style
M.text_decoration_style = {
  "decoration-solid",
  "decoration-double",
  "decoration-dotted",
  "decoration-dashed",
  "decoration-wavy",
}

-- https://tailwindcss.com/docs/text-transform
M.text_transform = { "uppercase", "lowercase", "capitalize", "normal-case" }

-- https://tailwindcss.com/docs/text-overflow
M.text_overflow = { "truncate", "text-ellipsis", "text-clip" }

-- https://tailwindcss.com/docs/text-wrap
M.text_wrap = { "text-wrap", "text-nowrap", "text-balance", "text-pretty" }

-- https://tailwindcss.com/docs/vertical-align
M.vertical_align = {
  "align-baseline",
  "align-top",
  "align-middle",
  "align-bottom",
  "align-text-top",
  "align-text-bottom",
}

-- https://tailwindcss.com/docs/white-space
M.white_space = {
  "whitespace-normal",
  "whitespace-nowrap",
  "whitespace-pre",
  "whitespace-pre-line",
  "whitespace-pre-wrap",
  "whitespace-break-spaces",
}

-- https://tailwindcss.com/docs/word-break
M.word_break = { "break-normal", "break-all", "break-keep" }

-- https://tailwindcss.com/docs/overflow-wrap
M.overflow_wrap = { "wrap-break-word", "wrap-anywhere", "wrap-normal" }

-- https://tailwindcss.com/docs/hyphens
M.hyphens = { "hyphens-none", "hyphens-manual", "hyphens-auto" }

return M
