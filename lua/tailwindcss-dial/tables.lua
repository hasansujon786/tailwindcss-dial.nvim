local M = {}

-- https://tailwindcss.com/docs/border-collapse
M.border_collapse = {
  "border-collapse",
  "border-separate",
}

-- https://tailwindcss.com/docs/border-spacing
M.border_spacing = {
  "border-spacing-",
  "border-spacing-x-",
  "border-spacing-y-",
}

-- https://tailwindcss.com/docs/table-layout
M.table_layout = {
  "table-auto",
  "table-fixed",
}

-- https://tailwindcss.com/docs/caption-side
M.caption_side = {
  "caption-side-top",
  "caption-side-bottom",
}

return M
