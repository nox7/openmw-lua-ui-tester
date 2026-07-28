local UI = require("openmw.ui")
local Util = require("openmw.util")
local MorrowindWindow = require("Scripts.MorrowindWindow")

return MorrowindWindow(
  250,
  500,
  0,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Flex,
      props = {
        autoSize = false,
        relativeSize = Util.vector2(1,1),
        gap = 20,
        wrap = true,
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
            size = Util.vector2(38,100)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(62,35)
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
            size = Util.vector2(28,72)
          }
        },
      })
    },
  }
)
