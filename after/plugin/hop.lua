-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection

local opts = { remap = false }
local current_line_only = false
vim.keymap.set('', 'f', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only
  })
end, opts)
vim.keymap.set('', 'F', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only
  })
end, opts)
vim.keymap.set('', 't', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    hint_offset = -1,
    current_line_only
  })
end, opts)
vim.keymap.set('', 'T', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    hint_offset = 1,
    current_line_only
  })
end, opts)

-- Override label letters to colemak homerow letters + wfuycmvk
hop.setup({
  keys = 'arstneiowfuycmvk',
  case_insensitive = true,
});
