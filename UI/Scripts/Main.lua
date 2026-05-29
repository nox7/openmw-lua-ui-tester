local UI = require("openmw.ui")
local Util = require("openmw.util")
local Input = require("openmw.input")
local ISelector = require("Scripts.Selector").interface
local Selector = ISelector.Element
local TitleWidget = ISelector.TitleWidget
local DescriptionWidget = ISelector.DescriptionWidget
local UIsToTest = require("Scripts.TestRegistry")

local CurrentIndex = 1;
local CurrentElement;

local function CycleUI()
  if (CurrentIndex > #UIsToTest) then
    CurrentIndex = 1;
  elseif (CurrentIndex < 1) then
    CurrentIndex = #UIsToTest;
  end

  print("Cycling to index " .. CurrentIndex);
  
  if (CurrentElement) then
    CurrentElement:destroy();
  end

  local nextUI = UIsToTest[CurrentIndex];
  TitleWidget.props.text = nextUI[1];
  DescriptionWidget.props.text = nextUI[2];
  Selector:update();

  local nextWindow = nextUI[3];
  nextWindow.props.anchor = Util.vector2(0.5, 0.5);
  nextWindow.props.relativePosition = Util.vector2(0.5, 0.5);

  CurrentElement = UI.create({
    layer = "Windows",
    props = {
      relativeSize = Util.vector2(1,1),
      propagateEvents = false,
    },
    content = UI.content({
      nextWindow
    })
  })
end

CycleUI();

local framesSinceKeydown = math.huge
return {
  engineHandlers = {
    onUpdate = function()
      framesSinceKeydown = framesSinceKeydown + 1
      if (Input.isKeyPressed(Input.KEY.LeftArrow)) then
        if (framesSinceKeydown < 20) then
          return
        end
        framesSinceKeydown = 0
        CurrentIndex = CurrentIndex - 1;
        CycleUI();
      end
  
      if (Input.isKeyPressed(Input.KEY.RightArrow)) then
        if (framesSinceKeydown < 20) then
          return
        end
        framesSinceKeydown = 0
        CurrentIndex = CurrentIndex + 1;
        CycleUI();
      end
    end
  }
}