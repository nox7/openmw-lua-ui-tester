local UI = require("openmw.ui")
local Util = require("openmw.util")
local MWUI = require('openmw.interfaces').MWUI

--- Returns a table layout where the content is a Morrowind-styled window.
--- The window is resizable and draggable
---@param width number
---@param height number
---@param x number
---@param y number
return function(width, height, x, y, alpha, content)
  return {
    template = MWUI.templates.bordersThick,
    props = {
      size = Util.vector2(width, height),
      position = Util.vector2(x, y),
    },
    content = UI.content({
      {
        type = UI.TYPE.Image,
        props = {
          resource = UI.texture({
            path = "black"
          }),
          alpha = alpha,
          relativeSize = Util.vector2(1, 1),
        }
      },
      table.unpack(content)
    })
  }
end