local UI = require("openmw.ui")
local Util = require("openmw.util")
local MorrowindWindow = require("Scripts.MorrowindWindow")

return MorrowindWindow(
  200,
  300,
  0,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Grid,
      props = {
        relativeSize = Util.vector2(1, 1),
        padding = Util.vector4(10,10,10,10),
        columnGap = 20,
        templateColumns = {
          { relativeSize = 1/3, },
          { relativeSize = 1/3, },
          { relativeSize = 1/3, },
        }
      },
      content = UI.content({
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(1,0,0),
            resource = UI.texture({
              path = "white",
            })
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(0,1,0),
            resource = UI.texture({
              path = "white",
            })
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(0,0,1),
            resource = UI.texture({
              path = "white",
            })
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(0,0,1),
            resource = UI.texture({
              path = "white",
            })
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(1,1,1),
            resource = UI.texture({
              path = "white",
            })
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            relativeSize = Util.vector2(1, 1),
            color = Util.color.rgb(1,0,0),
            resource = UI.texture({
              path = "white",
            })
          }
        },
      })
    },
  }
)
