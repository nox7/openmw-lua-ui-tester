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
      type = UI.TYPE.Flex,
      props = {
        horizontal = true,
        arrange = UI.ALIGNMENT.End,
      },
      content = UI.content({
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,50)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            color = Util.color.rgb(1,0,0),
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,100)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,50)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            color = Util.color.rgb(1,0,0),
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,90)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,32)
          }
        },
      })
    },
  }
)
