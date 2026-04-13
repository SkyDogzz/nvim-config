return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "prettier",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        javascript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        css = { "prettierd", "prettier" },
        scss = { "prettierd", "prettier" },
        less = { "prettierd", "prettier" },
      },
    },
  },
}
