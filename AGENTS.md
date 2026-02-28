# AGENTS.md

## Project Overview

Neovim plugin that extends [dial.nvim](https://github.com/monaqa/dial.nvim) to cycle through
TailwindCSS utility classes (e.g., `blue-100` → `blue-200`, `flex-row` → `flex-col`).
Written in Lua targeting LuaJIT (Neovim runtime). The only external dependency is `dial.nvim`.

Key files: `lua/tailwindcss-dial/init.lua` (public API: `augends()`, `setup(opts)`),
`colors.lua` (shared color/shade data), 16 category data modules (`backgrounds.lua`,
`borders.lua`, `effects.lua`, etc.), and `doc/tailwindcss-dial.txt` (vimdoc help).

## Build / Lint / Test Commands

### Formatting (StyLua)

```bash
stylua lua/               # Format all Lua files
stylua --check lua/       # Check formatting without writing
```

### Linting (lua-language-server)

Configuration is in `.luarc.json`. Recognized globals: `vim`, `Snacks`.

```bash
lua-language-server --check lua/
```

### Testing

There is no test suite. No test framework (plenary, busted, etc.) is configured.
If adding tests, the convention for Neovim plugins is to use
[plenary.nvim](https://github.com/nvim-lua/plenary.nvim) with test files in `tests/` using
`_spec.lua` suffix, or [mini.test](https://github.com/echasnovski/mini.test).

### Loading in Neovim (Manual Verification)

```bash
nvim --headless -c "lua require('tailwindcss-dial').augends()" -c "q"
```

## Code Style Guidelines

### Formatter: StyLua

All Lua code must conform to `stylua.toml`:

| Setting            | Value              |
|--------------------|--------------------|
| `column_width`     | 120                |
| `line_endings`     | Unix               |
| `indent_type`      | Spaces             |
| `indent_width`     | 2                  |
| `quote_style`      | AutoPreferDouble   |
| `call_parentheses` | Always             |

Run `stylua lua/` before committing.

### Module Pattern

Every Lua file follows this structure:

```lua
local M = {}
-- ... define fields on M ...
return M
```

### Imports

- Use `local mod = require("tailwindcss-dial.<module>")` at the top of the file.
- The only external require is `dial.augend`, done lazily inside `M.augends()` in `init.lua`.
- Shared color data: `local colors = require("tailwindcss-dial.colors")`.
- Never use `require` inside loops; require once at the top and reference the local.

### Naming Conventions

- **Module fields**: `snake_case` matching the TailwindCSS CSS property name
  (e.g., `M.bg_attachment`, `M.font_weight`, `M.border_radius_tl`).
- **Color-keyed fields**: dynamic keys like `M["bg_color_" .. color_name]`.
- **Local variables**: `snake_case` (e.g., `color_name`, `blend_modes`, `group_table`).
- **Module table**: always `M`.
- **File names**: lowercase with hyphens for multi-word category names
  (e.g., `flexbox-grid.lua`). Note: `transitions_animation.lua` uses an underscore—new files
  should prefer hyphens.

### Comments

- Use `--` single-line comments.
- Each augend group should be preceded by a URL comment linking to the relevant TailwindCSS
  docs page: `-- https://tailwindcss.com/docs/<property>`.
- Use `--- @return type` and `--- @param name type` for public API function annotations
  (EmmyLua / LuaCATS style).

### Data Module Pattern

Category modules (everything except `init.lua` and `colors.lua`) are declarative data files:

1. **Static lists**: Direct table literals — `M.font_family = { "font-sans", "font-serif", "font-mono" }`

2. **Generated lists with shared values**: Use `for` loops over shared data (colors, shades).
   ```lua
   for _, color_name in pairs(colors.names) do
     local group = {}
     for _, shade in pairs(colors.shades) do
       table.insert(group, "bg-" .. color_name .. "-" .. shade)
     end
     M["bg_color_" .. color_name] = group
   end
   ```

3. **Shared iteration for related groups**: Build multiple groups in a single loop when they
   share the same value set (e.g., `break_after`/`break_before`, `mix_blend_mode`/`bg_blend_mode`).

### Augend Types (word vs non-word)

In `init.lua`, augend groups are split into two categories:

- **`word = true`** (full class name match): for complete TailwindCSS class names
  like `flex`, `font-bold`, `bg-blue-500`.
- **`word = false`** (partial/prefix match): for prefix-based utilities where the class
  includes a numeric or arbitrary value suffix, like `p-`, `m-`, `gap-`, `top-`.

When adding a new augend group, determine whether it matches full class names or prefixes,
and add it to the corresponding list in `init.lua`.

### Error Handling

- Use `pcall` for requiring external dependencies that may not be loaded
  (see `init.lua:287` for `dial.config`).
- Fail silently rather than throwing errors—this is a Neovim plugin and must not break the
  editor if a dependency is missing.
- Validate user options defensively (check `type()`, handle nil, normalize strings vs tables).

### Adding a New TailwindCSS Category

1. Create `lua/tailwindcss-dial/<category>.lua` following the module pattern.
2. Add a comment with the TailwindCSS docs URL before each group.
3. Define augend groups as string arrays on `M`.
4. If the category involves colors, import `colors.lua` and generate per-color groups.
5. In `init.lua`:
   - Add `local <name> = require("tailwindcss-dial.<category>")` with the other imports.
   - Add each group to either `word_rules` or `non_word_rules` in `M.augends()`.

## Commit Message Convention

Follows [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <short description>
```

- **Types**: `feat`, `fix`, `refactor`, `docs`, `chore`, `test`
- Description is lowercase, no trailing period, present tense
- Examples: `feat: add border-spacing dials`, `fix: prefer ft option to filetype`,
  `docs: update config options usage`
