local UI = require("openmw.ui")
local Util = require("openmw.util")
local MorrowindWindow = require("Scripts.MorrowindWindow")

return MorrowindWindow(
  500,
  200,
  0,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Image,
      props = {
        resource = UI.texture({
          path = "white"
        }),
        size = Util.vector2(50,50),
        padding = Util.vector4(15,15,15,15)
      },
      content = UI.content({
        {
          type = UI.TYPE.Text,
          props = {
            text = "Hello World",
            textColor = Util.color.rgb(1,0,0)
          }
        }
      })
    }
  }
)
