local M = {}

M.aspect_ratio = {
  "aspect-auto",
  "aspect-square",
  "aspect-video",
}

M.box_decoration = {
  "box-decoration-clone",
  "box-decoration-slice",
}

M.box_sizing = {
  "box-border",
  "box-content",
}

local breaks = { "auto", "avoid", "all", "avoid-page", "page", "left", "right", "column" }

M.break_after = {}
M.break_before = {}

for _, breakk in ipairs(breaks) do
  table.insert(M.break_after, "break-after-" .. breakk)
  table.insert(M.break_before, "break-before-" .. breakk)
end

M.break_inside = {
  "break-inside-auto",
  "break-inside-avoid",
  "break-inside-avoid-page",
  "break-inside-avoid-column",
}

M.clear = { "clear-left", "clear-right", "clear-both", "clear-none", "clear-start", "clear-end" }

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

M.isolation = { "isolate", "isolation-auto" }

M.object_fit = { "object-contain", "object-cover", "object-fill", "object-none", "object-scale-down" }

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

M.overscroll = {
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

M.position = { "static", "fixed", "absolute", "relative", "sticky" }

M.sides = { "top-", "right-", "bottom-", "left-" }

M.visibility = { "visible", "invisible", "collapse" }

return M
