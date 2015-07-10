local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local grid = require "mjolnir.sd.grid"
local hotkey = require "mjolnir.hotkey"
local hints = require "mjolnir.th.hints"

local makeGridFunc = function(grid_w, grid_h)
    return function(x, y, w, h)
	grid.MARGINX = 0
	grid.MARGINY = 0
	grid.GRIDWIDTH = grid_w
	grid.GRIDHEIGHT = grid_h

        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

--[[ Snap windows to a two by two grid ]]--
twoByTwo = makeGridFunc(2, 2) -- Split the screen into four parts
local mash = {"ctrl", "alt", "cmd"}

hotkey.bind(mash, 'n', grid.pushwindow_nextscreen)

function snap_window()
	-- Left Side
	if KEY.up and KEY.left then
		twoByTwo(0,0,1,1)
	elseif KEY.down and KEY.left then
		twoByTwo(0,1,1,1)
	elseif KEY.left then
		twoByTwo(0,0,1,2)
	
	-- Right side
	elseif KEY.up and KEY.right then
		twoByTwo(1,0,1,1)
	elseif KEY.down and KEY.right then
		twoByTwo(1,1,1,1)
	elseif KEY.right then
		twoByTwo(1,0,1,2)
	
	elseif KEY.up then
		twoByTwo(0,0,2,1)
	elseif KEY.right then
		twoByTwo(1,0,1,2)
	elseif KEY.down then
		twoByTwo(0,1,2,1)
	end
end

KEY = {
	up = false,
	down = false,
	right = false,
	left = false
}

function bindKey(key)
	hotkey.bind(mash, key, function()
		KEY[key] = true
		snap_window()
	end, function() KEY[key] = false end)
end

bindKey('up')
bindKey('down')
bindKey('left')
bindKey('right')

--[[ Snap windows to a three by two grid ]]--
threeByTwo = makeGridFunc(3,2) -- Split the screen into six segments

-- Put a window in any one position in the grid
hotkey.bind(mash, 'q', function() threeByTwo(0, 0, 1, 1) end)
hotkey.bind(mash, 'a', function() threeByTwo(0, 1, 1, 1) end)
hotkey.bind(mash, 'w', function() threeByTwo(1, 0, 1, 1) end)
hotkey.bind(mash, 's', function() threeByTwo(1, 1, 1, 1) end)
hotkey.bind(mash, 'e', function() threeByTwo(2, 0, 1, 1) end)
hotkey.bind(mash, 'd', function() threeByTwo(2, 1, 1, 1) end)

-- Take up an entire column of the grid
hotkey.bind(mash, 'z', function() threeByTwo(0, 0, 1, 2) end)
hotkey.bind(mash, 'x', function() threeByTwo(1, 0, 1, 2) end)
hotkey.bind(mash, 'c', function() threeByTwo(2, 0, 1, 2) end)

hotkey.bind(mash, 'm', grid.maximize_window)
hotkey.bind({"cmd"},"e",hints.windowHints)
