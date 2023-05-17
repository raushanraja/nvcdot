local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
   b.formatting.prettier,
   b.formatting.rustfmt,
   b.formatting.autopep8,
   b.formatting.isort,
   b.diagnostics.flake8,
}

null_ls.setup {
  debug = true,
  sources = sources,
}


