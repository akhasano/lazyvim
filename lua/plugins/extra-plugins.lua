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
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- добавляем несколько LSP серверов сразу
      vim.list_extend(opts.ensure_installed, {
        "gopls",
        "bashls",
        "ansiblels",
        "pyright",
        "terraformls",
        "html",
        "cssls",
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "shfmt",
        "shellcheck",
        "stylua",
        "black",
        "prettier",
        "jsonlint",
        "yamlfmt",
        "yamllint",
      },
      auto_update = false,
      run_on_start = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup({
        enable = true, -- Включить контекст
        max_lines = 5, -- Максимальное количество отображаемых строк контекста (0 для неограниченного)
        min_window_height = 0, -- Минимальная высота окна для отображения контекста
        line_numbers = true, -- Отображать номера строк
        multiline_threshold = 20, -- Количество строк, после которого отображается многострочный контекст
        trim_scope = "outer", -- Обрезка контекста: 'inner' (только текущий scope), 'outer' (все вложенные)
        mode = "cursor",
        separator = "─",
        on_attach = nil,
      })
    end,
  },

  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "terraform", "hcl" },
      highlight = { enable = true },
    },
  },
}
