return {
  -- icons used by other plugins
  icons = {
    diagnostics = {
      Error = "󰅚 ", --🅴," ""󰢃 "
      Warn = "󰀪 ", --🆆," "
      Hint = "󰌶", --🅸," " "󰛩 "
      Info = " ", --🅷," ","󰗡 "
    },
    debugger = {
      DapBreakpoint = " ", --▶️breakpoints
      DapBreakpointCondition = " ", --conditional breakpoints
      DapLogPoint = " ", --log points
      DapStopped = " ", --🟥indicate where the debugee is stopped
      DapBreakpointRejected = " ", --indicate breakpoints rejected by the debug
    },
    git = {
      add = { text = "│" }, --" ","▎"
      change = { text = "!" }, --" ",
      delete = { text = "_" }, --" ",""
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    kinds = {
      Array = " ",
      Boolean = " ",
      Class = " ", --"󰠱 ",
      Color = "  ", --"󰏘 ", "󰸌 "
      Constant = " ",
      Constructor = "",
      Copilot = " ",
      Enum = " ",
      EnumMember = "",
      Event = " ", --"",
      Field = "󰄶 ", --"󰘻 ","󰄷 "
      File = "󰈙", -- 󰷈 󱪗 󱪝
      Folder = "  ", --󰉋  
      Function = "󰊕", --"󰡱 "
      Interface = " ", --"",
      Keyword = "󰌋 ", --"󱕵"
      Method = "󰆧 ",
      Module = " ",
      Namespace = " ",
      Null = " ",
      Number = " ",
      Object = " ",
      Operator = " ", --"󰆕",
      Package = "󰏗 ",
      Property = " ", --" ",󱉯
      Reference = " ", --"",
      Snippet = " ",
      String = " ",
      Struct = " ", --" ",
      Text = "󰊄 ", --" ",󰚞
      TypeParameter = " ",
      Unit = " ", --"",
      Value = "󰎠",
      Variable = "󰘛 ",
    },
  },
  -- options from nvim_open_win()| vim.diagnostic.open_float()
  -- | vim.lsp.util.open_floating_preview()| vim.diagnostic.config()
  ---@type table
  diagnostics_options = {
    virtual_text = false,
    -- virtual_text = {
    --     severity = { min = vim.diagnostic.severity.WARN, max = vim.diagnostic.severity.ERROR },
    --     source = "if_many",
    --     spacing = 0,
    --     prefix = "●",
    -- },
    float = {
      --nvim_open_win() options
      relative = "cursor",
      -- "single": A single line box.
      -- "double": A double line box.
      -- "rounded": Like "single", but with rounded corners "╭"
      -- "solid": Adds padding by a single whitespace cell.
      -- "shadow": A drop shadow effect by blending with the
      -- "none": No border (default).
      border = "shadow",
      -- vim.lsp.util.open_floating_preview()
      max_width = math.floor(vim.o.columns * 0.84),
      max_height = math.floor(vim.o.lines * 0.6),
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      focusable = false,
      zindex = 3,
      focus = false,
      -- vim.diagnostic.open_float()
      source = "if_many",
      severity_sort = true,
    },
    update_in_insert = false,
    -- This affects the order in which signs and virtual text are displayed
    severity_sort = true,
  },
}
