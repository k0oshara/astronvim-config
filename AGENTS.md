# Repository Guidelines

## Project Structure & Module Organization

This repository is an AstroNvim v6 user configuration written in Lua.

- `init.lua` bootstraps `lazy.nvim`; keep changes here minimal.
- `lua/lazy_setup.lua` loads AstroNvim, community imports, and local plugin specs.
- `lua/community.lua` selects AstroCommunity packs and integrations.
- `lua/plugins/*.lua` contains one focused plugin or AstroNvim component override per file.
- `lua/polish.lua` is reserved for setup that cannot live in a plugin spec.
- `lazy-lock.json` records resolved plugin revisions.
- `.stylua.toml`, `selene.toml`, `.luarc.json`, and `.neoconf.json` configure Lua tooling.

There is currently no separate test or asset directory.

## Build, Test, and Development Commands

This configuration has no build step. From this directory, use:

```sh
NVIM_APPNAME=astronvim nvim
stylua --check .
selene .
NVIM_APPNAME=astronvim nvim --headless +qa
```

The first command launches the configuration in its expected config namespace. StyLua checks formatting, Selene performs Neovim-aware linting, and the headless command catches startup and module-loading errors. Use `stylua .` to apply formatting. Inside Neovim, run `:Lazy check` or `:Lazy sync` when changing plugin specifications; inspect lockfile changes before committing.

## Coding Style & Naming Conventions

Follow `.stylua.toml`: two-space indentation, Unix line endings, a 120-column limit, and double quotes where StyLua prefers them. Lua modules and files use lowercase descriptive names, with hyphens retained when matching a plugin name (for example, `lua/plugins/neo-tree.lua`). Plugin files should return a `LazySpec` table and include the existing LuaLS type annotations where useful. Keep keymap descriptions concise and user-facing.

## Testing Guidelines

No automated test framework or coverage target is configured. Every change should pass formatting, linting, and headless startup checks. Manually exercise affected mappings, UI behavior, LSP features, or plugin commands in Neovim. For plugin updates, verify startup after synchronization and review `lazy-lock.json` for unintended upgrades.

## Commit & Pull Request Guidelines

Recent history uses short, plain-language subjects rather than a formal Conventional Commits scheme. Prefer an imperative, specific summary such as `fix hidden-file filtering` and keep each commit focused.

Pull requests should explain the user-visible behavior, list validation performed, and identify affected plugins or modules. Link relevant issues. Include screenshots only for visual changes such as colorscheme, statusline, or file-tree behavior, and call out intentional lockfile updates.
