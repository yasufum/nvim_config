-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "awk", "bash", "clojure", "c", "cmake", "comment", "cpp", "css", "cuda",
    "dart", "diff", "dockerfile", "dot",
    "elixir", "elm", "erlang", "fish", "fortran",
    "git_rebase", "gitattributes", "gitcommit", "gitignore",
    "go", "gomod", "gosum", "graphql",
    "help", "html", "http", "ini",
    "javascript", "jq", "json", "julia", "kotlin",
    "latex", "lua", "make", "markdown", "markdown_inline", "mermaid", "ninja",
    "php", "phpdoc", "python", "regex", "rst", "ruby",
    "scala", "scheme", "sql", "svelte",
    "terraform", "toml", "typescript", "tsx",
    "verilog", "vim", "vue", "yaml", "yang", "zig",
  },
  -- auto install above language parsers
  auto_install = true,
})
