Ext.Require("Shared/Utils.lua")
Ext.Require("Server/MMM_UI_Window.lua")

MMM = {}
MMM.modPrefix = "MMM"
MMM.modTableKey = ""
MMM.modVersion = { major = 2, minor = 0, revision = 0 }

local function OnSessionLoaded()

    local ModInfo = Ext.Mod.GetMod("4806bd2a-929b-406e-b1d4-2e0e9cc23bb2")["Info"]
    MMM.modTableKey = ModInfo.Name
    MMM.modVersion = { major = ModInfo.ModVersion[1], minor = ModInfo.ModVersion[2], revision = ModInfo.ModVersion[3], build = ModInfo.ModVersion[4] }

    _P(Utils.GetRainbowText(MMM.modTableKey) .. " Version: " .. MMM.modVersion.major .. "." .. MMM.modVersion.minor .. "." .. MMM.modVersion.revision .. "." .. MMM.modVersion.build .. Utils.GetRainbowText(" Loaded"))
end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)