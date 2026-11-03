local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui") or Players.LocalPlayer:WaitForChild("PlayerGui")
local vim = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local repStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")

local LIBRARY_URL = "https://raw.githubusercontent.com/euloxa/luau/refs/heads/main/lifeorlose.lua"
local raw = game:HttpGet(LIBRARY_URL)
if not raw or raw == "" or string.find(raw, "404: Not Found", 1, true) then
    warn("Failed to download library from: " .. LIBRARY_URL)
    return
end
local chunk, err = loadstring(raw)
if not chunk then
    warn("Failed open: " .. tostring(err))
    return
end
local L2Hub = chunk()

local Window = L2Hub:CreateWindow({
    Title = "BintangHub☠️",
    Image = "rbxassetid://139112743515667",
    Color = Color3.fromRGB(255, 0, 0),
    Size = UDim2.new(0, 520, 0, 320),
    Uitransparent = 0.05,
    ConfigFolder = "BintangHub_Configs/ViolenceDistrict",
    Config = { AutoSaveFile = "Default", AutoSave = false, AutoLoad = false }
})

local VDSettings = {
    ESP = { Enabled = false, Styles = {Chams = true, Box = false, Skeleton = false}, Info = {Names = false, Distance = false, Health = false, ItemStatus = false}, Targets = {Survivor = false, Killer = false}, FillTrans = 0.5, OutlineTrans = 0.3, TextSize = 12, Colors = {Survivor = Color3.fromRGB(0, 255, 0), Killer = Color3.fromRGB(255, 0, 0)} },
    WorldESP = { Enabled = false, MaxDistance = 150, Targets = {Generators = false, Hooks = false, Gates = false, Windows = false, Pallets = false, Zombies = false, Pumpkins = false}, ShowName = false, ShowDistance = false, Colors = {Generators = Color3.fromRGB(0, 170, 255), Hooks = Color3.fromRGB(255, 0, 0), Gates = Color3.fromRGB(255, 255, 0), Windows = Color3.fromRGB(255, 255, 255), Pallets = Color3.fromRGB(255, 170, 0), Zombies = Color3.fromRGB(170, 0, 255), Pumpkins = Color3.fromRGB(255, 130, 0)} },
    Camera = { FOVEnabled = false, FOVValue = 70, UnlockZoom = false, MaxZoom = 400, DBDCam = false, DBDSmoothness = 0.2 },
    Lighting = { Fullbright = false, FullbrightValue = 180, NoFog = false },
    Misc = { SkipCutscene = false, Noclip = false, SpeedHack = false, SpeedValue = 0.2, StreamMode = false, NextKiller = false, NextMap = false },
    Survivor = { AutoSkillMode = "Disabled", BoostGenEnabled = false, BypassGenMode = "Manual Repair", Flowstate = false, PerfectVault = false, AutoCrouch = false, GodMode = false, AntiFall = false, Invis = { Enabled = false, State = false }, FakePerks = { QuickRecovery = false, PerfectLanding = false, Flowstate = false, Cooldown = 10 } },
    Combat = { Parry = { Enabled = false, Aggressive = false, Distance = 8, ShowCircle = false, Color = Color3.fromRGB(170, 0, 255) } },
    Aim = { SilentAim = false, TargetPart = "Torso", TargetMode = "Killer", Prediction = true, BulletSpeed = 200, Laser = false, LaserColor = Color3.fromRGB(255, 0, 0), FlashSilent = false, FlashYOffset = 1.5 },
    Killer = { AimbotEnabled = false, MeleeLockDistance = 12, AimbotSmoothness = 5, HoldingM2 = false, DashLockEnabled = false, Spear = { Enabled = false, AutoPredict = false, FovRadius = 150, FovColor = Color3.fromRGB(108, 92, 231), FovTransparency = 0.5, ShowTracker = false, ShowFOV = false, CustomSpeed = 180, CustomGravity = 96.05, LeadMultiplier = 1.4, PROF = { aura = { v0 = 180, g = 96.05, windup = 0.10, latency = 0.04, maxlead = 25, scale = 1.00 }, normal = { v0 = 180, g = 96.05, windup = 0.10, latency = 0.04, maxlead = 45, scale = 1.10 } } } }
}

local DashboardTab = Window:CreateHomeTab({
    Name = "Dashboard", Title = "Dashboard", Icon = "lucide:layout-dashboard", AutoSetup = true,
    SupportedExecutors = {"Delta", "Arceus X", "Codex", "Hydrogen", "Krampus", "Fluxus", "Real"},
    UnsupportedExecutors = {"Xeno", "Solara"}, DiscordInvite = "https://whatsapp.com/channel/0029Vb8MsxY7T8bUAjemYH2j"
})

-- VISUAL TAB
local VisualTab = Window:AddTab({ Name = "Visuals", Icon = "eye", Type = "Single" })
local VisualTabbox = VisualTab:AddCenterTabbox("Visual Features")
local SubTabESP = VisualTabbox:AddTab({ Name = "Player ESP", Icon = "user" })
local SubTabCamera = VisualTabbox:AddTab({ Name = "Camera", Icon = "camera-small" })
local SubTabLighting = VisualTabbox:AddTab({ Name = "Lighting", Icon = "sun" })

local PlayerESPGroup = SubTabESP:AddDependencyGroupbox({ Name = "Player ESP", Icon = "user", Collapsible = true, Collapsed = false })
PlayerESPGroup:AddToggle({ Name = "Enable Player ESP", Flag = "Toggle_ESP_Enable", Default = false, Callback = function(state) VDSettings.ESP.Enabled = state end })
PlayerESPGroup:AddDropdown({ Name = "Select Target", Flag = "Filter_ESP_Targets", Multi = true, Values = {"Survivor", "Killer"}, Default = {}, Callback = function(v) VDSettings.ESP.Targets.Survivor = v["Survivor"] or false; VDSettings.ESP.Targets.Killer = v["Killer"] or false end })
PlayerESPGroup:AddDropdown({ Name = "ESP Style", Flag = "Filter_ESP_Styles", Multi = true, Values = {"Chams", "Box", "Skeleton"}, Default = {}, Callback = function(v) VDSettings.ESP.Styles.Chams = v["Chams"] or false; VDSettings.ESP.Styles.Box = v["Box"] or false; VDSettings.ESP.Styles.Skeleton = v["Skeleton"] or false end })
PlayerESPGroup:AddDropdown({ Name = "Info Status", Flag = "Filter_ESP_Info", Multi = true, Values = {"Names", "Distance", "Health", "Item Status"}, Default = {}, Callback = function(v) VDSettings.ESP.Info.Names = v["Names"] or false; VDSettings.ESP.Info.Distance = v["Distance"] or false; VDSettings.ESP.Info.Health = v["Health"] or false; VDSettings.ESP.Info.ItemStatus = v["Item Status"] or false end })
PlayerESPGroup:AddSlider({ Name = "Fill Transparency", Flag = "Slider_ESP_FillTrans", Min = 0, Max = 1, Default = 0.5, Rounding = 2, Callback = function(v) VDSettings.ESP.FillTrans = v end })
PlayerESPGroup:AddSlider({ Name = "Outline Transparency", Flag = "Slider_ESP_OutlineTrans", Min = 0, Max = 1, Default = 0.3, Rounding = 2, Callback = function(v) VDSettings.ESP.OutlineTrans = v end })
PlayerESPGroup:AddSlider({ Name = "Text Size", Flag = "Slider_ESP_TextSize", Min = 8, Max = 24, Default = 12, Rounding = 0, Callback = function(v) VDSettings.ESP.TextSize = v end })
PlayerESPGroup:AddColorPicker({ Name = "Survivor Color", Flag = "Color_ESP_Survivor", Default = Color3.fromRGB(0, 255, 0), Callback = function(v) VDSettings.ESP.Colors.Survivor = v end })
PlayerESPGroup:AddColorPicker({ Name = "Killer Color", Flag = "Color_ESP_Killer", Default = Color3.fromRGB(255, 0, 0), Callback = function(v) VDSettings.ESP.Colors.Killer = v end })

local WorldESPGroup = SubTabESP:AddDependencyGroupbox({ Name = "World Highlight ESP", Icon = "globe-simplified", Collapsible = true, Collapsed = false })
WorldESPGroup:AddToggle({ Name = "Enable World ESP", Flag = "Toggle_WorldESP_Enabled", Default = false, Callback = function(state) VDSettings.WorldESP.Enabled = state end })
WorldESPGroup:AddDropdown({ Name = "Select World Objects", Flag = "Filter_WorldESP_Targets", Multi = true, Values = {"Generators", "Hooks", "Gates", "Windows", "Pallets", "SCP / Zombie", "Pumpkins"}, Default = {}, Callback = function(v) VDSettings.WorldESP.Targets.Generators = v["Generators"] or false; VDSettings.WorldESP.Targets.Hooks = v["Hooks"] or false; VDSettings.WorldESP.Targets.Gates = v["Gates"] or false; VDSettings.WorldESP.Targets.Windows = v["Windows"] or false; VDSettings.WorldESP.Targets.Pallets = v["Pallets"] or false; VDSettings.WorldESP.Targets.Zombies = v["SCP / Zombie"] or false; VDSettings.WorldESP.Targets.Pumpkins = v["Pumpkins"] or false end })
WorldESPGroup:AddToggle({ Name = "World Nametags", Flag = "Toggle_WorldESP_ShowName", Default = false, Callback = function(state) VDSettings.WorldESP.ShowName = state end })
WorldESPGroup:AddToggle({ Name = "World Distance ESP", Flag = "Toggle_WorldESP_ShowDistance", Default = false, Callback = function(state) VDSettings.WorldESP.ShowDistance = state end })
WorldESPGroup:AddSlider({ Name = "World Max Distance", Flag = "Slider_WorldESP_MaxDistance", Min = 50, Max = 1000, Default = 150, Rounding = 0, Callback = function(v) VDSettings.WorldESP.MaxDistance = v end })
WorldESPGroup:AddColorPicker({ Name = "Generator Color", Flag = "Color_WorldESP_Generators", Default = VDSettings.WorldESP.Colors.Generators, Callback = function(v) VDSettings.WorldESP.Colors.Generators = v end })
WorldESPGroup:AddColorPicker({ Name = "Hook Color", Flag = "Color_WorldESP_Hooks", Default = VDSettings.WorldESP.Colors.Hooks, Callback = function(v) VDSettings.WorldESP.Colors.Hooks = v end })
WorldESPGroup:AddColorPicker({ Name = "Window Color", Flag = "Color_WorldESP_Windows", Default = VDSettings.WorldESP.Colors.Windows, Callback = function(v) VDSettings.WorldESP.Colors.Windows = v end })
WorldESPGroup:AddColorPicker({ Name = "Pallet Color", Flag = "Color_WorldESP_Pallets", Default = VDSettings.WorldESP.Colors.Pallets, Callback = function(v) VDSettings.WorldESP.Colors.Pallets = v end })
WorldESPGroup:AddColorPicker({ Name = "Pumpkin Color", Flag = "Color_WorldESP_Pumpkins", Default = VDSettings.WorldESP.Colors.Pumpkins, Callback = function(v) VDSettings.WorldESP.Colors.Pumpkins = v end })

local CameraGroup = SubTabCamera:AddDependencyGroupbox({ Name = "Camera Adjustments", Icon = "camera-small", Collapsible = true, Collapsed = false })
CameraGroup:AddToggle({ Name = "Enable FOV Modifier", Flag = "Toggle_Camera_FOVEnabled", Default = false, Callback = function(state) VDSettings.Camera.FOVEnabled = state end })
CameraGroup:AddSlider({ Name = "Field of View", Flag = "Slider_Camera_FOVValue", Min = 70, Max = 120, Default = 70, Rounding = 0, Callback = function(v) VDSettings.Camera.FOVValue = v end })
CameraGroup:AddToggle({ Name = "Unlock Camera Zoom", Flag = "Toggle_Camera_UnlockZoom", Default = false, Callback = function(state) VDSettings.Camera.UnlockZoom = state; if not state then Players.LocalPlayer.CameraMaxZoomDistance = 128; Players.LocalPlayer.CameraMinZoomDistance = 0.5 end end })
CameraGroup:AddSlider({ Name = "Max Zoom Distance", Flag = "Slider_Camera_MaxZoom", Min = 128, Max = 2000, Default = 400, Rounding = 0, Callback = function(v) VDSettings.Camera.MaxZoom = v end })

local DBDSmoothGroup = SubTabCamera:AddDependencyGroupbox({ Name = "DBD Smooth Camera", Icon = "sun", Collapsible = true, Collapsed = false })
DBDSmoothGroup:AddToggle({ Name = "Enable Smooth Camera", Flag = "Toggle_Camera_DBDCam", Default = false, Callback = function(state) VDSettings.Camera.DBDCam = state end })
DBDSmoothGroup:AddSlider({ Name = "Camera Smoothness", Flag = "Slider_Camera_DBDSmoothness", Min = 1, Max = 10, Default = 2, Rounding = 1, Callback = function(v) VDSettings.Camera.DBDSmoothness = math.clamp(v * 0.1, 0.1, 1) end })

local LightGroup = SubTabLighting:AddDependencyGroupbox({ Name = "Performance Boost", Icon = "sun", Collapsible = true, Collapsed = false })
LightGroup:AddToggle({ Name = "Fullbright", Flag = "Toggle_Lighting_Fullbright", Default = false, Callback = function(state) VDSettings.Lighting.Fullbright = state end })
LightGroup:AddSlider({ Name = "Fullbright Brightness", Flag = "Slider_Lighting_FullbrightValue", Min = 100, Max = 255, Default = 180, Rounding = 0, Callback = function(v) VDSettings.Lighting.FullbrightValue = v end })
LightGroup:AddToggle({ Name = "No Fog & Disable Effects", Flag = "Toggle_Lighting_NoFog", Default = false, Callback = function(state) VDSettings.Lighting.NoFog = state end })
LightGroup:AddToggle({ Name = "Skip Cutscene", Flag = "Toggle_Misc_SkipCutscene", Default = false, Callback = function(v) VDSettings.Misc.SkipCutscene = v end })
LightGroup:AddToggle({ Name = "Reduce Texture", Flag = "Toggle_Lighting_ReduceTexture", Default = false, Callback = function(state) end })
LightGroup:AddToggle({ Name = "Remove Tree", Flag = "Toggle_Lighting_RemoveTree", Default = false, Callback = function(state) end })

-- SURVIVOR TAB
local SurvivorTab = Window:AddTab({ Name = "Survivor", Icon = "user", Type = "Single" })
local SurvivorTabbox = SurvivorTab:AddCenterTabbox("Survivor Features")
local SubTabAutomation = SurvivorTabbox:AddTab({ Name = "Automation", Icon = "gear" })
local SubTabCombat = SurvivorTabbox:AddTab({ Name = "Combat", Icon = "swords" })
local SubTabUtility = SurvivorTabbox:AddTab({ Name = "Utility", Icon = "shield-check" })

local GenGroup = SubTabAutomation:AddDependencyGroupbox({ Name = "Generator Exploits", Icon = "gear", Collapsible = true, Collapsed = false })
GenGroup:AddDropdown({ Name = "Auto Skill Check Mode", Flag = "Filter_Survivor_AutoSkillMode", Default = "Disabled", Values = {"Disabled", "Normal", "Perfect", "Instant"}, Multi = false, Callback = function(v) VDSettings.Survivor.AutoSkillMode = v end })
GenGroup:AddDropdown({ Name = "Bypass Gen Mode", Flag = "Filter_Survivor_BypassGenMode", Default = "Manual Repair", Values = {"Manual Repair", "Auto Repair"}, Multi = false, Callback = function(v) VDSettings.Survivor.BypassGenMode = v end })
GenGroup:AddToggle({ Name = "Enable Boost Generator", Flag = "Toggle_Survivor_BoostGenEnabled", Default = false, Callback = function(state) VDSettings.Survivor.BoostGenEnabled = state end })

local VaultGroup = SubTabAutomation:AddDependencyGroupbox({ Name = "Vault Exploits", Icon = "lucide:door-open-arrow-to-bottom-right", Collapsible = true, Collapsed = false })
VaultGroup:AddToggle({ Name = "Fast Vault (Flowstate)", Flag = "Toggle_Survivor_Flowstate", Default = false, Callback = function(v) VDSettings.Survivor.Flowstate = v end })
VaultGroup:AddToggle({ Name = "Perfect Vault", Flag = "Toggle_Survivor_PerfectVault", Default = false, Callback = function(v) VDSettings.Survivor.PerfectVault = v end })

local ParryGroup = SubTabCombat:AddDependencyGroupbox({ Name = "Auto Parry (Dagger)", Icon = "swords", Collapsible = true, Collapsed = false })
ParryGroup:AddToggle({ Name = "Auto Parry", Flag = "Toggle_Parry_Enabled", Default = false, Callback = function(v) VDSettings.Combat.Parry.Enabled = v end })
ParryGroup:AddToggle({ Name = "Auto Parry Aggressive (Predict)", Flag = "Toggle_Parry_Aggressive", Default = false, Callback = function(v) VDSettings.Combat.Parry.Aggressive = v end })
ParryGroup:AddSlider({ Name = "Parry Distance", Flag = "Slider_Parry_Distance", Min = 4, Max = 25, Default = 8, Rounding = 1, Callback = function(v) VDSettings.Combat.Parry.Distance = v end })
ParryGroup:AddToggle({ Name = "Show Parry Circle", Flag = "Toggle_Parry_ShowCircle", Default = false, Callback = function(v) VDSettings.Combat.Parry.ShowCircle = v end })
ParryGroup:AddColorPicker({ Name = "Parry Circle Color", Flag = "Color_Parry_Color", Default = VDSettings.Combat.Parry.Color, Callback = function(v) VDSettings.Combat.Parry.Color = v end })

local EvasionGroup = SubTabUtility:AddDependencyGroupbox({ Name = "Evasion & Defense", Icon = "shield-check", Collapsible = true, Collapsed = false })
EvasionGroup:AddToggle({ Name = "Auto Crouch (Abysswalker)", Flag = "Toggle_Survivor_AutoCrouch", Default = false, Callback = function(v) VDSettings.Survivor.AutoCrouch = v end })
EvasionGroup:AddToggle({ Name = "God Mode", Flag = "Toggle_Survivor_GodMode", Default = false, Callback = function(v) VDSettings.Survivor.GodMode = v end })
EvasionGroup:AddToggle({ Name = "Anti Fall", Flag = "Toggle_Survivor_AntiFall", Default = false, Callback = function(v) VDSettings.Survivor.AntiFall = v end })

local InvisGroup = SubTabUtility:AddDependencyGroupbox({ Name = "Invisibility [OP]", Icon = "eye-slash", Collapsible = true, Collapsed = false })
InvisGroup:AddToggle({ Name = "Enable Invis System", Flag = "Toggle_Survivor_InvisEnabled", Default = false, Callback = function(v) VDSettings.Survivor.Invis.Enabled = v end })
InvisGroup:AddKeybind({ Name = "Invis Toggle Key", Flag = "Keybind_Survivor_InvisToggle", Default = "None", Mode = "Toggle", Callback = function(Name, State, Key, Mode) if Mode == "Toggle" then VDSettings.Survivor.Invis.State = not VDSettings.Survivor.Invis.State else VDSettings.Survivor.Invis.State = State end end })

local FakePerksGroup = SubTabUtility:AddDependencyGroupbox({ Name = "Fake Perks (OP)", Icon = "star", Collapsible = true, Collapsed = false })
FakePerksGroup:AddToggle({ Name = "Fake Quick Recovery", Flag = "Toggle_FakePerks_QuickRecovery", Default = false, Callback = function(v) VDSettings.Survivor.FakePerks.QuickRecovery = v end })
FakePerksGroup:AddToggle({ Name = "Fake Perfect Landing", Flag = "Toggle_FakePerks_PerfectLanding", Default = false, Callback = function(v) VDSettings.Survivor.FakePerks.PerfectLanding = v end })
FakePerksGroup:AddToggle({ Name = "Fake Flowstate", Flag = "Toggle_FakePerks_Flowstate", Default = false, Callback = function(v) VDSettings.Survivor.FakePerks.Flowstate = v end })
FakePerksGroup:AddSlider({ Name = "Fake Perks Cooldown", Flag = "Slider_FakePerks_Cooldown", Min = 0, Max = 180, Default = 10, Rounding = 0, Callback = function(v) VDSettings.Survivor.FakePerks.Cooldown = v end })

-- AIM TAB
local AimTab = Window:AddTab({ Name = "Aim", Icon = "crosshairs", Type = "Single" })
local AimTabbox = AimTab:AddCenterTabbox("Aim Features")
local SubTabSilentAim = AimTabbox:AddTab({ Name = "Silent Aim ToF", Icon = "crosshairs" })
local SubTabFlashlight = AimTabbox:AddTab({ Name = "Aim Flashlight", Icon = "lucide:flashlight" })

local SilentAimGroup = SubTabSilentAim:AddDependencyGroupbox({ Name = "Silent Aim Twist of Fate", Icon = "crosshairs", Collapsible = true, Collapsed = false })
SilentAimGroup:AddToggle({ Name = "Silent Aim", Flag = "Toggle_Aim_SilentAim", Default = false, Callback = function(v) VDSettings.Aim.SilentAim = v end })
SilentAimGroup:AddDropdown({ Name = "Target Part", Flag = "Filter_Aim_TargetPart", Default = "Torso", Values = {"Head", "Torso", "Root"}, Multi = false, Callback = function(v) VDSettings.Aim.TargetPart = v end })
SilentAimGroup:AddToggle({ Name = "Enable Prediction", Flag = "Toggle_Aim_Prediction", Default = true, Callback = function(v) VDSettings.Aim.Prediction = v end })
SilentAimGroup:AddSlider({ Name = "Predict Bullet Speed", Flag = "Slider_Aim_BulletSpeed", Min = 50, Max = 1000, Default = 200, Rounding = 0, Callback = function(v) VDSettings.Aim.BulletSpeed = v end })
SilentAimGroup:AddToggle({ Name = "Laser Pointer", Flag = "Toggle_Aim_Laser", Default = false, Callback = function(v) VDSettings.Aim.Laser = v end })
SilentAimGroup:AddColorPicker({ Name = "Laser Color", Flag = "Color_Aim_LaserColor", Default = Color3.fromRGB(255, 0, 0), Callback = function(color) VDSettings.Aim.LaserColor = color end })

local FlashGroup = SubTabFlashlight:AddDependencyGroupbox({ Name = "Silent Aim Flashlight", Icon = "lucide:flashlight", Collapsible = true, Collapsed = false })
FlashGroup:AddToggle({ Name = "Silent Aim Flashlight", Flag = "Toggle_Aim_FlashSilent", Default = false, Callback = function(v) VDSettings.Aim.FlashSilent = v end })
FlashGroup:AddSlider({ Name = "Flash Head Offset (Y)", Flag = "Slider_Aim_FlashYOffset", Min = 1, Max = 15, Default = 8, Rounding = 1, Callback = function(v) VDSettings.Aim.FlashYOffset = v end })

-- KILLER TAB
local KillerTab = Window:AddTab({ Name = "Killer", Icon = "flame", Type = "Single" })
local KillerTabbox = KillerTab:AddCenterTabbox("Killer Features")
local SubTabKillerAimbot = KillerTabbox:AddTab({ Name = "Aimbot", Icon = "swords" })
local SubTabVeilSpear = KillerTabbox:AddTab({ Name = "Silent Aim Veil", Icon = "lucide:focus" })

local KillerAimbotGroup = SubTabKillerAimbot:AddDependencyGroupbox({ Name = "Ability", Icon = "swords", Collapsible = true, Collapsed = false })
KillerAimbotGroup:AddToggle({ Name = "Aimbot", Flag = "Toggle_Killer_AimbotEnabled", Default = false, Callback = function(v) VDSettings.Killer.AimbotEnabled = v end })
KillerAimbotGroup:AddSlider({ Name = "Melee Lock Distance", Flag = "Slider_Killer_MeleeLockDistance", Min = 5, Max = 30, Default = 12, Rounding = 0, Callback = function(v) VDSettings.Killer.MeleeLockDistance = v end })
KillerAimbotGroup:AddSlider({ Name = "Aimbot Smoothness", Flag = "Slider_Killer_AimbotSmoothness", Min = 1, Max = 10, Default = 5, Rounding = 0, Callback = function(v) VDSettings.Killer.AimbotSmoothness = v end })

local HiddenAbilityGroup = SubTabKillerAimbot:AddDependencyGroupbox({ Name = "Hidden Abilities", Icon = "ninja", Collapsible = true, Collapsed = false })
HiddenAbilityGroup:AddToggle({ Name = "Aim Lock Hidden", Flag = "Toggle_Killer_DashLockEnabled", Default = false, Callback = function(v) VDSettings.Killer.DashLockEnabled = v end })

local VeilGroup = SubTabVeilSpear:AddDependencyGroupbox({ Name = "Silent Aim Veil", Icon = "lucide:focus", Collapsible = true, Collapsed = false })
VeilGroup:AddToggle({ Name = "Enable Silent Veil", Flag = "Toggle_Spear_Enabled", Default = false, Callback = function(v) VDSettings.Killer.Spear.Enabled = v end })
VeilGroup:AddToggle({ Name = "Auto Predict", Flag = "Toggle_Spear_AutoPredict", Default = false, Callback = function(v) VDSettings.Killer.Spear.AutoPredict = v end })
VeilGroup:AddSlider({ Name = "Lead Multiplier", Flag = "Slider_Spear_LeadMultiplier", Min = 0.1, Max = 5, Default = 1.4, Rounding = 1, Callback = function(v) VDSettings.Killer.Spear.LeadMultiplier = v end })
VeilGroup:AddSlider({ Name = "Spear Speed", Flag = "Slider_Spear_CustomSpeed", Min = 50, Max = 200, Default = 165, Rounding = 0, Callback = function(v) VDSettings.Killer.Spear.CustomSpeed = v end })
VeilGroup:AddSlider({ Name = "Spear Gravity", Flag = "Slider_Spear_CustomGravity", Min = 10, Max = 200, Default = 103, Rounding = 0, Callback = function(v) VDSettings.Killer.Spear.CustomGravity = v end })
VeilGroup:AddToggle({ Name = "ESP Tracker Target", Flag = "Toggle_Spear_ShowTracker", Default = false, Callback = function(v) VDSettings.Killer.Spear.ShowTracker = v end })
VeilGroup:AddToggle({ Name = "Show Veil FOV", Flag = "Toggle_Spear_ShowFOV", Default = false, Callback = function(v) VDSettings.Killer.Spear.ShowFOV = v end })
VeilGroup:AddSlider({ Name = "Veil FOV Radius", Flag = "Slider_Spear_FovRadius", Min = 30, Max = 500, Default = 150, Rounding = 0, Callback = function(v) VDSettings.Killer.Spear.FovRadius = v end })
VeilGroup:AddColorPicker({ Name = "FOV Color", Flag = "Color_Spear_FovColor", Default = Color3.fromRGB(108, 92, 231), Callback = function(v) VDSettings.Killer.Spear.FovColor = v end })
VeilGroup:AddSlider({ Name = "FOV Transparency", Flag = "Slider_Spear_FovTransparency", Min = 0.1, Max = 1, Default = 0.5, Rounding = 1, Callback = function(v) VDSettings.Killer.Spear.FovTransparency = v end })

local AuraModGroup = SubTabVeilSpear:AddDependencyGroupbox({ Name = "Aura Mode Modifier", Icon = "flame", Collapsible = true, Collapsed = false })
AuraModGroup:AddSlider({ Name = "Aura Spear Speed", Flag = "Slider_Spear_AuraV0", Min = 50, Max = 400, Default = 165, Rounding = 0, Callback = function(v) VDSettings.Killer.Spear.PROF.aura.v0 = v end })
AuraModGroup:AddSlider({ Name = "Aura Spear Gravity", Flag = "Slider_Spear_AuraG", Min = 10, Max = 200, Default = 96, Rounding = 0, Callback = function(v) VDSettings.Killer.Spear.PROF.aura.g = v end })

-- MISC TAB
local MiscTab = Window:AddTab({ Name = "Misc", Icon = "box", Type = "Single" })
local MiscTabbox = MiscTab:AddCenterTabbox("Miscellaneous")
local SubTabMovement = MiscTabbox:AddTab({ Name = "Movement", Icon = "person-running" })
local SubTabInfo = MiscTabbox:AddTab({ Name = "Info Overlay", Icon = "circle-i" })

local PhysicsGroup = SubTabMovement:AddDependencyGroupbox({ Name = "Character Physics", Icon = "person-running", Collapsible = true, Collapsed = false })
PhysicsGroup:AddToggle({ Name = "Noclip", Flag = "Toggle_Misc_Noclip", Default = false, Callback = function(v) VDSettings.Misc.Noclip = v end })
PhysicsGroup:AddToggle({ Name = "Speed Hack", Flag = "Toggle_Misc_SpeedHack", Default = false, Callback = function(v) VDSettings.Misc.SpeedHack = v end })
PhysicsGroup:AddSlider({ Name = "Speed Value", Flag = "Slider_Misc_SpeedValue", Min = 0.1, Max = 1, Default = 0.2, Rounding = 1, Callback = function(v) VDSettings.Misc.SpeedValue = v end })

local StreamGroup = SubTabMovement:AddDependencyGroupbox({ Name = "Streamer Options", Icon = "video-camera", Collapsible = true, Collapsed = false })
StreamGroup:AddToggle({ Name = "Stream Mode", Flag = "Toggle_Misc_StreamMode", Default = false, Callback = function(v) VDSettings.Misc.StreamMode = v end })

local InfoGroup = SubTabInfo:AddDependencyGroupbox({ Name = "Game Info Panel", Icon = "circle-i", Collapsible = true, Collapsed = false })
InfoGroup:AddToggle({ Name = "Next Killer Prediction", Flag = "Toggle_Misc_NextKiller", Default = false, Callback = function(v) VDSettings.Misc.NextKiller = v end })
InfoGroup:AddToggle({ Name = "Next Map Prediction", Flag = "Toggle_Misc_NextMap", Default = false, Callback = function(v) VDSettings.Misc.NextMap = v end })

Window:Notify({ Title = "BintangHub☠️", Content = "Script Loaded. Play to #Dominate", Duration = 5 })