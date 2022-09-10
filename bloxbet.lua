local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/lua-releases/main/uis/boxlib.lua"))()


local win = SolarisLib:New({
	Name = "Vertile",
	FolderToSave = "VertileCompacted"
})
--win:Tab(title <string>)
local tab = win:Tab("miscellaneous")
--tab:Section(title <string>)
local sec = tab:Section("Elements")

sec:Button("auto bux", function()
while wait(0.1) do
game:GetService("ReplicatedStorage").Events.General.EarnBux:FireServer()
end
	SolarisLib:Notification("activated", "auto Bux")
end)

sec:Button("anti afk", function()
if not game:IsLoaded() then game.Loaded:Wait(); end

local idledEvent = game:GetService("Players").LocalPlayer.Idled
local function disable()
    for _, cn in ipairs(getconnections(idledEvent)) do
        cn:Disable()
    end
end

oldConnect = hookfunction(idledEvent.Connect, function(self, ...)
    local cn = oldConnect(self, ...); disable()
    return cn
end)

namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if self == idledEvent and getnamecallmethod() == "Connect" then
        local cn = oldConnect(self, ...); disable()
        return cn
    end
    return namecall(self, ...)
end)

disable()
    SolarisLib:Notification("anti afk activated", "enjoy being afk")
end)



local tab3 = win:Tab("local settings")

local sec3 = tab3:Section("settings")

sec3:Button("copy the link to our discord", function()
	setclipboard("https://discord.gg/rJknZqPWp9")
    toclipboard("https://discord.gg/rJknZqPWp9")
	SolarisLib:Notification("copied", "coped discord server.")
end)


local tab2 = win:Tab("credits")

local sec2 = tab2:Section("credits")

local label = sec2:Label("vxlt#0246, 985667813211525190")
local label = sec2:Label("eclipse, helper")
local label = sec2:Label("ui library = SolarisLibrary")
