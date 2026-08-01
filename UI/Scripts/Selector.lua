local UI = require("openmw.ui")
local Util = require("openmw.util")
local MWUI = require('openmw.interfaces').MWUI
local Core = require("openmw.core")
local MorrowindWindow = require("Scripts.MorrowindWindow")

local titleText = {
  type = UI.TYPE.Text,
  external = {
    stretch = 1,
  },
  props = {
    text = "Horizontal Test",
    textSize = 22,
    textColor = Util.color.commaString(Core.getGMST("FontColor_color_normal")),
    textAlignH = UI.ALIGNMENT.Center,
    wordWrap = true,
  }
};
local descriptionText = {
  type = UI.TYPE.Text,
  props = {
    text = "Content and text that describes some stuff about something else.",
    textSize = 16,
    textColor = Util.color.commaString(Core.getGMST("FontColor_color_normal")),
    textAlignH = UI.ALIGNMENT.Center,
    multiline = true,
    wordWrap = true,
    autoSize = false,
    relativeSize = Util.vector2(1,0),
    size = Util.vector2(0, 75),
  },
};

local topTextWindow = MorrowindWindow(
  600,
  125,
  0,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Flex,
      props = {
        autoSize = false,
        relativeSize = Util.vector2(1,1),
        align = UI.ALIGNMENT.Center,
        arrange = UI.ALIGNMENT.Center,
        padding = Util.vector4(10,10,10,10)
      },
      content = UI.content({
        titleText,
        descriptionText,
      })
    },
  }
)

topTextWindow.props.relativePosition = Util.vector2(0.5, 0);
topTextWindow.props.anchor = Util.vector2(0.5, 0);

local prevButtonWindow = MorrowindWindow(
  100,
  -10,
  0,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Flex,
      props = {
        autoSize = false,
        relativeSize = Util.vector2(1,1),
        align = UI.ALIGNMENT.Center,
        arrange = UI.ALIGNMENT.Center,
      },
      content = UI.content({
        {
          type = UI.TYPE.Text,
          props = {
            text = "<",
            textSize = 22,
            textColor = Util.color.commaString(Core.getGMST("FontColor_color_normal")),
            textAlignH = UI.ALIGNMENT.Center,
          }
        },
      })
    },
  }
)

prevButtonWindow.props.relativeSize = Util.vector2(0, 1);

local nextButtonWindow = MorrowindWindow(
  100,
  -10,
  -100,
  0,
  0.75,
  {
    {
      type = UI.TYPE.Flex,
      props = {
        autoSize = false,
        relativeSize = Util.vector2(1,1),
        align = UI.ALIGNMENT.Center,
        arrange = UI.ALIGNMENT.Center,
      },
      content = UI.content({
        {
          type = UI.TYPE.Text,
          props = {
            text = ">",
            textSize = 22,
            textColor = Util.color.commaString(Core.getGMST("FontColor_color_normal")),
            textAlignH = UI.ALIGNMENT.Center,
          }
        },
      })
    },
  }
)

nextButtonWindow.props.relativeSize = Util.vector2(0, 1);
nextButtonWindow.props.relativePosition = Util.vector2(1, 0);

local canvas = {
  layer = "Windows",
  props = {
    relativeSize = Util.vector2(1,1),
    propagateEvents = false,
  },
  content = UI.content({
    prevButtonWindow,
    topTextWindow,
    nextButtonWindow
  })
}

local framesSinceKeydown = math.huge
return {
  interfaceName = "UITester",
  interface = {
    Element = UI.create(canvas),
    TitleWidget = titleText,
    DescriptionWidget = descriptionText,
  }
}