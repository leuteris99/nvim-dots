-- Override neotest keybindings to use <leader>T instead of <leader>t
return {
  {
    "nvim-neotest/neotest",
    optional = true,
    keys = {
      { "<leader>t", false }, -- disable default <leader>t group
      { "<leader>tt", false }, -- disable to free up for terminal
      { "<leader>tr", false },
      { "<leader>tT", false },
      { "<leader>tl", false },
      { "<leader>ts", false },
      { "<leader>to", false },
      { "<leader>tO", false },
      { "<leader>td", false },
      { "<leader>tD", false },
      { "<leader>tw", false },
      -- Remap all to <leader>T
      { "<leader>Tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File (Neotest)" },
      { "<leader>TT", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "Run All Test Files (Neotest)" },
      { "<leader>Tr", function() require("neotest").run.run() end, desc = "Run Nearest (Neotest)" },
      { "<leader>Tl", function() require("neotest").run.run_last() end, desc = "Run Last (Neotest)" },
      { "<leader>Ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary (Neotest)" },
      { "<leader>To", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output (Neotest)" },
      { "<leader>TO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel (Neotest)" },
      { "<leader>TS", function() require("neotest").run.stop() end, desc = "Stop (Neotest)" },
      { "<leader>Td", function() require("neotest").run.run({ strategy = "dap" }) end, desc = "Debug Nearest (Neotest)" },
      { "<leader>TD", function() require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" }) end, desc = "Debug File (Neotest)" },
      { "<leader>Tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end, desc = "Toggle Watch (Neotest)" },
    },
  },
}
