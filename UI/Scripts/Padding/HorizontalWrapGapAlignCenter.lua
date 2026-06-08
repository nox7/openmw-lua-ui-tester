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
      type = UI.TYPE.Flex,
      props = {
        relativeSize = Util.vector2(1,1),
        autoSize = false,
        horizontal = true,
        gap = 20,
        wrap = true,
        align = UI.ALIGNMENT.Center,
        padding = 30,
      },
      content = UI.content({
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(50,50),
            padding = 15
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "black"
            }),
            size = Util.vector2(72,68)
          },
          content = UI.content({
            {
              props = {
                relativeSize = Util.vector2(1,1),
                padding = {
                  top = 40,
                },
              },
              content = UI.content({
                {
                  type = UI.TYPE.Text,
                  props = {
                    text = "Test",
                    textColor = Util.color.rgb(1,1,1)
                  }
                }
              })
            },
          })
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
            resource = UI.texture({
              path = "black"
            }),
            size = Util.vector2(50,25)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "white"
            }),
            size = Util.vector2(100,50)
          }
        },
        {
          type = UI.TYPE.Image,
          props = {
            resource = UI.texture({
              path = "black"
            }),
            size = Util.vector2(50,50)
          }
        },
      })
    },
  }
)
