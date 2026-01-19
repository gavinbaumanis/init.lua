return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = {
          "templ",
          "vimdoc",
          "javascript",
          "typescript",
          "c",
          "lua",
          "rust",
          "jsdoc",
          "bash",
          "go",
        },
        sync_install = false,
        auto_install = false,
        indent = { enable = true },
        highlight = { enable = true },
      })

      -- In your version, parsers IS the config table (no get_parser_configs function)
      local parser_config = require("nvim-treesitter.parsers")

      -- Only define templ if it doesn't already exist
      if parser_config.templ == nil then
        parser_config.templ = {
          install_info = {
            url = "https://github.com/vrischmann/tree-sitter-templ.git",
            files = { "src/parser.c", "src/scanner.c" },
            branch = "master",
          },
        }
      end

      vim.treesitter.language.register("templ", "templ")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup({})
    end,
  },
}
