return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    local C = {
      signcolumn = true,
      attach_to_untracked = true,
      current_line_blame = true,
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map("n", "g]", gs.next_hunk, "Next Hunk")
        map("n", "g[", gs.prev_hunk, "Previous Hunk")
        map("n", "<leader>gx", gs.reset_hunk, "Reset Hunk")
        map("n", "<leader>gs", gs.stage_hunk, "Stage Hunk")
        map("n", "<leader>gp", gs.preview_hunk, "Preview Hunk")
        map("n", "<leader>gu", gs.undo_stage_hunk, "Undo Stage Hunk")
      end,
    }
    return C
  end,
}
