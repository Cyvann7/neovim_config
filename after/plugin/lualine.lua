--local iterations = 1
--local true_scroll_text = ""
--local scroll_length = 0
--local scroll_max = 0

--function SetScrolltext(str, len)
--	local blanks = string.rep(" ", len)
--	scroll_max = #str + len + 1
--	scroll_length = len - 1
--	true_scroll_text = blanks .. str .. blanks
--end

--local function scrollingtext()
--	iterations = (iterations + 1) % scroll_max
--	if iterations == 0 then iterations = 1 end
--	local t = string.sub(true_scroll_text, iterations, iterations+scroll_length)
--	print(t)
--	return t
--end
--
--SetScrolltext(content, 10)

local handle = io.popen("python C:/copypastagetter.py")

if handle == nil then
	print("Error with copypastagetter")
else
	handle:close()
end

local frames = {}
for line in io.lines("C:/Users/James/Desktop/copypasta.txt") do
	table.insert(frames, line)
end

local idx = -1
local function copypasta()
	idx = idx + 1
	local frame = frames[idx]
	if frame == nil then
		idx = 0
		frame = "          "
	end
	return '|'..frame..'|'
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'rose-pine',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = { copypasta },
    lualine_y = {'encoding', 'fileformat', 'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
