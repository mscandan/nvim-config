require('mscandan.base')
require('mscandan.highlights')
require('mscandan.maps')
require('mscandan.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"

if is_mac then
  require('mscandan.macos')
end
