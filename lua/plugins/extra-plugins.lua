return {
  {
    -- colorscheme
    "Koalhack/darcubox-nvim",
    config = function()
      vim.cmd("colorscheme darcubox")
    end,
  },
  {
    -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible.
    "smoka7/hop.nvim",
    -- lazy = false,
    version = "v2.7.2",
    opts = {
      keys = "sdfghjklcvbnm",
    },
  },
  {
    -- Super fast git decorations implemented purely in Lua.
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },

  {
    "folke/snacks.nvim",
  },
  {
    -- Lightweight yet powerful formatter plugin for Neovim
    "stevearc/conform.nvim",
    opts = {
      lazy = false,
      notify_on_error = false,
      format_on_save = true,
      formatters_by_ft = {
        go = { "gofmt" },
        -- rust = { "rustfmt" },
        python = { "black" },
        -- c = { "clang_format" },
        lua = { "stylua" },
        bash = { "shfmt", "shellcheck" },
        zsh = { "shfmt", "shellcheck" },
        sh = { "shfmt", "shellcheck" },
        css = { "prettier" },
        html = { "prettier" },
        tf = { "terraform_fmt" },
        json = { "jsonnetfmt", "jsonlint" },
        yaml = { "yamlfmt", "yamllint" },
      },
      log_level = vim.log.levels.DEBUG,
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- добавляем несколько LSP серверов сразу
      vim.list_extend(opts.ensure_installed, {
        "gopls",
        "bashls",
        "ansiblels",
        "pyright",
        "terraformls",
        "html-lsp",
        "css-lsp",
        "shellcheck",
        "shfmt",
      })
    end,
  },
}
