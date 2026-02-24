local M = {}

-- https://tailwindcss.com/docs/backface-visibility
M.backface_visibility = {
  "backface-visible",
  "backface-hidden",
}

-- https://tailwindcss.com/docs/perspective
M.perspective = {
  "perspective-dramatic",
  "perspective-near",
  "perspective-normal",
  "perspective-midrange",
  "perspective-distant",
  "perspective-none",
}

-- https://tailwindcss.com/docs/perspective-origin
M.perspective_origin = {
  "perspective-origin-center",
  "perspective-origin-top",
  "perspective-origin-top-right",
  "perspective-origin-right",
  "perspective-origin-bottom-right",
  "perspective-origin-bottom",
  "perspective-origin-bottom-left",
  "perspective-origin-left",
  "perspective-origin-top-left",
}

-- https://tailwindcss.com/docs/rotate
M.rotate = {
  "rotate-",
  "rotate-x-",
  "rotate-y-",
  "rotate-z-",
}

-- https://tailwindcss.com/docs/scale
M.scale = {
  "scale-",
  "scale-x-",
  "scale-y-",
}

-- https://tailwindcss.com/docs/skew
M.skew = {
  "skew-",
  "skew-x-",
  "skew-y-",
}

-- https://tailwindcss.com/docs/transform
M.transform = { "transform", "transform-gpu", "transform-none" }

-- https://tailwindcss.com/docs/transform-origin
M.transform_origin = {
  "origin-center",
  "origin-top",
  "origin-top-right",
  "origin-right",
  "origin-bottom-right",
  "origin-bottom",
  "origin-bottom-left",
  "origin-left",
  "origin-top-left",
}

-- https://tailwindcss.com/docs/transform-style
M.transform_style = { "transform-flat", "transform-3d" }

-- https://tailwindcss.com/docs/translate
M.translate = {
  "translate-",
  "translate-x-",
  "translate-y-",
  "translate-z-",
}

return M
