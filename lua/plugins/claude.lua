return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
      terminal_cmd = "/Users/giordannocastro/.local/bin/claude", -- Point to local installation
      terminal = {
        cwd_provider = function(ctx)
          local cwd = require("claudecode.cwd").git_root(ctx.file_dir or ctx.cwd) or ctx.file_dir
          return cwd
        end,
      },
    },
    config = true,
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Claude Code" },
    },
  },
}
