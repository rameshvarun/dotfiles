local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local grid = require "mjolnir.sd.grid"
local hotkey = require "mjolnir.hotkey"
local hints = require "mjolnir.th.hints"

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 2
grid.GRIDHEIGHT = 2

-- a helper function that returns another function that resizes the current window
-- to a certain grid size.
local gridset = function(x, y, w, h)
    return function()
        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

local mash = {"ctrl", "alt", "cmd"}

hotkey.bind(mash, 'n', grid.pushwindow_nextscreen)

hotkey.bind(mash, 'left', gridset(0, 0, 1, 2)) -- left half
hotkey.bind(mash, 'm', grid.maximize_window)
hotkey.bind(mash, 'right', gridset(1, 0, 1, 2)) -- right half

hotkey.bind(mash, 'up', gridset(0, 0, 2, 1)) -- right half
hotkey.bind(mash, 'down', gridset(0, 1, 2, 1)) -- right half

hotkey.bind({"cmd"},"e",hints.windowHints)

