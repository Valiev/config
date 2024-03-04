local utils = require("nvim-treesitter.ts_utils")

local M = {}

local get_master_node = function()
  local node = utils.get_node_at_cursor()
  if node == nil then
    error("No Treesitter parser found")
  end
  local root = utils.get_root_for_node(node)
  local row  = node:start()
  local parent = node:parent()
  while (parent ~= nil and parent:start() == row and parent ~= root) do
    node = parent
    parent = node:parent()
  end
  return node
end

M.test = function()
  local node = get_master_node()
  utils.goto_node(node)
end

M.next = function()
  local node = get_master_node()
  local next_node = utils.get_next_node(node, true, true)
  utils.goto_node(next_node, false, true)
  -- get_master_node()
  --
  -- local bufnr = vim.api.nvim_get_current_buf()

  -- utils.update_selection(bufnr, node)
end

M.prev = function()
  local node = get_master_node()
  local prev_node = utils.get_previous_node(node, true, true)
  utils.goto_node(prev_node, false, true)
end

M.up = function()
  local node = get_master_node()
  utils.goto_node(node:parent(), false, true)
end

return M
