-- Run inside a Roblox Studio/Rojo project with this source loaded as a ModuleScript.
-- This is an API smoke-test sample, not a Volt single-file script.
local Fluent = require(script.Parent.src)
local Window = Fluent:CreateWindow({Title="LUNARBLX", SubTitle="Windows 11 Edition", TabWidth=160, Size=UDim2.fromOffset(600,460), Acrylic=true, Theme="Win11Dark", MinimizeKey=Enum.KeyCode.LeftControl})
local Tab = Window:AddTab({Title="Dashboard",Icon="layout-dashboard"})
local Settings = Window:AddTab({Title="Setting",Icon="settings"})
Tab:AddParagraph({Title="Dashboard",Content="Fluent API compatibility test"})
local Toggle = Settings:AddToggle("TestToggle",{Title="Toggle",Default=false,Callback=function(value) print("Toggle",value) end})
Toggle:OnChanged(function(value) print("Toggle change",value) end)
Settings:AddInput("TestInput",{Title="Input",Default="",Placeholder="Enter text",Callback=function(value) print(value) end})
Settings:AddSlider("TestSlider",{Title="Slider",Default=0.5,Min=0,Max=1,Rounding=1,Callback=function(value) print(value) end})
Settings:AddDropdown("TestDropdown",{Title="Multi Select",Values={"Z","X","C"},Multi=true,Default={},Callback=function(value) print(value) end})
Settings:AddButton({Title="Notification",Callback=function() Fluent:Notify({Title="LUNARBLX",Content="Original Fluent notification",Duration=4}) end})
