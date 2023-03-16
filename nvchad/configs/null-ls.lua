local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "js", "jsx", "ts", "tsx" } }, -- so prettier works only on these filetypes
}

null_ls.setup {
  debug = true,
  sources = sources,
}
