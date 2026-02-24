local M = {}

-- https://tailwindcss.com/docs/aspect-ratio
M.aspect_ratio = {
  "aspect-auto",
  "aspect-square",
  "aspect-video",
}

-- https://tailwindcss.com/docs/box-decoration-break
M.box_decoration_break = {
  "box-decoration-clone",
  "box-decoration-slice",
}

-- https://tailwindcss.com/docs/box-sizing
M.box_sizing = {
  "box-border",
  "box-content",
}

-- https://tailwindcss.com/docs/break-after
M.break_after = {}
-- https://tailwindcss.com/docs/break-before
M.break_before = {}

local breaks = { "auto", "avoid", "all", "avoid-page", "page", "left", "right", "column" }
for _, breakk in ipairs(breaks) do
  table.insert(M.break_after, "break-after-" .. breakk)
  table.insert(M.break_before, "break-before-" .. breakk)
end

-- https://tailwindcss.com/docs/break-inside
M.break_inside = {
  "break-inside-auto",
  "break-inside-avoid",
  "break-inside-avoid-page",
  "break-inside-avoid-column",
}

-- https://tailwindcss.com/docs/clear
M.clear = { "clear-left", "clear-right", "clear-both", "clear-none", "clear-start", "clear-end" }

-- https://tailwindcss.com/docs/columns
M.columns = {
  "columns-3xs",
  "columns-2xs",
  "columns-xs",
  "columns-sm",
  "columns-md",
  "columns-lg",
  "columns-xl",
  "columns-2xl",
  "columns-3xl",
  "columns-4xl",
  "columns-5xl",
  "columns-6xl",
  "columns-7xl",
  "columns-auto",
}

-- https://tailwindcss.com/docs/display
M.display = {
  "hidden",
  "block",
  "inline-block",
  "flex",
  "grid",
  "inline",
  "contents",
  "flow-root",
  "inline-flex",
  "inline-grid",
  "table",
  "inline-table",
  "table-caption",
  "table-cell",
  "table-column",
  "table-column-group",
  "table-footer-group",
  "table-header-group",
  "table-row",
  "table-row-group",
  "list-item",
}

-- https://tailwindcss.com/docs/float
M.float = { "float-right", "float-left", "float-none", "float-start", "float-end" }

M.inset = {
  "inset-",
  "inset-x-",
  "inset-y-",
  "inset-t-",
  "inset-r-",
  "inset-b-",
  "inset-l-",
  "inset-s-",
  "inset-e-",
  "inset-bs-",
  "inset-be-",
}

-- https://tailwindcss.com/docs/isolation
M.isolation = { "isolate", "isolation-auto" }

-- https://tailwindcss.com/docs/object-fit
M.object_fit = { "object-contain", "object-cover", "object-fill", "object-none", "object-scale-down" }

-- https://tailwindcss.com/docs/object-position
M.object_position = {
  "object-top-left",
  "object-top",
  "object-top-right",
  "object-left",
  "object-center",
  "object-right",
  "object-bottom-left",
  "object-bottom",
  "object-bottom-right",
}

-- https://tailwindcss.com/docs/overflow
M.overflow = {
  "overflow-auto",
  "overflow-hidden",
  "overflow-clip",
  "overflow-visible",
  "overflow-scroll",
  "overflow-x-auto",
  "overflow-y-auto",
  "overflow-x-hidden",
  "overflow-y-hidden",
  "overflow-x-clip",
  "overflow-y-clip",
  "overflow-x-visible",
  "overflow-y-visible",
  "overflow-x-scroll",
  "overflow-y-scroll",
}

-- https://tailwindcss.com/docs/overscroll-behavior
M.overscroll_behavior = {
  "overscroll-auto",
  "overscroll-contain",
  "overscroll-none",
  "overscroll-y-auto",
  "overscroll-x-auto",
  "overscroll-y-contain",
  "overscroll-x-contain",
  "overscroll-y-none",
  "overscroll-x-none",
}

-- https://tailwindcss.com/docs/position
M.position = { "static", "fixed", "absolute", "relative", "sticky" }

-- https://tailwindcss.com/docs/top-right-bottom-left
M.sides = { "top-", "right-", "bottom-", "left-" }

-- https://tailwindcss.com/docs/visibility
M.visibility = { "visible", "invisible", "collapse" }

return M
