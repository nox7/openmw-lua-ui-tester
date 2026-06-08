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
      type = UI.TYPE.Text,
      props = {
        padding = 20,
        textColor = Util.color.rgb(1,1,1),
        text = "Hello world"
      },
    },
  }
)
