local colors = require("tailwindcss-dial.colors")

local M = {}

-- https://tailwindcss.com/docs/accent-color
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "accent-" .. color_name .. "-" .. shade)
  end

  M["accent_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/appearance
M.appearance = {
  "appearance-none",
  "appearance-auto",
}

-- https://tailwindcss.com/docs/caret-color
for _, color_name in ipairs(colors.names) do
  local group = {}
  for _, shade in ipairs(colors.shades) do
    table.insert(group, "caret-" .. color_name .. "-" .. shade)
  end

  M["caret_color_" .. color_name] = group
end

-- https://tailwindcss.com/docs/color-scheme
M.color_scheme = {
  "scheme-normal",
  "scheme-dark",
  "scheme-light",
  "scheme-light-dark",
  "scheme-only-dark",
  "scheme-only-light",
}

-- https://tailwindcss.com/docs/cursor
M.cursor = {
  "cursor-auto",
  "cursor-default",
  "cursor-pointer",
  "cursor-wait",
  "cursor-text",
  "cursor-move",
  "cursor-help",
  "cursor-not-allowed",
  "cursor-none",
  "cursor-context-menu",
  "cursor-progress",
  "cursor-cell",
  "cursor-crosshair",
  "cursor-vertical-text",
  "cursor-alias",
  "cursor-copy",
  "cursor-no-drop",
  "cursor-grab",
  "cursor-grabbing",
  "cursor-all-scroll",
  "cursor-col-resize",
  "cursor-row-resize",
  "cursor-n-resize",
  "cursor-e-resize",
  "cursor-s-resize",
  "cursor-w-resize",
  "cursor-ne-resize",
  "cursor-nw-resize",
  "cursor-se-resize",
  "cursor-sw-resize",
  "cursor-ew-resize",
  "cursor-ns-resize",
  "cursor-nesw-resize",
  "cursor-nwse-resize",
  "cursor-zoom-in",
  "cursor-zoom-out",
}

-- https://tailwindcss.com/docs/field-sizing
M.field_sizing = {
  "field-sizing-fixed",
  "field-sizing-content",
}

-- https://tailwindcss.com/docs/pointer-events
M.pointer_events = {
  "pointer-events-none",
  "pointer-events-auto",
}

-- https://tailwindcss.com/docs/resize
M.resize = {
  "resize-none",
  "resize",
  "resize-x",
  "resize-y",
}

-- https://tailwindcss.com/docs/scroll-behavior
M.scroll_behavior = {
  "scroll-auto",
  "scroll-smooth",
}

-- https://tailwindcss.com/docs/scroll-margin
M.scroll_margin = {
  "scroll-m-",
  "scroll-mx-",
  "scroll-my-",
  "scroll-mt-",
  "scroll-mr-",
  "scroll-mb-",
  "scroll-ml-",
  "scroll-ms-",
  "scroll-me-",
  "scroll-mbs-",
  "scroll-mbe-",
}

-- https://tailwindcss.com/docs/scroll-padding
M.scroll_padding = {
  "scroll-p-",
  "scroll-px-",
  "scroll-py-",
  "scroll-pt-",
  "scroll-pr-",
  "scroll-pb-",
  "scroll-pl-",
  "scroll-ps-",
  "scroll-pe-",
  "scroll-pbs-",
  "scroll-pbe-",
}

-- https://tailwindcss.com/docs/scroll-snap-align
M.scroll_snap_align = {
  "snap-start",
  "snap-end",
  "snap-center",
  "snap-align-none",
}

-- https://tailwindcss.com/docs/scroll-snap-stop
M.scroll_snap_stop = {
  "snap-normal",
  "snap-always",
}

-- https://tailwindcss.com/docs/scroll-snap-type
M.scroll_snap_type = {
  "snap-none",
  "snap-x",
  "snap-y",
  "snap-both",
  "snap-mandatory",
  "snap-proximity",
}

-- https://tailwindcss.com/docs/touch-action
M.touch_action = {
  "touch-auto",
  "touch-none",
  "touch-pan-x",
  "touch-pan-left",
  "touch-pan-right",
  "touch-pan-y",
  "touch-pan-up",
  "touch-pan-down",
  "touch-pinch-zoom",
  "touch-manipulation",
}

-- https://tailwindcss.com/docs/user-select
M.user_select = {
  "select-none",
  "select-text",
  "select-all",
  "select-auto",
}

-- https://tailwindcss.com/docs/will-change
M.will_change = {
  "will-change-auto",
  "will-change-scroll",
  "will-change-contents",
  "will-change-transform",
}

return M
