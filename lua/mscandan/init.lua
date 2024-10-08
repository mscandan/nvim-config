require("mscandan.remap")
require("mscandan.general")
require("mscandan.highlights")
require("mscandan.plugins")
require("mscandan.jestzo")

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")

if is_mac then
	require("mscandan.macos")
end
