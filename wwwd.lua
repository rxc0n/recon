local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = SolarisLib:New({
  Name = "RXCON",
  FolderToSave = "RXCON CONFIGURATIONS(IGNORE)"
})

--win:Tab(title <string>)
local tab = win:Tab("Main")

--tab:Section(title <string>)
local sec = tab:Section("Change Stats")

--sec:Button(title <string>, callback <function>)
sec:Button("Infinite Cash, Xp", function()
    local args = {
        [1] = "range",
        [2] = -501
     }
     
     game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.LevelService.RF.LevelAbility:InvokeServer(unpack(args))
     wait(0.2)
     local args = {
        [1] = "range",
        [2] = "1"
     }
     
     game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.LevelService.RF.LevelAbility:InvokeServer(unpack(args))
     wait(0.3)
     local args = {
        [1] = "range",
        [2] = 501
     }
     
     game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.LevelService.RF.LevelAbility:InvokeServer(unpack(args))
    SolarisLib:Notification("Infinite Cash", "IT worked!")
end)
