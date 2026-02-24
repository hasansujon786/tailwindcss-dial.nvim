local M = {}

-- https://tailwindcss.com/docs/align-content
M.align_content = {
  "content-normal",
  "content-center",
  "content-start",
  "content-end",
  "content-between",
  "content-around",
  "content-evenly",
  "content-baseline",
  "content-stretch",
}

-- https://tailwindcss.com/docs/align-items
M.align_items = {
  "items-start",
  "items-end",
  "items-end-safe",
  "items-center",
  "items-center-safe",
  "items-baseline",
  "items-baseline-last",
  "items-stretch",
}

-- https://tailwindcss.com/docs/align-self
M.align_self = {
  "self-auto",
  "self-start",
  "self-end",
  "self-end-safe",
  "self-center",
  "self-center-safe",
  "self-stretch",
  "self-baseline",
  "self-baseline-last",
}

-- https://tailwindcss.com/docs/grid-column
M.col_span = {}
-- https://tailwindcss.com/docs/grid-row
M.row_span = {}

local spans = { "span", "start", "end" }

for _, span in ipairs(spans) do
  table.insert(M.col_span, "col-" .. span .. "-")
  table.insert(M.row_span, "row-" .. span .. "-")
end

-- https://tailwindcss.com/docs/flex-basis
M.flex_basis = {
  "basis-full",
  "basis-auto",
  "basis-3xs",
  "basis-2xs",
  "basis-xs",
  "basis-sm",
  "basis-md",
  "basis-lg",
  "basis-xl",
  "basis-2xl",
  "basis-3xl",
  "basis-4xl",
  "basis-5xl",
  "basis-6xl",
  "basis-7xl",
}

-- https://tailwindcss.com/docs/flex-direction
M.flex_direction = {
  "flex-row",
  "flex-row-reverse",
  "flex-col",
  "flex-col-reverse",
}

-- https://tailwindcss.com/docs/flex-wrap
M.flex_wrap = {
  "flex-nowrap",
  "flex-wrap",
  "flex-wrap-reverse",
}

-- https://tailwindcss.com/docs/gap
M.gap = { "gap-", "gap-x-", "gap-y-" }

-- https://tailwindcss.com/docs/grid-auto-flow
M.grid_auto_flow = {
  "grid-flow-row",
  "grid-flow-col",
  "grid-flow-dense",
  "grid-flow-row-dense",
  "grid-flow-col-dense",
}

local grid_auto = { "auto", "min", "max", "fr" }
-- https://tailwindcss.com/docs/grid-auto-columns
M.grid_auto_columns = {}
-- https://tailwindcss.com/docs/grid-auto-rows
M.grid_auto_rows = {}
for _, a in ipairs(grid_auto) do
  table.insert(M.grid_auto_columns, "auto-cols-" .. a)
  table.insert(M.grid_auto_rows, "auto-rows-" .. a)
end

-- https://tailwindcss.com/docs/justify-content
M.justify_content = {
  "justify-start",
  "justify-end",
  "justify-end-safe",
  "justify-center",
  "justify-center-safe",
  "justify-between",
  "justify-around",
  "justify-evenly",
  "justify-stretch",
  "justify-baseline",
  "justify-normal",
}

-- https://tailwindcss.com/docs/justify-items
M.justify_items = {
  "justify-items-start",
  "justify-items-end",
  "justify-items-end-safe",
  "justify-items-center",
  "justify-items-center-safe",
  "justify-items-stretch",
  "justify-items-normal",
}

-- https://tailwindcss.com/docs/justify-self
M.justify_self = {
  "justify-self-auto",
  "justify-self-start",
  "justify-self-center",
  "justify-self-center-safe",
  "justify-self-end",
  "justify-self-end-safe",
  "justify-self-stretch",
}

-- https://tailwindcss.com/docs/place-content
M.place_content = {
  "place-content-center",
  "place-content-center-safe",
  "place-content-start",
  "place-content-end",
  "place-content-end-safe",
  "place-content-between",
  "place-content-around",
  "place-content-evenly",
  "place-content-baseline",
  "place-content-stretch",
}

-- https://tailwindcss.com/docs/place-items
M.place_items = {
  "place-items-start",
  "place-items-end",
  "place-items-end-safe",
  "place-items-center",
  "place-items-center-safe",
  "place-items-stretch",
  "place-items-normal",
}

-- https://tailwindcss.com/docs/place-self
M.place_self = {
  "place-self-auto",
  "place-self-start",
  "place-self-center",
  "place-self-center-safe",
  "place-self-end",
  "place-self-end-safe",
  "place-self-stretch",
}

return M
