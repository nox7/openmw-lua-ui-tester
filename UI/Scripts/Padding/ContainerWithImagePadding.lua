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
      type = UI.TYPE.Container,
      props = {
        padding = {
          left = 30
        },
      },
      content = UI.content({
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(200,50),
          }
        },
      })
    },
  }
)
