DEOBF BY ASTAGANTENG
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" .. "Library.lua"))
Library = Library()
local Library2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" .. "addons/ThemeManager.lua"))
Library2 = Library2()
local Library3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" .. "addons/SaveManager.lua"))
Library3 = Library3()
local Library4 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xTextured/kiriot22-fork/refs/heads/main/kiriot22.lua"))
Library4 = Library4()
local Library5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/TexRBLX/Roblox-stuff/refs/heads/main/noobsmustdie/test.lua"))
Library5()

if setthreadidentity then
end

Library.ForceCheckbox = false
Library.ShowToggleFrameInKeybinds = true
local Window = Library:CreateWindow({
Title = "VD: Rewrite",
Footer = "v1.3 - Made by TexRBLX",
NotifySide = "Right",
ShowCustomCursor = true,
})

if not setthreadidentity then
else
end

local Object = setmetatable({}, {
__index = function(Value, Data)
    local Result = cloneref(game:GetService(Data))
    Value[Data] = Result
    do return Value[Data] end
end,

})
local Hook = hookfunction(print)
local Remotes = Object.ReplicatedStorage:WaitForChild("Remotes")
local Tab = Window:AddTab("Main", "user")
Tab = Window:AddTab("Visuals", "eye")
Tab = Window:AddKeyTab("Changelog", "notebook-pen")
Tab = Window:AddKeyTab("Credits", "pencil")
Tab = Window:AddTab("UI Settings", "settings")

local function Tab()
    if _u0.isUnloaded then
    else
        do return end
    end

    _u0.isUnloaded = true
    _u1:Notify({Title = "Unload")
    local v17, v18, v19 = pairs(_u2)

    while true do

        if v20.Value then
        else
            v20:SetValue(false)
        end

        for v21, v20 in v17, v18, v19 do
        end

        _u0.flingAllToggleActive = false
        local v17, v18, v19 = ipairs(_u0.connections)

        while true do

            if not v20 then
                pcall(function()_u0:Disconnect() end)
            end

            for v21, v20 in v17, v18, v19 do
            end

            table.clear(_u0.connections)

            if not _u3 then
                _u3.Enabled = false

                if not _u3.Unload then
                    pcall(_u3.Unload)
                else

                    if _u3.Clear then
                    else
                        pcall(_u3.Clear)
                    end

                end

            end

            v18 = getrawmetatable(game)
            restorefunction(v18.__namecall)
            _u1:Unload()
        end

        Object.ReplicatedStorage.Remotes.Pallet.Jason.Stun.OnClientEvent:Connect(function()
            State = true
            task.delay(5, function()State = falseend)
        end)

        local function Callback(Input, Param)
            local Item = Input:GetPropertyChangedSignal("WalkSpeed")
            Item:Connect(function()
                if State.Team.Name == "Survivors"

                if _u1.noTurnLimit.Value then
                else

                    if 10 >= _u2.WalkSpeed then
                    else

                        if _u2.WalkSpeed < 17 then
                            _u2.WalkSpeed = 17
                        end

                    end

                end

            end

            if State.Team.Name ~= "Killer"
        else

            if not _u1.NoSlowdown.Value then

                if _u3 then
                    local v24 = _u4:GetAttribute("Speed")
                    local v25 = _u4:GetAttribute("speedboost")

                    if _u2.WalkSpeed >= v24 * v25 then
                    else
                        _u2.WalkSpeed = v24 * v25
                    end

                end

            end

        end
    end)
end

Object.Players.LocalPlayer.CharacterAdded:Connect(function(Source)
    State = Source
    local Humanoid = Source:WaitForChild("Humanoid")
    _u1(Humanoid, Source)
end)

local v28 = v27.Main:AddLeftGroupbox("Generators")
v28:AddToggle("AntiFailGen", {
Default = false,
Text = "Anti Fail Generator",
Tooltip = "Makes generators never fail by making the skillcheck never appear.",
Callback = function(Instance2)
    local Skillcheckgen = State:FindFirstChild("Skillcheck-gen")

    if Skillcheckgen then
    else
        Skillcheckgen.Enabled = not Instance2
    end

    _u1:Notify("Could not find generator script.")
end,

})
task.spawn(function()
    while true do
        local Index = task.wait(1)

        if Index then
            break
        else

            if State.AntiFailGen.Value then
            end

        end

        Index = _u1:FindFirstChild("Skillcheck-gen")

        if Index then
        end

    end

    if not Index.Enabled then
    end

    Index.Enabled = false
end

end

end)

v28:AddToggle("AutoPerfect", {
Default = false,
Text = "Auto Perfect Skill-Check",
Tooltip = "Automatically does the generator skillcheck for you.",
})
Object.RunService.Heartbeat:Connect(function()
    if not State.AutoPerfect.Value then
    else
        do return end
    end

    local v31 = _u1:FindFirstChild("SkillCheckPromptGui")

    if not v31 then
    else
        do return end
    end

    local v32 = v31:FindFirstChild("Check")

    if not v32 then
    else
        do return end
    end

    local v33 = v32:FindFirstChild("Line")
    local v34 = v32:FindFirstChild("Goal")

    if not v33 then

        if v34 then
        else
            do return end
        end

    end

    if v33.Rotation == 0 then
    else

        if v34.Rotation == 0 then
        else

            if _u2 then

                if 104 < (v33.Rotation -v34.Rotation) % 360 then

                    if (v33.Rotation -v34.Rotation) % 360 >= 114 then
                    else
                        _u2 = true

                        if not _u3.KeyboardEnabled then
                            keypress(_u4)
                            task.wait(0.05)
                            keyrelease(_u4)
                        end

                        if _u3.TouchEnabled then
                        else
                            local v35 = _u1:WaitForChild("Survivor-mob")
                            local v37, v36, v38 = pairs(getconnections(v35.Controls.action.MouseButton1Down))

                            while true do

                                if not v39.Function then
                                    v39.Function()
                                end

                                for v40, v39 in v37, v36, v38 do
                                end

                            end

                            task.delay(0.1, function()State = falseend)
                        end

                    end

                end

            end

        end
    end)
    local v41 = v27.Main:AddRightTabbox("Mechanics")
    local v42 = v41:AddTab("Survivor")
    local v43 = v41:AddTab("Killer")
    local v44 = v41:AddTab("Specific")
    v42:AddToggle("NoFall")
    v42:AddToggle("noTurnLimit", {
    Text = "No Turn Speed Limit",
    Default = false,
    Tooltip = "Prevents you from being slowed down when making sharp turns while sprinting.",
    })

    if Object.Players.LocalPlayer.Character then
    else
        local v45 = Object.Players.LocalPlayer.Character:WaitForChild("Humanoid")
        Object.ReplicatedStorage.Remotes.Pallet.Jason.Stun.OnClientEvent:Connect(v45, Object.Players.LocalPlayer.Character)
    end

    local function Handler(Target)
        if not Target then

            if not State.AutoEscape.Value then
            else
                do return end
            end

        end

        if not Target then
            task.wait(10)
        end

        if _u1.Team.Name ~= "Survivors"
    else
        task.spawn(function()
            local Children, Instance3, Instance4 = pairs(workspace.Map:GetChildren())

            while true do

                if v49.Name == "Fininshline"
                firetouchinterest(State.HumanoidRootPart, v49, 0)
            end

            for Step, Count in Children, Instance3, Instance4 do
            end
        end)
    end

    if Target then
        _u3:Notify({Title = "Instant Escape", Description = "You are not survivor!", Time = 5})
    end
end

v42:AddToggle("AutoEscape", {
Text = "Auto Escape",
Default = false,
Tooltip = "Use this to autofarm screws.",
Callback = function(Info)
    State(false)
    _u1:Notify({Title = "Instant Escape", Description = "Escaped from map!", Time = 5})
end,

})

local function Action()
    local GcList, Entry, Ref = pairs(getgc(true))

    while true do
        local Iter = typeof(v55)

        if Iter == "function"
        Iter = debug.info(v55, "n")

        if Iter ~= "parry"
    else
        Iter = typeof(debug.info(v55, "s"))

        if Iter ~= "string"
    else
        local StartTime = debug.info(v55, "s")
        Iter = string.find(StartTime, "parrying")

        if not Iter then

            if State[v55] == nil then
                StartTime = os.clock()
                State[v55] = StartTime

                while true do
                    warn("s", v58)

                    for Pos, Num in State do
                    end

                end

            end

        end

    end

end

for v60, v55 in GcList, Entry, Ref do
end

end

local function Routine()
    local Node, Chunk, Record = pairs(State)

    while true do

        if 0 >= v65 then
        else
        end

        for Cursor, Offset in Node, Chunk, Record do
        end

        do return Cursor end
    end

    local function Signal(Signal2)
        Signal2.DescendantAdded:Connect(function(Payload)
            local Ok, Instance5 = pcall(function() do return State.Name endend)

            if Ok then
            else
                local Holder = typeof(Instance5)

                if Holder == "string"
                Holder = string.find(Instance5, "parry")

                if not Holder then
                    print("New parry event triggered")
                    task.delay(20, function()State() end)
                end

            end

        end
    end)
end

Object.Players.LocalPlayer.CharacterAdded:Connect(Signal)

if not Object.Players.LocalPlayer.Character then
    Signal(Object.Players.LocalPlayer.Character)
end

local function Worker(Context)
    if Context == State then
        do return end
    end

    local function Runner(Sender)
        local Humanoid2 = Sender:FindFirstChildOfClass("Humanoid")

        if not Humanoid2 then
        else
            do return end
        end

        local v74 = Humanoid2:FindFirstChildOfClass("Animator")

        if v74 then
            do return end
        end

        v74.AnimationPlayed:Connect(function(Receiver)
            local Container = tostring(Receiver.Animation.AnimationId)

            if State.attackAnims[Container] then
                do return end
            end

            if not _u1 then

                if not _u2.Character then
                else
                else
                    do return end
                end

            end

            local v76 = _u1:FindFirstChild("HumanoidRootPart")
            local v77 = _u2.Character:FindFirstChild("HumanoidRootPart")

            if v76 then
            else

                if v77 then
                end

                do return end
            end

            if (v76.Position -v77.Position).Magnitude > _u3.AutoParryDistance.Value then
            else

                if _u4.AutoParry.Value then
                else
                    local v78 = _u1:GetAttribute("IsHooked")

                    if not v78 then
                    else
                        v78 = _u5()

                        if not v78 then
                            _u6(5)
                            pcall(v78)
                            _u6(8)
                            _u7:Notify("Parried!", 3)
                        else
                            _u7:Notify("No valid parry function found! please report this to the developer.")
                        end

                    end

                end

            end
        end)
    end

    if Receiver.Character then
    else
        State(Receiver.Character)
    end

    Receiver.CharacterAdded:Connect(State)
end

Object.Players.PlayerAdded:Connect(Signal)
v42:AddToggle("AutoParry", {
Text = "Auto Parry",
Default = false,
Tooltip = "[WARNING] This may not work on all killers.\nWill attempt to automatically parry when a killer attacks in range.",
Callback = function(Content)
    State(8)

    if not _u1 then
    else
        local PlayerList, Wrapper, Buffer = pairs(_u2:GetPlayers())

        while true do
            _u3(v82)

            for Offset2, Offset3 in PlayerList, Wrapper, Buffer do
            end

            Cache = true
        end

        if Content then
        else
            task.spawn(_u4)
        end
    end,
    })
    v42:AddSlider("AutoParryDistance", {
    Text = "Auto Parry Distance",
    Default = 10,
    Min = 5,
    Max = 20,
    Rounding = 0,
    Tooltip = "How far a killer has to attack for auto parry to trigger.",
    })

    local function Executor()
        local PlayerList2, Element, Element2 = pairs(Cache:GetPlayers())

        while true do

            if v88 ~= State then

                if v88.Character then
                else
                    local HumanoidRootPart = v88.Character:FindFirstChild("HumanoidRootPart")

                    if not HumanoidRootPart then

                        if (State.Character.HumanoidRootPart.Position -v88.Character.HumanoidRootPart.Position).Magnitude < math.huge then
                        end

                    end

                end

            end

            for v90, v88 in PlayerList2, Element, Element2 do
            end

            do return v88.Character end
        end

        local function Processor()
            local Element3 = State()

            for Remote = 1, 100 do
                Cache:FireServer("success", 1, Element3)
            end
        end

        v42:AddToggle("HealOthers")
        local v94 = v42:AddToggle("Invisible"), Default = false})
        v94:OnChanged(function()
            if State.Invisible.Value then
            else

                if not State.InvisEffect.Value then
                    Cache.SaturationTint:SetValueRGB(Cache.SaturationTint)
                    State.CustomSaturation:SetValue(true)
                else
                    State.CustomSaturation:SetValue(false)
                end

                State.CustomSaturation:SetValue(false)
            end
        end)
        v42:AddToggle("InvisEffect", {
        Text = "Invisible Effect",
        Tooltip = "Have a visual indicator that invisible is on.",
        Default = false,
        Visible = true,
        Callback = function(Args)
            if not Args then
            else
                State.CustomSaturation:SetValue(false)
            end

            if Args then
            else

                if State.Invisible.Value then
                else
                    State.CustomSaturation:SetValue(true)
                end

            end
        end,
        })
        local ScreenGui = Instance.new("ScreenGui")
        local TextButton = gethui()
        ScreenGui.Parent = TextButton
        ScreenGui.Name = "InvisButton"
        TextButton = Instance.new("TextButton")
        TextButton.Parent = ScreenGui
        local UICorner = UDim2.new(0, 100, 0, 100)
        TextButton.Size = UICorner
        UICorner = UDim2.new(0.5,-50, 0.5,-50)
        TextButton.Position = UICorner
        UICorner = Color3.fromRGB(0, 0, 0)
        TextButton.BackgroundColor3 = UICorner
        TextButton.BorderSizePixel = 0
        TextButton.Visible = false
        TextButton.Text = "Toggle\nInvisible"
        UICorner = Color3.fromRGB(255, 255, 255)
        TextButton.TextColor3 = UICorner
        TextButton.TextScaled = true
        TextButton.Font = Enum.Font.GothamBold
        TextButton.TextWrapped = true
        UICorner = Instance.new("UICorner")
        local Listener = UDim.new(1, 0)
        UICorner.CornerRadius = Listener
        UICorner.Parent = TextButton
        v42:AddToggle("InvisButton", {
        Text = "Invisible Button",
        Tooltip = "(FOR MOBILE ONLY) Button to toggle invisibility.",
        Default = false,
        Visible = Object.UserInputService.TouchEnabled,
        Callback = function(GuiObject)
            State.Visible = GuiObject
            Cache:SetVisible(GuiObject)
            _u2:SetVisible(GuiObject)
        end,
        })
        local Toggle = v42:AddToggle("LockInvisButton", {
        Text = "Lock Invisible Button",
        Tooltip = "Prevents moving the button.",
        Visible = false,
        Default = false,
        })
        Toggle = v42:AddSlider("InvisButtonSize", {
        Text = "Invisible Button Size",
        Default = 100,
        Min = 20,
        Max = 100,
        Rounding = 0,
        Visible = false,
        Callback = function(Request)
            local Element4 = UDim2.new(0, Request, 0, Request)
            State.Size = Element4
            Element4 = UDim2.new(State.Position.X.Scale,-Request / 2, State.Position.Y.Scale,-Request / 2)
            State.Position = Element4
        end,
        })
        TextButton.MouseButton1Click:Connect(function()State.Invisible:SetValue(not State.Invisible.Value) end)

        local function Resolver(Request2)
            local Element5 = UDim2.new(_u2.X.Scale, _u2.X.Offset + ((Request2 -State).X), _u2.Y.Scale, _u2.Y.Offset + ((Request2 -State).Y))
            Cache.Position = Element5
        end

        TextButton.InputBegan:Connect(function(Request3)
            if not State.Value then
                do return end
            end

            if Request3.UserInputType == Enum.UserInputType.MouseButton1 then
            else

                if Request3.UserInputType == Enum.UserInputType.Touch then
                end

                Cache = true
                _u2 = Request3.Position
                _u3 = _u4.Position
                Request3.Changed:Connect(function()
                    if State.UserInputState ~= Enum.UserInputState.End then
                    else
                        Cache = false
                    end
                end)
            end
        end)
        Object.UserInputService.InputChanged:Connect(function(Request4)
            if State then
            else

                if Cache.Value then

                    if Request4.UserInputType == Enum.UserInputType.MouseMovement then
                    else

                        if Request4.UserInputType ~= Enum.UserInputType.Touch then
                        end

                    else
                        _u2(Request4.Position)
                    end

                end

            end
        end)
        v94:AddKeyPicker("invisKey", {Text = "Invisible Keybind", Default = "Y", Mode = "Toggle", SyncToggleState = true})
        v42:AddToggle("FastVault", {
        Text = "Fast Vault",
        Tooltip = "Always get a fast vault when vaulting. this requires you to sprint before you vault.",
        Default = false,
        })
        local Hook2 = CFrame.new()
        local Hook3 = hookmetamethod()
        Hook2 = hookmetamethod(Object.Players.LocalPlayer.Character.HumanoidRootPart.Velocity)
        v42:AddDivider()
        v42:AddToggle("GunSilent", {
        Text = "Gun Silent Aim",
        Tooltip = "Twist of fate silent aim, will try to redirect your bullet towards the killer.",
        Default = false,
        })
        v42:AddDropdown("GunAimPart", {Text = "Aim Part", Values = v113, Default = 1, Tooltip = "Aim Part for the gun silent aim."})
        v42:AddDivider()
        v42:AddButton({
        Text = "Grab Nearest",
        Tooltip = "Grab the nearest player.",
        Func = function()
            State.Remotes.Killers.Stalker.grab:FireServer(State.Remotes.Killers.Stalker.grab)
        end,
        })
        v42:AddButton({
        Text = "Instant Escape",
        Tooltip = "Click this to escape the map immediately, even if the gates are not opened.",
        Func = function()
            State(false)
            Cache:Notify({Title = "Instant Escape", Description = "Escaped from map!", Time = 5})
        end,
        })
        v43:AddToggle("FullGenBreak", {
        Text = "Full Generator Break",
        Tooltip = "Fully break the generator when you kick it.",
        Default = false,
        })
        v43:AddToggle("AntiBlind")
        v43:AddToggle("NoSlowdown", {
        Text = "No Slowdown",
        Tooltip = "Gives you no slowdown from attacking, getting parried, and so on.",
        Default = false,
        })

        local function Dispatcher()
            if State then
            else
                State:Disconnect()
                State = nil
            end

            local Connections, Element6, Element7 = ipairs(getconnections(Cache.OnClientEvent))

            while true do
                pcall(function()State:Disconnect() end)

                for Offset4, Offset5 in Connections, Element6, Element7 do
                end

                Connections = Cache.OnClientEvent:Connect(function()
                    if not State.NoPalletStun.Value then
                        Cache:FireServer()
                        do return end
                    end
                end)
                State = Connections
            end

            task.spawn(function()
                while true do
                    local Offset6 = task.wait(5)

                    if Offset6 then
                        break
                    else

                        if not State.InfiniteLunge.Value then
                        end

                        Cache:SetAttribute("lungeboost", 999)
                    end

                end
            end)
            local LocalPlayer = Object.Players.LocalPlayer:GetPropertyChangedSignal("Team")
            LocalPlayer:Connect(function()
                if State.Team == "Killer"

                if not Cache.InfiniteLunge.Value then
                    _u2:SetAttribute("lungeboost", 999)
                else
                    _u2:SetAttribute("lungeboost", 1)
                end

                if not Cache.NoPalletStun.Value then
                    task.delay(5, function()State() end)
                end

            end
        end)
        v43:AddToggle("InfiniteLunge", {
        Text = "Infinite Lunge",
        Tooltip = "Allows you to hold your lunge indefinitely, release when you want.",
        Default = false,
        Callback = function(Instance6)
            if not Instance6 then
                State:SetAttribute("lungeboost", 999)
            else
                State:SetAttribute("lungeboost", 1)
            end
        end,
        })
        v43:AddToggle("DoubleTap", {
        Text = "Double Tap",
        Tooltip = "Downs a survivor instantly on contact, as if hitting them twice.",
        Default = false,
        })
        v43:AddToggle("NoPalletStun", {
        Text = "No Pallet Stun",
        Tooltip = "Removes the stun when you get a pallet dropped on you.",
        Default = false,
        Callback = function(Request5)
            if not Request5 then
                task.spawn(State)
            end
        end,
        })

        local function LocalPlayer()
            local PlayerList3, Element8, Element9 = pairs(State:GetPlayers())

            while true do

                if not v125.Team then

                    if v125.Team.Name == "Killer"
                    do return v125.Character end
                end

            end

            for Offset7, Offset8 in PlayerList3, Element8, Element9 do
            end
        end

        task.spawn(function()
            while true do
                local Offset9 = task.wait(1)

                if Offset9 then
                    break
                else
                    Offset9 = Cache()
                    State = Offset9
                end

            end
        end)
        v43:AddToggle("EnableSL", {
        Text = "Shift Lock",
        Tooltip = "Enables the ability to use shiftlock. useful if using third person.",
        Default = false,
        Callback = function(Request6)
            if not Request6 then
                State.DevEnableMouseLock = true
            else
                State.DevEnableMouseLock = false
            end
        end,
        })
        v43:AddToggle("ThirdPersonToggle", {
        Text = "Third Person",
        Tooltip = "Toggles between first-person and third-person.",
        Default = false,
        Callback = function(Request7)
            if not State.Character then
            else
                local Character = State.CharacterAdded:Wait()
            end

            local v129 = workspace.CurrentCamera:FindFirstChild("VM")
            local v130 = Character:FindFirstChild("VMscript")

            if not Request7 then

                if not v129 then
                    v129.Parent = game.ReplicatedStorage
                end

                if v130 then
                else
                    v130.Disabled = true
                end

                State.CameraMinZoomDistance = 8
                State.CameraMaxZoomDistance = 30
                workspace.CurrentCamera.FieldOfView = 70
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                local v131 = Character:WaitForChild("Humanoid")
                workspace.CurrentCamera.CameraSubject = v131
                State.DevEnableMouseLock = true
            else
                v131 = game.ReplicatedStorage:FindFirstChild("VM")

                if v131 then
                else
                    v131.Parent = workspace.CurrentCamera
                end

                if not v130 then
                    v130.Disabled = false
                end

                State.CameraMinZoomDistance = 0.5
                State.CameraMaxZoomDistance = 0.5
                workspace.CurrentCamera.FieldOfView = 92
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                local v132 = Character:WaitForChild("Humanoid")
                workspace.CurrentCamera.CameraSubject = v132
                State.DevEnableMouseLock = false
            end
        end,
        })

        if workspace["CurrentCamera"] then
            local Element10 = workspace["FindFirstChildOfClass"]("Camera")
        end

        local Task = Color3.fromRGB(255, 255, 255)

        local function Job(Request8, Request9)
            local Drawing2 = Drawing.new(Request8)
            local Element11, Element12, Element13 = pairs(Request9)

            while true do
                Drawing2[v141] = v140

                for Offset10, Offset11 in Element11, Element12, Element13 do
                end

                do return Drawing2 end
            end

            local function Task()
                local Genv = getgenv()

                if Genv.crosshair_x then
                else
                    Genv = getgenv()

                    if Genv.crosshair_x.Line then
                    else
                        Genv = getgenv()
                        Genv.crosshair_x.Line:Remove()
                    end

                    Genv = getgenv()

                    if Genv.crosshair_x.Connection then
                    else
                        Genv = getgenv()
                        Genv.crosshair_x.Connection:Disconnect()
                    end

                    Genv = getgenv()
                    Genv.crosshair_x = v143
                end

                Genv = getgenv()

                if not Genv.crosshair_y then
                    Genv = getgenv()

                    if not Genv.crosshair_y.Line then
                        Genv = getgenv()
                        Genv.crosshair_y.Line:Remove()
                    end

                    Genv = getgenv()

                    if Genv.crosshair_y.Connection then
                    else
                        Genv = getgenv()
                        Genv.crosshair_y.Connection:Disconnect()
                    end

                    Genv = getgenv()
                    Genv.crosshair_y = v143
                end
            end

            local function Job2()
                State()
                local Genv2 = getgenv()
                Genv2.crosshair_x = v146
                Genv2 = getgenv()
                Genv2.crosshair_y = v146
                Genv2 = getgenv()
                local Element14 = Vector2.new(_u2.ViewportSize.X / 2 -_u3.x_offset -_u3.length, _u2.ViewportSize.Y / 2 -_u3.y_offset)
                Element14 = Vector2.new(_u2.ViewportSize.X / 2 -_u3.x_offset + _u3.length, _u2.ViewportSize.Y / 2 -_u3.y_offset)
                local Connection = Cache("Line", {
                To = Element14,
                From = Element14,
                Thickness = _u3.thickness,
                Color = _u3.color,
                Transparency = _u3.opacity,
                Visible = true,
                })
                Genv2.crosshair_x.Line = Connection
                Genv2 = getgenv()
                Element14 = Vector2.new(_u2.ViewportSize.X / 2 -_u3.x_offset, _u2.ViewportSize.Y / 2 -_u3.y_offset -_u3.length)
                Element14 = Vector2.new(_u2.ViewportSize.X / 2 -_u3.x_offset, _u2.ViewportSize.Y / 2 -_u3.y_offset + _u3.length)
                Connection = Cache("Line", {
                To = Element14,
                From = Element14,
                Thickness = _u3.thickness,
                Color = _u3.color,
                Transparency = _u3.opacity,
                Visible = true,
                })
                Genv2.crosshair_y.Line = Connection

                if not _u3.recenter then
                    Genv2 = getgenv()
                    Connection = _u2:GetPropertyChangedSignal("ViewportSize")
                    Connection = Connection:Connect(function()
                        local Genv3 = getgenv()
                        local Element15 = Vector2.new(State.ViewportSize.X / 2 -Cache.x_offset -Cache.length, State.ViewportSize.Y / 2 -Cache.y_offset)
                        Genv3.crosshair_x.Line.To = Element15
                        Genv3 = getgenv()
                        Element15 = Vector2.new(State.ViewportSize.X / 2 -Cache.x_offset + Cache.length, State.ViewportSize.Y / 2 -Cache.y_offset)
                        Genv3.crosshair_x.Line.From = Element15
                    end)
                    Genv2.crosshair_x.Connection = Connection
                    Genv2 = getgenv()
                    Connection = _u2:GetPropertyChangedSignal("ViewportSize")
                    Connection = Connection:Connect(function()
                        local Genv4 = getgenv()
                        local Element16 = Vector2.new(State.ViewportSize.X / 2 -Cache.x_offset, State.ViewportSize.Y / 2 -Cache.y_offset -Cache.length)
                        Genv4.crosshair_y.Line.To = Element16
                        Genv4 = getgenv()
                        Element16 = Vector2.new(State.ViewportSize.X / 2 -Cache.x_offset, State.ViewportSize.Y / 2 -Cache.y_offset + Cache.length)
                        Genv4.crosshair_y.Line.From = Element16
                    end)
                    Genv2.crosshair_y.Connection = Connection
                end
            end

            local function Instance7(Instance8)
                local Instance9 = Instance8:GetAttribute("spearmode")

                if not Instance9 then
                    State()
                else
                    Cache()
                end

                local Element17 = Instance8:GetAttributeChangedSignal("spearmode")
                Element17:Connect(function()
                    if not State.Crosshair.Value then
                        local Instance10 = Cache:GetAttribute("spearmode")

                        if Instance10 then
                        else
                            _u2()
                        end

                        _u3()
                    end
                end)
            end

            if Object.Players.LocalPlayer.Character then
            else
                255(Object.Players.LocalPlayer.Character)
            end

            Object.Players.LocalPlayer.CharacterAdded:Connect(function(Request10)State(Request10) end)
            v44:AddToggle("Crosshair", {
            Text = "Veil Crosshair",
            Tooltip = "Gives you a crosshair when using veil's spear mode.",
            Default = false,
            Callback = function(Request11)
                if not Request11 then
                    local Instance11 = State:GetAttribute("spearmode")

                    if Instance11 then
                        Cache:Notify("Crosshair will automatically activate when you enable the spear on veil.")
                    end

                end

                if Request11 then
                else
                    Instance11 = State:GetAttribute("spearmode")

                    if not Instance11 then
                        _u2()
                    end

                else

                    if Request11 then
                        Instance11 = State:GetAttribute("spearmode")

                        if not Instance11 then
                            _u3()
                        end

                    end

                end
            end,
            })
            v44:AddDivider()

            local function Job3()
                if State.Character then
                    do return nilend
                end

                local HumanoidRootPart2 = State.Character:FindFirstChild("HumanoidRootPart")

                if not HumanoidRootPart2 then
                else
                    do return nilend
                end

                local PlayerList4, Element18, Element19 = ipairs(Cache:GetPlayers())

                while true do

                    if v162 ~= State then
                    else
                    end

                    if not v162.Team then

                        if v162.Team.Name ~= "Survivors"
                    else
                    else

                        if v162.Character then
                        else
                            local HumanoidRootPart3 = v162.Character:FindFirstChild("HumanoidRootPart")
                            local Humanoid3 = v162.Character:FindFirstChild("Humanoid")

                            if not HumanoidRootPart3 then

                                if Humanoid3 then
                                else

                                    if Humanoid3.Health <= 0 then
                                    else
                                    end

                                end

                            else

                                if (HumanoidRootPart2.Position -HumanoidRootPart3.Position).Magnitude < math.huge then
                                end

                            end

                        end

                    end

                end

                if true then
                    break
                else

                    for Offset12, Offset13 in PlayerList4, Element18, Element19 do
                    end

                end

                do return Offset13 end
            end

            local function Job4(Request12, Request13, Request14)
                local Element20 = Vector3.new((Request13 -Request12).X, 0, (Request13 -Request12).Z)
                local Element21 = Vector3.new(Request13.X, Request13.Y + 0.5 * State * (Element20.Magnitude / Request14 * (Element20.Magnitude / Request14)), Request13.Z)
                do return (Element21 -Request12).Unit end
            end

            local function Job5(Instance12, Instance13)
                local HumanoidRootPart4 = Instance12:FindFirstChild("HumanoidRootPart")

                if not HumanoidRootPart4 then
                else
                    do return nilend
                end

                if not HumanoidRootPart4.AssemblyLinearVelocity then
                else
                end

                if not State.Character then
                else
                    do return HumanoidRootPart4.Position end
                end

                local HumanoidRootPart5 = State.Character:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart5 then
                    do return HumanoidRootPart4.Position end
                end

                do return HumanoidRootPart4.Position + (Vector3.zero * (((HumanoidRootPart4.Position -HumanoidRootPart5.Position).Magnitude) / Instance13)) end
            end

            local function Job6()
                if State then
                    do return end
                end

                if Cache.Character then
                    do return end
                end

                local Character2 = Cache.Character:GetAttribute("spearmode")

                if Character2 then
                    do return end
                end

                Character2 = Cache.Character:FindFirstChild("HumanoidRootPart")

                if not Character2 then
                else
                    do return end
                end

                local Element22 = _u2()

                if Element22 then
                    do return end
                end

                if Element22.Character then
                    do return end
                end

                local Head = Element22.Character:FindFirstChild("Head")

                if Head then
                    Head = Element22.Character:FindFirstChild("HumanoidRootPart")
                end

                if Head then
                    do return end
                end

                if _u3.SpearSpeed.Value == "Normal"
            else
            end

            local Character3 = _u4(Element22.Character, 165)

            if not Character3 then
            else
                do return end
            end

            local Part = _u5(Character2.Position, Character3, 165)
            local Part2 = CFrame.new(_u6.CFrame.Position, _u6.CFrame.Position + Part)
            local Part3 = _u6.CFrame:Lerp(Part2, 0.3)
            _u6.CFrame = Part3
        end

        local function Job7()
            if not State then
            else
                do return end
            end

            if not Cache then
                do return end
            end

            if _u2.Character then
                do return end
            end

            local Character4 = _u2.Character:GetAttribute("spearmode")

            if Character4 then
                do return end
            end

            Cache = true
            Character4 = _u4.RenderStepped:Connect(function()
                if not State then
                else
                    do return end
                end

                Cache()
            end)
            Element23 = Character4
        end

        local function Job8()
            if not State then
            else
                do return end
            end

            State = false

            if not Cache then
                Cache:Disconnect()
                Cache = nil
            end
        end

        Object.UserInputService.InputBegan:Connect(function(Request15, Request16)
            if Request16 then
            else
                do return end
            end

            if Request15.KeyCode.Name ~= State then
            else
                Cache()
            end
        end)
        Object.UserInputService["InputEnded"]:Connect(function(Instance14, Instance15)
            if Instance14.KeyCode.Name == State then
                Cache()
            end
        end)
        Object.Players.LocalPlayer.CharacterAdded:Connect(function()State() end)
        local ScreenGui2 = Instance.new("ScreenGui")
        local TextButton2 = gethui()
        ScreenGui2.Parent = TextButton2
        ScreenGui2.Name = "SpearAimMobileButton"
        TextButton2 = Instance.new("TextButton")
        TextButton2.Parent = ScreenGui2
        local UICorner2 = UDim2.new(0, 90, 0, 90)
        TextButton2.Size = UICorner2
        UICorner2 = UDim2.new(0.7, 0, 0.6, 0)
        TextButton2.Position = UICorner2
        UICorner2 = Color3.fromRGB(0, 0, 0)
        TextButton2.BackgroundColor3 = UICorner2
        TextButton2.BorderSizePixel = 0
        TextButton2.Visible = false
        TextButton2.Text = "Aim"
        UICorner2 = Color3.fromRGB(255, 255, 255)
        TextButton2.TextColor3 = UICorner2
        TextButton2.TextScaled = true
        TextButton2.Font = Enum.Font.GothamBold
        TextButton2.TextWrapped = true
        UICorner2 = Instance.new("UICorner")
        local Element24 = UDim.new(1, 0)
        UICorner2.CornerRadius = Element24
        UICorner2.Parent = TextButton2
        v44:AddToggle("SpearAutoAim", {
        Text = "Spear Aimbot",
        Tooltip = "Automatically aims at the nearest survivor when holding the aim key in spear mode.",
        Default = false,
        Callback = function(Request17)
            State = Request17

            if not Request17 then

                if not Cache.Character then
                    local Character5 = Cache.Character:GetAttribute("spearmode")

                    if Character5 then
                        _u2:Notify("Auto-Aim will activate when you enable spear mode on Veil.")
                    end

                end

            end

            if Request17 then
                Element23()
            end
        end,
        })
        local Element25 = v44["AddLabel"]("Spear Aim Keybind")
        Element25:AddKeyPicker("spearaimkeybind", {
        Default = "G",
        Mode = "Hold",
        Callback = function(Request18)State = Request18 end,
        })
        v44:AddSlider("SpearGravity", {
        Text = "Spear Gravity",
        Tooltip = "Adjust the gravity compensation for spear trajectory calculation.",
        Default = 98.1,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Request19)State = Request19 end,
        })
        v44:AddDropdown("SpearSpeed", {
        Text = "Spear Projectile Speed",
        Tooltip = "Adjust for the spear that goes through walls and normal spear throwing, which one to calculate.",
        Values = v189,
        Default = 1,
        })
        v44:AddToggle("MobileSpearAimButton", {
        Text = "(MOBILE) Spear Aim Button",
        Tooltip = "Button to activate Spear Aimbot on mobile.",
        Default = false,
        Visible = true,
        Callback = function(GuiObject2)
            State.Visible = GuiObject2
            Cache:SetVisible(GuiObject2)
            _u2:SetVisible(GuiObject2)
        end,
        })
        local Toggle2 = v44:AddToggle("LockSpearAimButton", {
        Text = "Lock Spear Aim Button",
        Tooltip = "Prevents moving the button.",
        Visible = false,
        Default = false,
        })
        TextButton2["MouseButton1Down"]:Connect(function()
            if not State then
            else
                do return end
            end

            Cache = true
            _u2()
        end)
        TextButton2["MouseButton1Up"]:Connect(function()
            State = false
            Cache()
        end)
        TextButton2["TouchLongPress"]:Connect(function()
            if State then
                State = true
                Cache()
            end
        end)
        Object.UserInputService["TouchEnded"]:Connect(function()
            if State then
            else
                State = false
                Cache()
            end
        end)

        local function Job9(Request20)
            local Element26 = UDim2.new(_u2.X.Scale, _u2.X.Offset + ((Request20 -State).X), _u2.Y.Scale, _u2.Y.Offset + ((Request20 -State).Y))
            Cache.Position = Element26
        end

        TextButton2.InputBegan:Connect(function(Request21)
            if State.Value then
            else
                do return end
            end

            if Request21.UserInputType == Enum.UserInputType.Touch then
            else

                if Request21.UserInputType == Enum.UserInputType.MouseButton1 then
                end

                Cache = true
                _u2 = Request21.Position
                Element23 = _u4.Position
                Request21.Changed:Connect(function()
                    if State.UserInputState ~= Enum.UserInputState.End then
                    else
                        Cache = false
                    end
                end)
            end
        end)
        Object.UserInputService.InputChanged:Connect(function(Request22)
            if not State then

                if not Cache.Value then
                else

                    if Request22.UserInputType ~= Enum.UserInputType.Touch then

                        if Request22.UserInputType == Enum.UserInputType.MouseMovement then
                        else
                            _u2(Request22.Position)
                        end

                    end

                end

            end
        end)
        local Slider = v44:AddSlider("SpearAimButtonSize", {
        Text = "Spear Button Size",
        Default = 90,
        Min = 40,
        Max = 150,
        Rounding = 0,
        Visible = false,
        Callback = function(Request23)
            local Element27 = UDim2.new(0, Request23, 0, Request23)
            State.Size = Element27
        end,
        })
        local Activatepower = Object.ReplicatedStorage.Remotes["Killers"]["Masked"]:WaitForChild("Activatepower")
        local Deactivatepower = Object.ReplicatedStorage.Remotes["Killers"]["Masked"]:WaitForChild("Deactivatepower")
        v44:AddDivider()
        v44:AddDropdown("MaskSelect", {
        Text = "Select Mask",
        Tooltip = "Select mask to select for the masked.",
        Values = Slider,
        Default = 1,
        })
        v44:AddButton({
        Text = "Activate Mask",
        Tooltip = "Activate the mask selected in the dropdown.",
        Func = function()State:FireServer(Cache.MaskSelect.Value) end,
        })
        v44:AddButton({
        Text = "Deactivate Mask",
        Tooltip = "Deactivate the mask selected in the dropdown.",
        Func = function()State:FireServer() end,
        })
        v44:AddDivider()
        v44:AddToggle("NoHiddenCD", {
        Text = "No Cooldown Hidden",
        Tooltip = "Gives you no cooldown on the hidden's abilities.",
        Default = false,
        })
        local Hook4 = hookfunction(task["delay"])

        local function Job10(Request24)
            if State then
                do return end
            end

            if Request24.Team then
            else

                if Request24.Team.Name ~= "Killer"

                if not Request24.Character then

                    if Request24 ~= Cache then
                        local HumanoidRootPart6 = Request24.Character:FindFirstChild("HumanoidRootPart")

                        if not HumanoidRootPart6 then
                            local Element28 = Vector3.new(_u2, _u2, _u2)
                            HumanoidRootPart6.Size = Element28
                            HumanoidRootPart6.Transparency = 0.4
                            HumanoidRootPart6.CanCollide = false
                            Element28 = HumanoidRootPart6:GetPropertyChangedSignal("Size")
                            Element28:Connect(function()
                                if State then
                                else
                                    local Element29 = Vector3.new(_u2, _u2, _u2)
                                    Cache.Size = Element29
                                end
                            end)
                        end

                    end

                end

            end

        end
    end

    v43:AddToggle("HitboxExpander", {
    Text = "Hitbox Expander",
    Tooltip = "Expands hitboxes for non-Killer players.",
    Default = false,
    Callback = function(Request25)
        State = Request25

        if State then
            local PlayerList5, Element30, Element31 = pairs(Cache:GetPlayers())

            while true do

                if not v207.Team then

                    if v207.Team.Name ~= "Killer"

                    if v207.Character then
                    else
                        local HumanoidRootPart7 = v207.Character:FindFirstChild("HumanoidRootPart")
                    end

                    if not HumanoidRootPart7 then
                        local Offset14 = Vector3.new(2, 2, 1)
                        HumanoidRootPart7.Size = Offset14
                        HumanoidRootPart7.Transparency = 1
                        HumanoidRootPart7.CanCollide = true
                    end

                end

            end

            for v210, v207 in PlayerList5, Element30, Element31 do
            end

        else
            local PlayerList5, Element30, Element31 = pairs(Cache:GetPlayers())

            while true do
                _u2(v207)

                for v210, v207 in PlayerList5, Element30, Element31 do
                end

            end
        end,
        })
        v43:AddSlider("HitboxSize", {
        Text = "Hitbox Size",
        Default = 2,
        Min = 1,
        Max = 25,
        Rounding = 1,
        Callback = function(Request26)
            State = Request26
            local PlayerList6, Element32, Element33 = pairs(Cache:GetPlayers())

            while true do
                _u2(v214)

                for Offset15, Offset16 in PlayerList6, Element32, Element33 do
                end
            end,
            })
            task.spawn(function()
                local PlayerList7, Element34, Element35 = pairs(State:GetPlayers())

                while true do
                    Cache(v219)

                    for Offset17, Offset18 in PlayerList7, Element34, Element35 do
                    end
                end)
                Object.Players.PlayerAdded:Connect(function(Signal3)Signal3.CharacterAdded:Connect(function()State(Cache) end) end)
                v43:AddButton({
                Text = "Destroy All Pallets",
                Tooltip = "Destroys all the usable pallets in the game.",
                Func = function()
                    task.spawn(function()
                        local Descendants, Instance16, Instance17 = pairs(workspace:GetDescendants())

                        while true do
                            local Instance18 = string.find(v224.Name, "PalletPoint")

                            if not Instance18 then
                                State:FireServer(v224)
                            end

                            for Offset19, Offset20 in Descendants, Instance16, Instance17 do
                            end
                        end)
                    end,
                    })
                    v43:AddDivider()
                    v43["AddLabel"]("Killer Screws Farm")
                    v43:AddToggle("HookSpam")
                    v43:AddSlider("ScrewsHookSlider", {
                    Text = "Hook Amount",
                    Default = 50,
                    Min = 20,
                    Max = 1000,
                    Rounding = 0,
                    Tooltip = "Amount of times it will hook a survivor, not recommended at super high values.",
                    })
                    v42:AddButton({
                    Text = "Sacrifice Self",
                    Tooltip = "Click this button when the killer picks you up to instantly kill both you, and the killer.",
                    Func = function()
                        if replicatesignal then
                            State:Notify({Title = "Sacrifice", Description = "Your executor does not support this feature!", Time = 5})
                        else
                            replicatesignal(Cache.Kill)
                        end
                    end,
                    })
                    local Hook5 = hookmetamethod(game)
                    local Hook6 = hookmetamethod(game)
                    Element36 = v27.Main["AddRightGroupbox"]("Player Mods")

                    function enableNoclip()
                        if not State.Noclipping then
                        else

                            if Cache then
                            end

                            do return end
                        end

                        State.Noclipping = true
                        table.clear(_u2)
                        local v239, v238, v240 = ipairs(Cache:GetDescendants())

                        while true do
                            local v242 = v241:IsA("BasePart")

                            if not v242 then
                                _u2[v241] = v241.CanCollide
                            end

                            for v243, v241 in v239, v238, v240 do
                            end

                            if not State.noclipLoop then
                                State.noclipLoop:Disconnect()
                            end

                            v238 = Element23.Heartbeat:Connect(function()
                                if not State.Noclipping then

                                    if not Cache then

                                        if Cache.Parent then
                                        else
                                        else
                                            disableNoclip()
                                            do return end
                                        end

                                    end

                                end

                                local v245, v244, v246 = ipairs(Cache:GetDescendants())

                                while true do
                                    local v248 = v247:IsA("BasePart")

                                    if not v248 then

                                        if not v247.CanCollide then
                                            v247.CanCollide = false
                                        end

                                    end

                                    for v249, v247 in v245, v244, v246 do
                                    end
                                end)
                                State.noclipLoop = v238
                                table.insert(State.connections, State.noclipLoop)
                            end

                            function disableNoclip()
                                if not State.Noclipping then
                                else

                                    if State.noclipLoop then
                                        do return end
                                    end

                                end

                                State.Noclipping = false

                                if State.noclipLoop then
                                else
                                    State.noclipLoop:Disconnect()
                                    State.noclipLoop = nil
                                end

                                if Cache then
                                else

                                    if not Cache.Parent then
                                        local v250, v251, v252 = pairs(_u2)

                                        while true do

                                            if v253 then
                                            else

                                                if v253.Parent then
                                                else
                                                    v253.CanCollide = v254
                                                end

                                            end

                                            for v253, v254 in v250, v251, v252 do
                                            end

                                        end

                                    end

                                    table.clear(_u2)
                                end

                                local function Job11()
                                    if State then
                                        do return end
                                    end

                                    local v256 = State:FindFirstChildOfClass("Humanoid")

                                    if v256 then
                                        do return end
                                    end

                                    v256.PlatformStand = true
                                    local v257 = State:WaitForChild("Head")
                                    v257.Anchored = true

                                    if Cache.CFloop then
                                    else
                                        Cache.CFloop:Disconnect()
                                    end

                                    local v264 = _u2.Heartbeat:Connect(function(Request27)
                                        if State.flyMode == "CFrame"
                                    else
                                        do return end
                                    end

                                    local v258 = _u2.CFrame:ToObjectSpace(workspace.CurrentCamera.CFrame)
                                    local v259 = CFrame.new(-v258.Position.X,-v258.Position.Y,-v258.Position.Z + 1)
                                    local v261 = CFrame.new((workspace.CurrentCamera.CFrame * v259).Position)
                                    v261 = v261:VectorToObjectSpace(Cache.MoveDirection * (State.CFspeed * Request27))
                                    local v262 = CFrame.new(_u2.CFrame.Position)
                                    local v263 = CFrame.new(v261)
                                    _u2.CFrame = (v262 * (workspace.CurrentCamera.CFrame * v259 - (workspace.CurrentCamera.CFrame * v259).Position)) * v263
                                end)
                                Cache.CFloop = v264
                                table.insert(Cache.connections, Cache.CFloop)
                            end

                            local function Job12()
                                if not State.CFloop then
                                    State.CFloop:Disconnect()
                                    local Element37, Element38, Element39 = ipairs(State.connections)

                                    while true do

                                        if v268 ~= State.CFloop then
                                        else
                                            table.remove(State.connections, v269)
                                            break
                                        end

                                        for Offset21, Offset22 in Element37, Element38, Element39 do
                                        end

                                        State.CFloop = nil
                                    end

                                    if not Cache then
                                    else
                                        do return end
                                    end

                                    Element37 = Cache:FindFirstChildOfClass("Humanoid")

                                    if Element37 then
                                    else
                                        Element37.PlatformStand = false
                                    end

                                    Element38 = Cache:FindFirstChild("Head")

                                    if not Element38 then
                                        Element38.Anchored = false
                                    end
                                end

                                local function Job13()
                                    local Element40 = Vector3.new(0, 0, 0)
                                    local Input2 = State:IsKeyDown(Enum.KeyCode.W)

                                    if Input2 then
                                    else
                                        Input2 = Vector3.new(0, 0,-1)
                                    end

                                    Input2 = State:IsKeyDown(Enum.KeyCode.S)

                                    if Input2 then
                                    else
                                        Input2 = Vector3.new(0, 0, 1)
                                    end

                                    Input2 = State:IsKeyDown(Enum.KeyCode.A)

                                    if Input2 then
                                    else
                                        Input2 = Vector3.new(-1, 0, 0)
                                    end

                                    Input2 = State:IsKeyDown(Enum.KeyCode.D)

                                    if Input2 then
                                    else
                                        Input2 = Vector3.new(1, 0, 0)
                                    end

                                    Input2 = State:IsKeyDown(Enum.KeyCode.Space)

                                    if not Input2 then
                                        Input2 = Vector3.new(0, 1, 0)
                                    end

                                    Input2 = State:IsKeyDown(Enum.KeyCode.LeftControl)

                                    if not Input2 then
                                        Input2 = Vector3.new(0,-1, 0)
                                    end

                                    if 0 < (Element40 + Input2 + Input2 + Input2 + Input2 + Input2 + Input2).Magnitude then

                                        if not ((Element40 + Input2 + Input2 + Input2 + Input2 + Input2 + Input2).Unit) then
                                        else
                                        else
                                        end

                                    end

                                    do return Element40 + Input2 + Input2 + Input2 + Input2 + Input2 + Input2 end
                                end

                                local function Job14()
                                    if not State then
                                    else
                                        do return end
                                    end

                                    local v272 = State:FindFirstChild("HumanoidRootPart")

                                    if v272 then
                                    else

                                        if not Cache.VflyLoop then
                                        end

                                        do return end
                                    end

                                    if Cache.VflyLoop then
                                    else
                                        Cache.VflyLoop:Disconnect()
                                    end

                                    local v275 = _u2.Heartbeat:Connect(function()
                                        if State.flyMode == "Velocity"

                                        if Cache then
                                        else

                                            if Cache.Parent then
                                            else
                                            end

                                            disableVelocityFly()
                                            do return end
                                        end

                                    end

                                    if workspace.CurrentCamera then
                                        do return end
                                    end

                                    local v274 = workspace.CurrentCamera.CFrame:VectorToWorldSpace(workspace.CurrentCamera.CFrame)
                                    Cache.Velocity = v274 * State.VflySpeed
                                end)
                                Cache.VflyLoop = v275
                                table.insert(Cache.connections, Cache.VflyLoop)
                            end

                            local function Job15()
                                if State.VflyLoop then
                                else
                                    State.VflyLoop:Disconnect()
                                    local Element41, Element42, Element43 = ipairs(State.connections)

                                    while true do

                                        if v279 == State.VflyLoop then
                                            table.remove(State.connections, v280)
                                            break
                                        else

                                            for Offset23, Offset24 in Element41, Element42, Element43 do
                                            end

                                        end

                                        State.VflyLoop = nil
                                    end

                                    if Cache then
                                    else
                                        Element41 = Cache:FindFirstChild("HumanoidRootPart")

                                        if Element41 then
                                        else
                                            Element42 = Vector3.new(0, 0, 0)
                                            Element41.Velocity = Element42
                                        end

                                    end
                                end

                                local v281 = Element36:AddSlider("speedboost", {
                                Text = "Speed Boost",
                                Default = 0,
                                Min = 0,
                                Max = 50,
                                Rounding = 1,
                                Callback = function(ValueObject)
                                    if State.SpeedMethod.Value ~= "Attribute"
                                else
                                    Cache:SetAttribute("speedboost", ValueObject)
                                end

                                _u2.speedBoostMultiplier = ValueObject

                                if isProgrammatic then

                                    if 1 < ValueObject then
                                    else
                                        _u2.isSpeedBoostActive = false

                                        if 1 < ValueObject then
                                            _u2.lastSpeedBoostValue = ValueObject
                                        end

                                    end
                                end,
                                })
                                Element36["AddInput"]("speedInput", {
                                Text = "Speed Input",
                                ["Numeric"] = true,
                                ["Finished"] = true,
                                ["Placeholder"] = "Enter speed value here...",
                                Callback = function(Request28)State.speedboost:SetValue(Request28) end,
                                })

                                if v282["speedAttributeLoop"] then
                                else
                                    v282["speedAttributeLoop"]["Disconnect"]()
                                end

                                local v284 = Object.RunService.Heartbeat:Connect(function(Request29)
                                    if State then
                                        do return end
                                    end

                                    local v283 = State:GetAttribute("speedboost")

                                    if v283 then
                                    else
                                        v283 = State:GetAttribute("speedboost")

                                        if 1000 >= v283 then
                                        else
                                            State:SetAttribute("speedboost", 1)
                                        end

                                    end

                                    if Cache.speedMethod ~= "Attribute"
                                else

                                    if Cache.isSpeedBoostActive then
                                    else

                                        if 0 < Cache.speedBoostMultiplier then
                                        end

                                    end

                                    pcall(function()
                                        print("updating")
                                        State:SetAttribute("speedboost", Cache)
                                    end)
                                end
                            end)
                            table["insert"](v282.connections, v282["speedAttributeLoop"])
                            Handler = Element36:AddDropdown("SpeedMethod", {
                            Values = Action,
                            Default = 1,
                            Text = "Speed Method",
                            Callback = function(Request30)State.speedMethod = Request30 end,
                            })
                            v284 = Element36["AddLabel"]("Speed Keybind")
                            v284:AddKeyPicker({"Attribute", "TP"}, {
                            Default = "T",
                            Mode = "Toggle",
                            Callback = function(Request31)
                                State.isKeybindToggle = true

                                if Request31 then
                                else
                                    Cache.speedboost:SetValue(State.lastSpeedBoostValue)
                                end

                                Cache.speedboost:SetValue(1)
                                State.isKeybindToggle = false
                            end,
                            })

                            if not v282["speedBoostLoop"] then
                                v282["speedBoostLoop"]["Disconnect"]()
                            end

                            local v286 = Object.RunService.Heartbeat:Connect(function(Request32)
                                if State then
                                    do return end
                                end

                                if Cache.isSpeedBoostActive then
                                else

                                    if 0 < Cache.speedBoostMultiplier then

                                        if _u2.SpeedMethod.Value == "TP"
                                        local v285 = State:FindFirstChildOfClass("Humanoid")

                                        if v285 then
                                        else

                                            if 0 < v285.MoveDirection.Magnitude then
                                                pcall(State.TranslateBy, State, v285.MoveDirection * Cache.speedBoostMultiplier * Request32 * 10)
                                            end

                                        end

                                    end

                                end

                            end
                        end)
                        table["insert"](v282.connections, v282["speedBoostLoop"])
                        local v287 = Instance.new("ScreenGui")
                        v286 = gethui()
                        v287.Parent = v286
                        v287.Name = "SpeedButton"
                        v286 = Instance.new("TextButton")
                        v286.Parent = v287
                        Action = UDim2.new(0, 100, 0, 100)
                        v286.Size = Action
                        Action = UDim2.new(0.5, 60, 0.5, 60)
                        v286.Position = Action
                        Action = Color3.fromRGB(0, 0, 0)
                        v286.BackgroundColor3 = Action
                        v286.BorderSizePixel = 0
                        v286.Visible = false
                        v286.Text = "Toggle\nSpeed"
                        Action = Color3.fromRGB(255, 255, 255)
                        v286.TextColor3 = Action
                        v286.TextScaled = true
                        v286.Font = Enum.Font.GothamBold
                        v286.TextWrapped = true
                        Action = Instance.new("UICorner")
                        Routine = UDim.new(1, 0)
                        Action.CornerRadius = Routine
                        Action.Parent = v286
                        Element36:AddToggle("SpeedButton", {
                        Text = "Speed Button",
                        Tooltip = "(FOR MOBILE ONLY) Button to toggle Speed Boost.",
                        Default = false,
                        Visible = Object.UserInputService.TouchEnabled,
                        Callback = function(GuiObject3)
                            State.Visible = GuiObject3
                            Cache:SetVisible(GuiObject3)
                            _u2:SetVisible(GuiObject3)
                        end,
                        })
                        Worker = Element36:AddToggle("LockSpeedButton", {
                        Text = "Lock Speed Button",
                        Tooltip = "Prevents moving the button.",
                        Visible = false,
                        Default = false,
                        })
                        Worker = Element36:AddSlider("SpeedButtonSize", {
                        Text = "Speed Button Size",
                        Default = 100,
                        Min = 20,
                        Max = 100,
                        Rounding = 0,
                        Visible = false,
                        Callback = function(Request33)
                            local Element44 = UDim2.new(0, Request33, 0, Request33)
                            State.Size = Element44
                            Element44 = UDim2.new(State.Position.X.Scale,-Request33 / 2, State.Position.Y.Scale,-Request33 / 2)
                            State.Position = Element44
                        end,
                        })
                        v286.MouseButton1Click:Connect(function()
                            if State.speedboost.Value > 1 then
                                Cache.isKeybindToggle = true

                                if false then
                                else

                                    if 1 < Cache.lastSpeedBoostValue then

                                        if not Cache.lastSpeedBoostValue then
                                        else
                                        else
                                        end

                                    end

                                    State.speedboost:SetValue(50)
                                end

                                State.speedboost:SetValue(1)
                                Cache.isKeybindToggle = false
                            end)

                            local function Job16(Request34)
                                local Element45 = UDim2.new(_u2.X.Scale, _u2.X.Offset + ((Request34 -State).X), _u2.Y.Scale, _u2.Y.Offset + ((Request34 -State).Y))
                                Cache.Position = Element45
                            end

                            v286.InputBegan:Connect(function(Request35)
                                if State.Value then
                                else
                                    do return end
                                end

                                if Request35.UserInputType ~= Enum.UserInputType.MouseButton1 then

                                    if Request35.UserInputType == Enum.UserInputType.Touch then
                                    else
                                        Cache = true
                                        _u2 = Request35.Position
                                        Element23 = _u4.Position
                                        Request35.Changed:Connect(function()
                                            if State.UserInputState ~= Enum.UserInputState.End then
                                            else
                                                Cache = false
                                            end
                                        end)
                                    end

                                end
                            end)
                            Object.UserInputService.InputChanged:Connect(function(Request36)
                                if State then
                                else

                                    if Cache.Value then

                                        if Request36.UserInputType ~= Enum.UserInputType.MouseMovement then

                                            if Request36.UserInputType == Enum.UserInputType.Touch then
                                            else
                                                _u2(Request36.Position)
                                            end

                                        end

                                    end

                                end
                            end)
                            local v291 = Element36:AddSlider("jumppower", {
                            Text = "Jump Power",
                            Default = 50,
                            Min = 50,
                            Max = 500,
                            Rounding = 1,
                            Callback = function(Request37)
                                if not State then

                                    if State.Humanoid then
                                    else
                                        State.Humanoid.JumpPower = Request37
                                    end

                                end
                            end,
                            })
                            v94 = workspace["CurrentCamera"]:GetPropertyChangedSignal("FieldOfView")
                            v94:Connect(function()
                                if State.FieldOfView == Cache.FOVChanger.Value then
                                else
                                    State.FieldOfView = Cache.FOVChanger.Value
                                end
                            end)
                            v94 = Element36:AddSlider("hipheight", {
                            Text = "Hip Height",
                            Default = 0,
                            Min = 0,
                            Max = 20,
                            Rounding = 1,
                            Callback = function(Request38)
                                if not State then

                                    if not State.Humanoid then
                                        State.Humanoid.HipHeight = Request38
                                    end

                                end
                            end,
                            })
                            Element36:AddSlider("FOVChanger", {
                            Text = "FOV Changer",
                            Default = 70,
                            Min = 70,
                            Max = 120,
                            Rounding = 0,
                            Callback = function(Request39)State.FieldOfView = Request39 end,
                            })
                            ScreenGui = Element36:AddToggle("noclip", {
                            Text = "Noclip",
                            Default = false,
                            Callback = function(Request40)
                                if not Request40 then
                                    enableNoclip()
                                else
                                    disableNoclip()
                                end
                            end,
                            })
                            ScreenGui:AddKeyPicker("keybind")
                            TextButton = Element36:AddToggle("fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(Request41)
                                if not Request41 then

                                    if State.fling.Value then
                                    else
                                        Cache.fly_method:SetValue("CFrame")
                                        do return end
                                    end

                                    if _u2.flyMode ~= "CFrame"
                                else
                                    Element23()
                                end

                                if _u2.flyMode ~= "Velocity"
                            else
                                _u4()
                            else
                                _u5()
                                _u6()
                            end

                        end
                    end,
                    })
                    TextButton:AddKeyPicker("flykey")
                    UICorner = Element36:AddSlider("cflyspeed", {
                    Text = "CFrame Fly Speed",
                    Default = 50,
                    Min = 5,
                    Max = 200,
                    Rounding = 1,
                    Callback = function(Request42)State.CFspeed = Request42 end,
                    })
                    Listener = Element36:AddSlider("vflyspeed", {
                    Text = "Velocity Fly Speed",
                    Default = 100,
                    Min = 5,
                    Max = 500,
                    Rounding = 1,
                    Callback = function(Request43)State.VflySpeed = Request43 end,
                    })
                    UICorner["SetVisible"](false)
                    Listener["SetVisible"](true)
                    Element36:AddDropdown("fly_method", {
                    Values = Resolver,
                    Default = 1,
                    Text = "Fly Method",
                    Callback = function(Request44)
                        if State.flyMode ~= "CFrame"
                    else
                        Cache()
                    end

                    if State.flyMode == "Velocity"
                    _u2()
                end

                State.flyMode = Request44

                if Request44 ~= "CFrame"
                Element23:SetVisible(false)

                if Request44 ~= "Velocity"
                _u4:SetVisible(false)

                if not _u5.fly.Value then

                    if State.flyMode == "CFrame"
                    _u6()
                else

                    if State.flyMode == "Velocity"
                    _u7()
                end

            end

        end
    end,
    })

    local function Job17()
        if State then
        else
            State:Disconnect()
        end

        local v294 = Cache.JumpRequest:Connect(function()
            if State then

                if Cache then
                else
                    local Instance19 = Cache:FindFirstChildWhichIsA("Humanoid")

                    if Instance19 then
                    else
                        State = true
                        Instance19 = Cache:FindFirstChildWhichIsA("Humanoid")
                        Instance19:ChangeState(Enum.HumanoidStateType.Jumping)
                        task.defer(function()State = falseend)
                    end

                end

            end
        end)
        State = v294
        table.insert(_u4.connections, State)
    end

    local function Job18()
        if not State then
            State:Disconnect()
            local Element46, Element47, Element48 = ipairs(Cache.connections)

            while true do

                if v299 == State then
                    table.remove(Cache.connections, v300)
                    break
                else

                    for Offset25, Offset26 in Element46, Element47, Element48 do
                    end

                end

                State = nil
            end

            _u2 = false
        end

        Resolver = Element36:AddToggle("infjump", {
        Text = "Infinite Jump",
        Default = false,
        Callback = function(Request45)
            if not Request45 then
                State()
            else
                Cache()
            end
        end,
        })
        Resolver:AddKeyPicker("infjumpkey")

        local function Job19()
            if State then
                do return end
            end

            local v303, v302, v304 = ipairs(State:GetDescendants())

            while true do
                local v306 = v305:IsA("BasePart")

                if v306 then
                else
                    v305.Anchored = true
                end

                for v307, v305 in v303, v302, v304 do
                end
            end

            local function Hook3()
                if State then
                    do return end
                end

                local v309, v308, v310 = ipairs(State:GetDescendants())

                while true do
                    local v312 = v311:IsA("BasePart")

                    if not v312 then
                        v311.Anchored = false
                    end

                    for v313, v311 in v309, v308, v310 do
                    end
                end

                Hook2 = Element36:AddToggle("freeze", {
                Text = "Freeze Self",
                Tooltip = "Freezes your player character.",
                Default = false,
                Callback = function(Request46)
                    if not Request46 then
                        State()
                    else
                        Cache()
                    end
                end,
                })
                Hook2:AddKeyPicker("freezekey")
                local v314 = v27.Main:AddLeftGroupbox("Fling")

                local function Job11(Request47)
                    if Request47 then
                        do return nilend
                    end

                    return Request47:FindFirstChild(Request47, "HumanoidRootPart")
                    do return Request47:FindFirstChild end
                end

                function disableWalkFling()
                    State.walkflinging = false
                end

                local function Job12()
                    disableWalkFling()
                    State.walkflinging = true
                    task.spawn(function()
                        if State then
                        else
                            local Instance20 = State:FindFirstChildWhichIsA("Humanoid")

                            if not Instance20 then
                                local Connection2 = Instance20.Died:Connect(disableWalkFling)
                                table.insert(Cache.connections, Connection2)
                            end

                        end

                        while true do

                            if Cache.walkflinging then
                                break
                            else
                                _u2.Heartbeat:Wait()
                                Instance20 = Element23(State)

                                if not Instance20 then
                                end

                                if Instance20.Parent then
                                end

                            end

                            local v317 = Vector3.new(0, Cache.flingStrength, 0)
                            Instance20.Velocity = Instance20.Velocity * Cache.flingStrength + v317
                            _u2.RenderStepped:Wait()

                            if not Instance20.Parent then
                                Instance20.Velocity = Instance20.Velocity
                            end

                            _u2.Stepped:Wait()

                            if Instance20.Parent then
                            end

                        end

                        local v319 = math.floor(tick())

                        if v319 % 2 == 0 then

                            if not 1 then
                            else
                            else
                            end

                        end

                        local v320 = Vector3.new(0, 0.1 *-1, 0)
                        Instance20.Velocity = Instance20.Velocity + v320
                    end

                end
            end)
        end

        v314:AddToggle("fling", {
        Text = "Fling",
        Default = false,
        Tooltip = "Flings others on contact.",
        Callback = function(Request48)
            if not Request48 then
                State()
            else
                disableWalkFling()
            end
        end,
        })
        v314:AddToggle("flingAll", {
        Text = "Fling All",
        Default = false,
        Tooltip = "Teleports to every player and attempts to fling them (requires Fling to be ON).",
        Callback = function(Request49)
            if Request49 then
            else
                State.flingAllToggleActive = true
                task.spawn(function()
                    while true do

                        if not State.flingAllToggleActive then

                            if not State.walkflinging then
                            else
                                Cache.Heartbeat:Wait()
                            end

                            local Character6 = _u2(Element23.Character)

                            if Character6 then
                            else
                                local PlayerList8, Offset27, Offset28 = ipairs(_u4:GetPlayers())

                                while true do

                                    if State.flingAllToggleActive then
                                    else

                                        if v325 == Element23 then
                                        else

                                            if v325.Character then
                                            else
                                                local HumanoidRootPart8 = v325.Character:FindFirstChild("HumanoidRootPart")

                                                if not HumanoidRootPart8 then

                                                    if not State.flingWhitelist then

                                                        if State.flingWhitelist[v325.Name] then
                                                        else
                                                        else
                                                        end

                                                        if v325.Character.HumanoidRootPart.Position.Y < 10000 then

                                                            if not workspace.FallenPartsDestroyHeight then
                                                            else
                                                            end

                                                            if -500 < v325.Character.HumanoidRootPart.Position.Y then
                                                                local v327 = tick()

                                                                while true do
                                                                    local v328 = tick()

                                                                    if v328 >= v327 + 0.25 then
                                                                        break
                                                                    else

                                                                        if not State.flingAllToggleActive then

                                                                            if not State.walkflinging then

                                                                                if Character6.Parent then
                                                                                    break
                                                                                else

                                                                                    if v325.Character.HumanoidRootPart.Parent then
                                                                                        break
                                                                                    else
                                                                                        local v329 = CFrame.new(0, 0, 1)
                                                                                        Character6.CFrame = v325.Character.HumanoidRootPart.CFrame * v329
                                                                                        break
                                                                                        Cache.Heartbeat:Wait()
                                                                                    end

                                                                                end

                                                                            end

                                                                        end

                                                                    end

                                                                end

                                                            end

                                                        end

                                                    end

                                                end

                                            end

                                        end

                                    end

                                    if not true then
                                    else
                                        break
                                    end

                                    for v330, v325 in PlayerList8, Offset27, Offset28 do
                                    end

                                end

                                Cache.Heartbeat:Wait()

                                if not true then
                                end

                            end

                            break
                        end

                    end
                end)
            end

            State.flingAllToggleActive = false
        end,
        })
        v314:AddSlider("flingstrength", {
        Text = "Fling Strength",
        Default = v282["flingStrength"],
        Min = 1000,
        Max = 50000,
        Rounding = 0,
        Tooltip = "Adjust how powerful the fling is.",
        Callback = function(Request50)State.flingStrength = Request50 end,
        })
        v314:AddDropdown("flingAllWhitelist", {
        ["SpecialType"] = "Player",
        Text = "Fling All Whitelist",
        ["Multi"] = true,
        ["ExcludeLocalPlayer"] = true,
        Tooltip = "Players selected here will NOT be flung.",
        ["Searchable"] = true,
        Callback = function(Request51)
            local Element49, Element50, Element51 = pairs(Request51)

            while true do

                if v334 then
                else
                    local Offset29 = typeof(v335)

                    if Offset29 == "Instance"
                end

            end

            for v335, v334 in Element49, Element50, Element51 do
            end

            State.flingWhitelist = v337
        end,
        })
        Job11 = v27.Main:AddLeftGroupbox({})
        Job11["AddInput"]("SoundID", {
        Text = "Sound ID",
        Tooltip = "Enter the ID of the sound to play. (no rbxassetid)",
        ["Finished"] = false,
        ["Numeric"] = true,
        ["Placeholder"] = "7196237097",
        })
        Job11:AddSlider("SoundDistance")
        Job11:AddSlider("SoundVolume")
        Job11:AddButton({
        Text = "Play Sound",
        Tooltip = "(FE) Will play a sound of your choice to the whole server.",
        Func = function()
            State:FireServer(Cache.SoundID.Value, _u2.HumanoidRootPart, Cache.SoundVolume.Value, Cache.SoundDistance.Value)
        end,
        })
        v314 = v27.Visuals:AddLeftGroupbox("ESP")
        Library4.Players = false
        Library4["Player"]["OffScreenArrows"] = false
        Library4["Player"]["Highlights"] = false
        v314:AddToggle("MasterToggle", {
        Text = "Toggle ESP",
        Tooltip = "Master toggle for all esp elements.",
        Default = false,
        Callback = function(Request52)
            if not Request52 then
                State:Notify("If you are experiencing lag with the ESP, try changing the new ESP Optimization settings in global tab!", 10)
            end

            Cache:Toggle(Request52)
        end,
        })
        v314:AddToggle("PlayerESP", {
        Text = "Player ESP",
        Tooltip = "Toggle player esp.",
        Default = false,
        Callback = function(Request53)State.Players = Request53 end,
        })
        v314:AddDivider()
        Job11 = v27.Visuals:AddRightTabbox("ESP Settings")
        Job12 = Job11:AddTab("Players")
        Job12["AddLabel"]("Box Settings")
        Job13 = Job12:AddToggle("playerEspBoxes", {
        Text = "2D Boxes",
        Default = Library4["Player"]["Boxes"],
        Callback = function(Request54)
            State.Player.Boxes = Request54

            if Request54 then
            else

                if not Cache.playerEspBoxes3D.Value then
                    Cache.playerEspBoxes3D:SetValue(false)
                end

            end
        end,
        })
        Job14 = Job12:AddToggle("playerEspBoxes3D", {
        Text = "3D Boxes",
        Default = Library4["Player"]["Boxes3D"],
        Callback = function(Request55)
            State.Player.Boxes3D = Request55

            if not Request55 then

                if not Cache.playerEspBoxes.Value then
                    Cache.playerEspBoxes:SetValue(false)
                end

            end
        end,
        })
        Job12:AddDivider()
        Job12["AddLabel"]("Text Information")
        Job12:AddToggle("playerEspNames", {
        Text = "Show Names",
        Default = Library4["Player"]["Names"],
        Callback = function(Request56)State.Player.Names = Request56 end,
        })
        Job12:AddToggle("playerEspDistance", {
        Text = "Show Distance",
        Default = Library4["Player"]["Distance"],
        Callback = function(Request57)State.Player.Distance = Request57 end,
        })
        Job12:AddToggle("playerEspWeapon", {
        Text = "Show Weapon",
        Default = Library4["Player"]["Weapon"],
        Callback = function(Request58)State.Player.Weapon = Request58 end,
        })
        Library4["Overrides"]["GetWeapon"] = function(Request59)
            if Request59.Character then
            else

                if not Request59.Team then
                end

            else
                do return nilend
            end

            if Request59.Team.Name ~= "Survivors"
        else
            local v338 = Request59.Character:FindFirstChildOfClass("Model")

            if v338 then
            else
                do return v338.Name end
            end

        end

        if Request59.Team.Name ~= "Killer"
    else
        v338 = Request59.Character:FindFirstChild("Weapon")

        if not v338 then
            local v339 = v338:FindFirstChildWhichIsA("Model", true)

            if v339 then
            else
                do return v339.Name end
            end

        end

    end

    do return nilend
end

Job12:AddDivider()
Job12["AddLabel"]("Health Settings")
Job15 = Job12:AddToggle("playerEspHealthBars", {
Text = "Health Bars",
Default = Library4["Player"]["HealthBars"],
Callback = function(Request60)
    State.Player.HealthBars = Request60

    if Cache.playerEspHealthText then
    else
        Cache.playerEspHealthText:SetVisible(Request60)
    end
end,

})
v281 = Job12:AddToggle("playerEspHealthText", {
Text = "Health Text",
Default = Library4["Player"]["HealthText"],
Callback = function(Request61)State.Player.HealthText = Request61 end,

})
v281["SetVisible"](Job15["Value"])
Job12:AddDivider()
Job12["AddLabel"]("Visual Effects")
Job12:AddToggle("playerEspTracers", {
Text = "Tracers",
Default = Library4["Player"]["Tracers"],
Callback = function(Request62)State.Player.Tracers = Request62 end,

})
Handler = Job12:AddToggle("playerEspHighlights", {
Text = "Highlights",
Default = Library4["Player"]["Highlights"],
Callback = function(Request63)State.Player.Highlights = Request63 end,

})
Job12:AddToggle("playerEspOffScreenArrows", {
Text = "Off-Screen Arrows",
Default = Library4["Player"]["OffScreenArrows"],
Callback = function(Request64)State.Player.OffScreenArrows = Request64 end,

})
Job12 = Job11:AddTab("Instances")
Job12["AddLabel"]("Box Settings")
Job13 = Job12:AddToggle("instanceEspBoxes", {
Text = "2D Boxes",
Default = Library4.Instance["Boxes"],
Callback = function(Request65)
    State.Instance.Boxes = Request65

    if Request65 then
    else

        if Cache.instanceEspBoxes3D.Value then
        else
            Cache.instanceEspBoxes3D:SetValue(false)
        end

    end
end,

})
Job14 = Job12:AddToggle("instanceEspBoxes3D", {
Text = "3D Boxes",
Default = Library4.Instance["Boxes3D"],
Callback = function(Request66)
    State.Instance.Boxes3D = Request66

    if Request66 then
    else

        if Cache.instanceEspBoxes.Value then
        else
            Cache.instanceEspBoxes:SetValue(false)
        end

    end
end,

})
Job12:AddDivider()
Job12["AddLabel"]("Text Information")
Job12:AddToggle("instanceEspNames", {
Text = "Show Names",
Default = Library4.Instance["Names"],
Callback = function(Request67)State.Instance.Names = Request67 end,

})
Job12:AddToggle("instanceEspDistance", {
Text = "Show Distance",
Default = Library4.Instance["Distance"],
Callback = function(Request68)State.Instance.Distance = Request68 end,

})
Job12:AddDivider()
Job12["AddLabel"]("Visual Effects")
Job12:AddToggle("instanceEspTracers", {
Text = "Tracers",
Default = Library4.Instance["Tracers"],
Callback = function(Request69)State.Instance.Tracers = Request69 end,

})
Job15 = Job12:AddToggle("instanceEspHighlights", {
Text = "Highlights",
Default = Library4.Instance["Highlights"],
Callback = function(Request70)State.Instance.Highlights = Request70 end,

})
Job12:AddToggle("instanceEspOffScreenArrows", {
Text = "Off-Screen Arrows",
Default = Library4.Instance["OffScreenArrows"],
Callback = function(Request71)State.Instance.OffScreenArrows = Request71 end,

})
Job12 = Job11:AddTab("Global")
Job12["AddLabel"]("Global Settings")
Job12:AddToggle("espTeamColor", {
Text = "Team Color",
Default = Library4["TeamColor"],
Callback = function(Request72)State.TeamColor = Request72 end,

})
Job12:AddToggle("espTeamMates", {
Text = "Show Teammates",
Default = Library4["TeamMates"],
Callback = function(Request73)State.TeamMates = Request73 end,

})
Job12:AddSlider("espThickness", {
Text = "Line Thickness",
Default = Library4["Thickness"],
Min = 1,
Max = 5,
Rounding = 0,
Callback = function(Request74)State.Thickness = Request74 end,

})
Job12:AddDivider()
Job12["AddLabel"]("Highlight Settings")
Job12:AddSlider("highlightDistance", {
Text = "Highlight Distance",
Default = Library4["HighlightDistance"],
Min = 50,
Max = 500,
Rounding = 0,
["Suffix"] = " studs",
Callback = function(Request75)State.HighlightDistance = Request75 end,

})
Job12:AddSlider("highlightBudget", {
Text = "Highlight Budget",
Default = Library4["HighlightBudget"],
Min = 1,
Max = 31,
Rounding = 0,
Callback = function(Request76)State.HighlightBudget = Request76 end,

})
Job12:AddSlider("highlightTransparency", {
Text = "Fill Transparency",
Default = Library4["HighlightFillTransparency"],
Min = 0,
Max = 1,
Rounding = 2,
Callback = function(Request77)State.HighlightFillTransparency = Request77 end,

})
Job12:AddSlider("highlightOutlineTransparency", {
Text = "Outline Transparency",
Default = Library4["HighlightOutlineTransparency"],
Min = 0,
Max = 1,
Rounding = 2,
Callback = function(Request78)State.HighlightOutlineTransparency = Request78 end,

})
Job13 = Job12["AddLabel"]("Highlight Outline Color")
v284 = Job13["AddColorPicker"](255, 255)
Job13["AddColorPicker"](Job13, "highlightOutlineColor", {
Default = v284,
Title = "Highlight Outline Color",
Callback = function(Request79)State.HighlightOutlineColor = Request79 end,

})
Job12:AddDivider()
Job12["AddLabel"]("Off-Screen Arrow Settings")
Job12:AddSlider("arrowSize", {
Text = "Arrow Size",
Default = Library4["OffScreenArrowSize"],
Min = 5,
Max = 30,
Rounding = 0,
Callback = function(Request80)State.OffScreenArrowSize = Request80 end,

})
Job12:AddSlider("arrowRadius", {
Text = "Arrow Radius",
Default = Library4["OffScreenArrowRadius"],
Min = 50,
Max = 300,
Rounding = 0,
Callback = function(Request81)State.OffScreenArrowRadius = Request81 end,

})
Job12["AddLabel"]("ESP Optimization")
Job12:AddSlider("UpdateInterval", {
Text = "Update Interval",
Tooltip = "How often ESP Objects update. putting this higher may improve performance, while making the esp less responsive.",
Default = Library4["UpdateInterval"],
Min = 0,
Max = 0.1,
Rounding = 2,
Callback = function(Request82)State.UpdateInterval = Request82 end,

})
Job12:AddSlider("CheckInterval", {
Text = "Check Interval",
Tooltip = "How often ESP Objects respond to color changes and enabled flags (generator reaches 100, etc)\nRecommended to leave default.",
Default = Library4["CheckInterval"],
Min = 0,
Max = 1,
Rounding = 1,
Callback = function(Request83)State.CheckInterval = Request83 end,

})
v314["AddLabel"]("Instance ESP", true)
Job12 = v314:AddToggle("GeneratorESP")
Handler = Job12["AddColorPicker"](75, 0)
Job12["AddColorPicker"](Job12, "GenColor", {Default = Handler, Title = "Generator Color"})
Job13 = v314:AddToggle("HookESP")
v284 = Job13["AddColorPicker"](0, 90)
Job13["AddColorPicker"](Job13, "HookColor", {Default = v284, Title = "Hook Color"})
Job14 = v314:AddToggle("VaultESP")
v287 = Job14["AddColorPicker"](43, 226)
Job14["AddColorPicker"](Job14, "VaultColor", {Default = v287, Title = "Vault Color"})
Job15 = v314:AddToggle("PalletESP")
v286 = Job15["AddColorPicker"](216, 230)
Job15["AddColorPicker"](Job15, "PalletColor", {Default = v286, Title = "Pallet Color"})
v281 = v314:AddToggle("GateESP")
Action = v281["AddColorPicker"](194, 27)
v281["AddColorPicker"](v281, "GateColor", {Default = Action, Title = "Gate Color"})

local function Job20(Request84)
    if Request84 then
        do return nilend
    end

    if State[Request84] then
    else
        do return State[Request84] end
    end

    local v340, v341 = pcall(function()
        return State:GetNameFromUserIdAsync(State, Cache)
        do return State:GetNameFromUserIdAsync end
    end)

    if v340 then
    else
        State[Request84] = v341
        do return v341 end
    end

    warn("Failed to get username for UserID: " .. Request84)
    local v342 = tostring(Request84)
    do return "User " .. v342 end
end

local function Job21(Request85)
    if not State[Request85] then
    end

    do return State[Request85].Value end
end

Library4["AddObjectListener"](workspace, {
["Type"] = "Model",
["Recursive"] = true,
Name = "Generator",
["PrimaryPart"] = function(Instance21)
    return Instance21:FindFirstChild(Instance21, "HitBox")
    do return Instance21:FindFirstChild end
end,

["IsEnabled"] = function(Request86)
    local Element52 = State("GeneratorESP")

    if not Element52 then

        if not Request86.RepairProgress then
        else
        end

        if 0 < 100 then
        else
        end

        do return falseend
    end,
    ["ColorDynamic"] = function() do return State.GenColor.Value endend,
    ["OnAdded"] = function(Instance22)
        local Instance23 = Instance22.Object:GetAttribute("RepairProgress")

        if not Instance23 then
        else
        end

        Instance22.RepairProgress = 0
        function()
            local Instance24 = State.Object:GetAttribute("RepairProgress")

            if Instance24 then
            end

            State.RepairProgress = 0
            local v346 = string.format("Gen: %.0f%%", 0)
            State.RawName = v346

            if 100 > 0 then
            else
                State:Remove()
            end
        end()
        local v347 = Instance22.Object:GetAttributeChangedSignal("RepairProgress")
        v347 = v347:Connect(function()
            local Instance25 = State.Object:GetAttribute("RepairProgress")

            if Instance25 then
            end

            State.RepairProgress = 0
            local v346 = string.format("Gen: %.0f%%", 0)
            State.RawName = v346

            if 100 > 0 then
            else
                State:Remove()
            end
        end)
        local v348 = Instance22.Object.AncestryChanged:Connect(function(Request87, Request88)
            if Request88 then
                State:Disconnect()
                Cache:Disconnect()
            end
        end)
    end,
    })
    Library4["AddObjectListener"](workspace["Map"], {
    ["Recursive"] = true,
    ["Type"] = "Model",
    Name = "Window",
    ["CustomName"] = "Vault",
    ["ColorDynamic"] = function() do return State.VaultColor.Value endend,
    ["PrimaryPart"] = function(Instance26)
        return Instance26:FindFirstChildWhichIsA(Instance26, "BasePart")
        do return Instance26:FindFirstChildWhichIsA end
    end,
    ["IsEnabled"] = function() do return State.VaultESP.Value endend,
    })
    Library4["AddObjectListener"](workspace["Map"], {
    ["Type"] = "Model",
    ["Recursive"] = true,
    Name = "Hook",
    ["PrimaryPart"] = function(Instance27)
        local HitBox = Instance27:FindFirstChild("HitBox")

        if HitBox then
            HitBox = Instance27:FindFirstChild("HookPoint")
        end

        do return HitBox end
    end,
    ["ColorDynamic"] = function() do return State.HookColor.Value endend,
    ["IsEnabled"] = function()
        return State("HookESP")
        do return State end
    end,
    ["OnAdded"] = function(Instance28)
        local HookPoint = Instance28.Object:FindFirstChild("HookPoint")
        function()
            if State then
                Cache.RawName = "Hook"
                do return end
            end

            local Instance29 = State:GetAttribute("CarriedSurvivorId")

            if Instance29 then
            else
                task.spawn(function()
                    local Element53 = State(Cache)

                    if Element53 then
                    end

                    _u2.RawName = "Hook: " .. "?"
                end)
            end

            Cache.RawName = "Hook"
        end()

        if not HookPoint then
            local v353 = HookPoint:GetAttributeChangedSignal("CarriedSurvivorId")
            v353 = v353:Connect(function()
                if State then
                    Cache.RawName = "Hook"
                    do return end
                end

                local Instance29 = State:GetAttribute("CarriedSurvivorId")

                if Instance29 then
                else
                    task.spawn(function()
                        local Element54 = State(Cache)

                        if Element54 then
                        end

                        _u2.RawName = "Hook: " .. "?"
                    end)
                end

                Cache.RawName = "Hook"
            end)
        end
    end,
    })
    Library4["AddObjectListener"](workspace["Map"], {
    ["Type"] = "Model",
    ["Recursive"] = true,
    ["Validator"] = function(Instance30)
        return Instance30.Name:match(Instance30.Name, "^Pallet")
        do return Instance30.Name:match end
    end,
    ["PrimaryPart"] = function(Instance31)
        return Instance31:FindFirstChild(Instance31, "HumanoidRootPart")
        do return Instance31:FindFirstChild end
    end,
    ["ColorDynamic"] = function() do return State.PalletColor.Value endend,
    ["IsEnabled"] = function()
        return State("PalletESP")
        do return State end
    end,
    ["OnAdded"] = function(Request89)
        function()
            local PalletPointSlide = State.Object:FindFirstChild("PalletPointSlide")

            if not PalletPointSlide then
                State.RawName = "Pallet (Used)"
            else
                State.RawName = "Pallet"
            end
        end()
        local v355 = Request89.Object.ChildAdded:Connect(function()
            local PalletPointSlide2 = State.Object:FindFirstChild("PalletPointSlide")

            if not PalletPointSlide2 then
                State.RawName = "Pallet (Used)"
            else
                State.RawName = "Pallet"
            end
        end)
        local v356 = Request89.Object.ChildRemoved:Connect(function()
            local PalletPointSlide3 = State.Object:FindFirstChild("PalletPointSlide")

            if not PalletPointSlide3 then
                State.RawName = "Pallet (Used)"
            else
                State.RawName = "Pallet"
            end
        end)
    end,
    })
    Library4["AddObjectListener"](workspace["Map"], {
    ["Recursive"] = true,
    ["Type"] = "Model",
    Name = "Gate",
    ["CustomName"] = "Gate",
    ["ColorDynamic"] = function() do return State.GateColor.Value endend,
    ["PrimaryPart"] = function(Instance32)
        return Instance32:FindFirstChildWhichIsA(Instance32, "BasePart")
        do return Instance32:FindFirstChildWhichIsA end
    end,
    ["IsEnabled"] = function() do return State.GateESP.Value endend,
    })
    v314 = Object.ReplicatedStorage:WaitForChild("Emotes")
    function()
        State = v357
        local Children2, Instance33, Instance34 = pairs(Cache:GetChildren())

        while true do
            local Instance35 = v360:IsA("Folder")

            if not Instance35 then
                table.insert(State, v360.Name)
            end

            for Offset30, Offset31 in Children2, Instance33, Instance34 do
            end
        end()
        Job13 = v27.Main:AddLeftGroupbox("Emotes")

        local function Job20(Request90)
            if State then
            else
                State:Stop()
                State = nil
            end

            if not Cache then
                Cache:Stop()
                Cache:Destroy()
                Cache = nil
            end

            local v363 = _u2:FindFirstChild(Request90)

            if v363 then
                do return end
            end

            local v364 = v363:GetAttribute("animationid")
            local v365 = v363:GetAttribute("Song")

            if not Element23.Character then
                local v366 = Element23.Character:FindFirstChildOfClass("Humanoid")

                if not v366 then
                    local v367 = Instance.new("Animation")
                    v367.AnimationId = v364
                    local v368 = v366:LoadAnimation(v367)
                    State = v368
                    State:Play(0.1, 1, 1)
                end

                if not v365 then

                    if v365 == ""
                else
                    v367 = Instance.new("Sound")
                    Cache = v367
                    Cache.SoundId = v365
                    v368 = Element23.Character:FindFirstChild("Head")

                    if not v368 then
                    else
                    end

                    Cache.Parent = Element23.Character.PrimaryPart
                    Cache:Play()
                end

            end

        end
    end

    Job21 = Job13:AddDropdown("Select Emote", {
    Values = Job11,
    Default = 1,
    Text = "Emotes",
    Callback = function(Request91)
        State = Request91

        if Cache then
        else

            if State then
            else
                _u2(State)
            end

        end
    end,
    })
    v286 = Job13:AddToggle("Play Emote", {
    Text = "Play Emote",
    Default = false,
    Callback = function(Request92)
        State = Request92

        if not State then

            if Cache then
            else
                _u2(Cache)
            else
            end

            if Element23 then
            else
                Element23:Stop()
                Element23 = nil
            end

            if _u4 then
            else
                _u4:Stop()
                _u4:Destroy()
                _u4 = nil
            end

        end
    end,
    })
    Job14 = v27.Visuals:AddLeftGroupbox("Shaders/Ambience")
    Job15 = Object.Lighting["FindFirstChild"]({})

    if Job15 then
        Job15 = Instance.new("ColorCorrectionEffect", Object.Lighting)
    end

    Job15.Name = "Obsidian_ColorCorrection"
    Job15["Enabled"] = false
    v281 = Instance.new("Sky")
    v281.Name = "Obsidian_CustomSky"
    v281["CelestialBodiesShown"] = false
    local Action, Routine, Signal = pairs(Job21)

    while true do
        table["insert"](v286, function(Request93)
            State = Request93

            if not State then

                if Cache then
                else
                    _u2(Cache)
                else
                end

                if Element23 then
                else
                    Element23:Stop()
                    Element23 = nil
                end

                if _u4 then
                else
                    _u4:Stop()
                    _u4:Destroy()
                    _u4 = nil
                end

            end
        end)

        for Worker, v369 in Action, Routine, Signal do
        end

        table["sort"](v286)
        Action = Job14:AddToggle("Ambience", {
        Text = "Ambience",
        Default = false,
        Callback = function(Request94)
            if not Request94 then
                State.Ambient = Cache.InsideAmbience.Value
                State.OutdoorAmbient = Cache.OutsideAmbience.Value
                local Connection3 = State:GetPropertyChangedSignal("Ambient")
                Connection3 = Connection3:Connect(function()
                    if not State.Ambience.Value then
                        Cache.Ambient = _u2.InsideAmbience.Value
                    end
                end)
                _u2.connections.Ambient = Connection3
                Connection3 = State:GetPropertyChangedSignal("OutdoorAmbient")
                Connection3 = Connection3:Connect(function()
                    if State.Ambience.Value then
                    else
                        Cache.OutdoorAmbient = _u2.OutsideAmbience.Value
                    end
                end)
                _u2.connections.OutdoorAmbient = Connection3
            else

                if _u2.connections.Ambient then
                else
                    _u2.connections.Ambient:Disconnect()
                end

                if _u2.connections.OutdoorAmbient then
                else
                    _u2.connections.OutdoorAmbient:Disconnect()
                end

                _u2.connections.Ambient = nil
                _u2.connections.OutdoorAmbient = nil
                State.Ambient = _u4
                State.OutdoorAmbient = _u5
            end
        end,
        })
        Executor = Action["AddColorPicker"](76, 236)
        Action["AddColorPicker"](Action, "InsideAmbience", {
        Default = Executor,
        Callback = function(Request95)
            if not State.Value then
                Cache.Ambient = Request95
            end
        end,
        })
        Executor = Action["AddColorPicker"](76, 236)
        Action["AddColorPicker"](Action, "OutsideAmbience", {
        Default = Executor,
        Callback = function(Request96)
            if not State.Value then
                Cache.OutdoorAmbient = Request96
            end
        end,
        })
        Routine = Job14:AddToggle("ForceTime", {
        Text = "Force Time",
        Default = false,
        Callback = function(Request97)
            if Request97 then
            else
                State.ClockTime = Cache.TimeSlider.Value
                local Connection4 = State:GetPropertyChangedSignal("ClockTime")
                Connection4 = Connection4:Connect(function()State.ClockTime = Cache.TimeSlider.Value end)
                _u2.connections.ClockTime = Connection4
            end

            if not _u2.connections.ClockTime then
                _u2.connections.ClockTime:Disconnect()
            end

            _u2.connections.ClockTime = nil
        end,
        })
        Job14:AddSlider("TimeSlider", {
        Text = "Time",
        Default = 12,
        Min = 0,
        Max = 24,
        Rounding = 1,
        ["Suffix"] = "hr",
        Callback = function(Request98)
            if not State.Value then
                Cache.ClockTime = Request98
            end
        end,
        })
        v369 = Job14:AddToggle("CustomSaturation", {
        Text = "Custom Saturation",
        Default = false,
        Callback = function(Instance36)
            State.Enabled = Instance36

            if Instance36 then
            else
                State.TintColor = Cache.SaturationTint.Value
                State.Saturation = Cache.SaturationDensity.Value / 50 -1
                local Connection5 = State:GetPropertyChangedSignal("TintColor")
                Connection5 = Connection5:Connect(function()
                    if not State.CustomSaturation.Value then
                        Cache.TintColor = _u2.SaturationTint.Value
                    end
                end)
                Element55 = Connection5
                Connection5 = State:GetPropertyChangedSignal("Saturation")
                Connection5 = Connection5:Connect(function()
                    if State.CustomSaturation.Value then
                    else
                        Cache.Saturation = Element55.SaturationDensity.Value / 50 -1
                    end
                end)
                Element56 = Connection5
                table.insert(_u5.connections, Element55)
                table.insert(_u5.connections, Element56)
            end

            if not Element55 then
                Element55:Disconnect()
            end

            if not Element56 then
                Element56:Disconnect()
            end

            Element55 = nil
            Element56 = nil
        end,
        })
        v94 = v369["AddColorPicker"](1, 1)
        v369["AddColorPicker"](v369, "SaturationTint", {
        Title = "Saturation Tint",
        Default = v94,
        Callback = function(Request99)
            if State.Value then
            else
                Cache.TintColor = Request99
            end
        end,
        })
        Job14:AddSlider("SaturationDensity", {
        Text = "Saturation Density",
        Default = 0,
        Min = 0,
        Max = 100,
        Rounding = 0,
        ["Suffix"] = "%",
        Callback = function(Request100)
            if State.Value then
            else
                Cache.Saturation = Request100 / 50 -1
            end
        end,
        })
        Executor = Job14:AddToggle("SkyboxChanger")
        Job16 = Job14:AddDropdown("SkyboxDropdown", {Default = "Redshift", Values = v286})

        local function Job22()
            local Sky = State:FindFirstChildOfClass("Sky")

            if not Sky then
            else
                do return end
            end

            if Cache then
                local v374, v375, v376 = pairs(Element55.Redshift)

                while true do
                    Element23[v377] = Sky[v377]

                    for v377, v378 in v374, v375, v376 do
                    end

                    Cache = true
                end

                if Element56.Value then
                else

                    if Element55[_u5.Value] then
                    else

                        if not _u6 then
                            _u6:Destroy()
                        end

                        v376 = Instance.new("Sky")
                        _u6 = v376
                        _u6.Name = "Obsidian_CustomSky"
                        _u6.CelestialBodiesShown = false
                        local v376, v377, v378 = pairs(Element55[_u5.Value])

                        while true do
                            _u6[Element23] = Sky[v377]
                            Sky[Element23] = ""

                            for v379, v380 in v376, v377, v378 do
                            end

                            _u6.Parent = State
                        end

                        if not _u6 then
                            _u6:Destroy()
                            _u6 = nil
                        end

                        if not Cache then
                            local v374, v375, v376 = pairs(Element23)

                            while true do
                                Sky[State] = v378

                                for v377, v378 in v374, v375, v376 do
                                end

                            end

                        end
                    end

                    local function Processor(Request101)
                        if not Request101 then
                            local Connection6 = Cache.ChildAdded:Connect(function(Instance37)
                                local Instance38 = Instance37:IsA("Sky")

                                if not Instance38 then

                                    if Instance37.Name ~= "Obsidian_CustomSky"

                                    if State.Value then
                                    else
                                        task.wait()
                                        Cache()
                                    end

                                end

                            end
                        end)
                        State.connections.SkyboxAdded = Connection6
                        Connection6 = Cache.ChildRemoved:Connect(function(Instance39)
                            if Instance39.Name == "Obsidian_CustomSky"

                            if State.Value then
                            else
                                task.wait()
                                Cache()
                            end

                        end
                    end)
                    State.connections.SkyboxRemoved = Connection6
                else

                    if not State.connections.SkyboxAdded then
                        State.connections.SkyboxAdded:Disconnect()
                    end

                    if State.connections.SkyboxRemoved then
                    else
                        State.connections.SkyboxRemoved:Disconnect()
                    end

                    State.connections.SkyboxAdded = nil
                    State.connections.SkyboxRemoved = nil
                end
            end

            Executor:OnChanged(function(Request102)
                State()
                Cache(Request102)
            end)
            Job16:OnChanged(Job14)
            Job14:AddDivider()

            local function ScreenGui()
                if State then
                    do return {} end
                end

                local v384, v385, v386 = ipairs(v383)

                while true do

                    for v387, v388 in v384, v385, v386 do
                    end

                    local v384, v385, v386 = ipairs(State:GetDescendants())

                    while true do
                        local v389 = "Head":IsA("BasePart")

                        if not v389 then

                            if not v390["Head".Name] then
                            else

                                if "Head".Parent then
                                else
                                    v389 = "Head".Parent:IsA("Accessory")

                                    if v389 then
                                    end

                                else
                                    table.insert(v391, "Head")
                                end

                            end

                        end

                        for v387, v388 in v384, v385, v386 do
                        end

                        do return {} end
                    end

                    local function TextButton()
                        State = v392
                        local Element57, Element58, Element59 = ipairs(Cache())

                        while true do
                            State[v395] = v396

                            for Offset32, Offset33 in Element57, Element58, Element59 do
                            end
                        end

                        local function UICorner()
                            local Element60, Element61, Element62 = pairs(State)

                            while true do

                                if v401 then
                                else

                                    if not v401.Parent then
                                        v401.Material = v402.Material
                                        v401.Color = v402.Color
                                    end

                                end

                                for Offset34, Offset35 in Element60, Element61, Element62 do
                                end
                            end

                            local function Listener(Request103)
                                local Element63, Element64, Element65 = ipairs(State())

                                while true do
                                    v406.Material = Enum.Material[Request103]

                                    for Offset36, Offset37 in Element63, Element64, Element65 do
                                    end
                                end

                                local function Job23(Request104)
                                    local Element66, Element67, Element68 = ipairs(State())

                                    while true do
                                        v412.Color = Request104

                                        for Offset38, Offset39 in Element66, Element67, Element68 do
                                        end
                                    end

                                    Toggle = Job14:AddToggle("BodyMaterial", {
                                    Text = "Body Modifier",
                                    Default = false,
                                    Tooltip = "Change your body to have a material and color from the options below.",
                                    Callback = function(Request105)
                                        if Request105 then
                                        else
                                            State()
                                            Cache(Element55.bodymaterialdropdown.Value)
                                            Element23(Element55.materialColor.Value)
                                        end

                                        Element56()
                                    end,
                                    })
                                    Job14:AddDropdown("bodymaterialdropdown", {
                                    Values = Hook3,
                                    Default = 1,
                                    Text = "Select Material",
                                    Tooltip = "Select the material for your body.",
                                    Callback = function(Request106)
                                        if State.BodyMaterial.Value then
                                        else
                                            Cache(Request106)
                                        end
                                    end,
                                    })
                                    Job17 = Job14["AddLabel"]({Text = "Material Color"})
                                    Hook2 = Job17["AddColorPicker"](255, 255)
                                    Job18 = Job17["AddColorPicker"](Job17, "materialColor", {
                                    Default = Hook2,
                                    Title = "Select Color",
                                    ["Transparency"] = 0,
                                    Callback = function(Request107)
                                        if not State.BodyMaterial.Value then
                                            Cache(Request107)
                                        end
                                    end,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Version V1.1", Size = 20, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Additions:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({
                                    Text = "+ Mask Selection\n+ Activate Mask\n+ Deactivate Mask\n+ Invisible Effect\n+ Invisible Keybind\n+ Invisible Button (for mobile only)\n+ Instant Heal Others\n+ Highlight Outline Color\n+ Hook Spam and Slider",
                                    Size = 16,
                                    ["DoesWrap"] = true,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Bugfixes/Changes:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({
                                    Text = "Individual generators now remove themselves after reaching 100%\nAuto Parry should now be fully fixed and work every round\nScript should be more optimized in general",
                                    Size = 16,
                                    ["DoesWrap"] = true,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Version V1.1.1", Size = 20, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Additions:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "No new features in this version", Size = 14, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Bugfixes/Changes:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({
                                    Text = "Fixed Pallets crashing your game when getting dropped on the killer while having No Slowdown on\nPerformance should be slightly better\nFixed speed boost going insane when using hook spam",
                                    Size = 16,
                                    ["DoesWrap"] = true,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Version V1.2", Size = 20, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Additions:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({
                                    Text = "+ Fast Vault\n+ Auto Parry Distance Slider\n+ No Hidden Ability Cooldowns",
                                    Size = 14,
                                    ["DoesWrap"] = true,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Bugfixes/Changes:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "No major bugfixes/changes in this version", Size = 14, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Version V1.3 (CURRENT)", Size = 20, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Additions:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({
                                    Text = "+ Gun Silent Aim\n+ Gun Silent Aim Part\n+ Spear Aimbot\n+ Spear Aim Key\n+ Spear Gravity\n+ Spear Projectile Speed\n+ Spear Aim Button (MOBILE)\n+ Lock Spear Button\n+ Spear Button Size",
                                    Size = 14,
                                    ["DoesWrap"] = true,
                                    })
                                    v27.Changelog["AddLabel"]({Text = "Bugfixes/Changes:", Size = 16, ["DoesWrap"] = true})
                                    v27.Changelog["AddLabel"]({Text = "Fixed generator color not changing when modified", Size = 14, ["DoesWrap"] = true})
                                    v27.Credits["AddLabel"]({Text = "This script was made by TexRBLX", Size = 20, ["DoesWrap"] = true})
                                    v27.Credits["AddLabel"]({Text = "You can join my server to leave suggestions & bug reports.", ["DoesWrap"] = true})
                                    v27.Credits:AddButton({
                                    Text = "Copy Invite Link",
                                    Func = function()
                                        setclipboard("https://discord.gg/38gFBKePFj")
                                        State:Notify({Title = "Discord", Description = "Copied Invite Link!", Time = 4})
                                    end,
                                    })
                                    v27.Credits:AddDivider()
                                    v27.Credits["AddLabel"]({Text = "UI is obsidian, library made by deivid.", ["DoesWrap"] = true})
                                    v27.Credits["AddLabel"]({Text = "ESP Library is a fork of kiriot22.", ["DoesWrap"] = true})
                                    Element69 = (v27["UI Settings"]):AddLeftGroupbox(function()
                                        State = Children2
                                        local Children3, Instance40, Instance41 = pairs(Cache:GetChildren())

                                        while true do
                                            local Instance42 = Offset31:IsA("Folder")

                                            if not Instance42 then
                                                table.insert(State, Offset31.Name)
                                            end

                                            for Offset40, Offset41 in Children3, Instance40, Instance41 do
                                            end
                                        end)
                                        Element69:AddButton({Text = "Unload")
                                        Element69 = (v27["UI Settings"])
                                            :AddLeftGroupbox("Menu", "wrench")
                                        Element69:AddToggle("KeybindMenuOpen", {
                                        Default = Library["KeybindFrame"].Visible,
                                        Text = "Open Keybind Menu",
                                        Callback = function(GuiObject4)State.KeybindFrame.Visible = GuiObject4 end,
                                        })
                                        Element69:AddToggle("ShowCustomCursor", {
                                        Text = "Custom Cursor",
                                        Default = true,
                                        Callback = function(Request108)State.ShowCustomCursor = Request108 end,
                                        })
                                        Element69:AddDropdown("NotificationSide", {
                                        Values = Job15,
                                        Default = "Right",
                                        Text = "Notification Side",
                                        Callback = function(Request109)State:SetNotifySide(Request109) end,
                                        })
                                        Element69:AddDropdown("DPIDropdown", {
                                        Values = Job15,
                                        Default = "100%",
                                        Text = "DPI Scale",
                                        Callback = function(Request110)
                                            local Element70 = Request110:gsub("%%", "")
                                            Element70 = tonumber(Element70)
                                            State:SetDPIScale(Element70)
                                        end,
                                        })
                                        Element69:AddDivider()
                                        Job11 = Element69["AddLabel"]("Menu bind")
                                        Job11:AddKeyPicker("MenuKeybind")
                                        Element69:AddButton("Unload", function()State:Unload() end)
                                        Library["ToggleKeybind"] = Library.Options["MenuKeybind"]
                                        Library2["SetLibrary"](Library)
                                        Library3["SetLibrary"](Library)
                                        Library3["IgnoreThemeSettings"]()
                                        Library3["SetIgnoreIndexes"]({"MenuKeybind"})
                                        Library2["SetFolder"]("TexRBLX")
                                        Library3["SetFolder"]("TexRBLX/VD-REWRITE")
                                        Library3["BuildConfigSection"](v27["UI Settings"])
                                        Library2["ApplyToTab"](v27["UI Settings"])
                                        Library3["LoadAutoloadConfig"]()                                 Library3["LoadAutoloadConfig"]()