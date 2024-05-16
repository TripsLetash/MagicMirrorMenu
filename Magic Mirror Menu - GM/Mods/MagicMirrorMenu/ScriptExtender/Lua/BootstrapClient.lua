Ext.Require("Client/MMM_UI_Window.lua")
Ext.Require("Client/MMM_UI_TattooSwitcher.lua")

Ext.Vars.RegisterUserVariable("MMMSaveData", {
    Server = true,
    Client = true,
    WriteableOnClient = true,
    SyncToClient = true,
    SyncToServer = true
})
_P("MMM: Registered User Variables")