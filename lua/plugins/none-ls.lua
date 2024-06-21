return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_diro
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.shfmt,
      nls.builtins.completion.spell,
      --  TODO only if installed...
      -- nls.builtins.diagnostics.erb_lint,
      nls.builtins.formatting.htmlbeautifier,
      nls.builtins.diagnostics.rubocop,
      nls.builtins.formatting.rubocop,
      --       nls.builtins.diagnostics.rubocop.with({
      --   command = "bundle",
      --   args = { "exec", "rubocop", "--format", "json", "--force-exclusion" },
      --   source = "ruby",
      -- }),
      -- nls.builtins.formatting.rubocop.with({
      --   command = "bundle",
      --   args = { "exec", "rubocop", "--auto-correct" },
      --   source = "ruby",
      -- }),
      -- nls.builtins.diagnostics.rubocop.with({
      --   command = "bundle",
      --   args = { "exec", "rubocop", "--format", "json", "--force-exclusion" },
      --   source = "ruby",
      --   -- format = nls.builtins.formatters.rubocop.from_json({
      --   --   source = "rubocop",
      --   --   severity = "rubocop",
      --   -- }),
      -- }),
      -- nls.builtins.diagnostics.rubocop.with({
      --   command = "bundle",
      --   args = { "exec", "rubocop", "--format", "json", "--force-exclusion", "--stdin", "$FILENAME" },
      --   format = "line %l col %c: %t%n%n%p",
      -- }),
      -- nls.builtins.formatting.rubocop.with({
      --   command = "bundle",
      --   args = { "exec", "rubocop", "--auto-correct" },
      --   source = "ruby",
      -- }),
    })
  end,
}
