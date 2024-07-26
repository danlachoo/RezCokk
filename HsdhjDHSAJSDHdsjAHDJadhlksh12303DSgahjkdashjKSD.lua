local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = OrionLib:MakeWindow({
    Name = "RezCokk",
    HidePremium = false,
    IntroText = "RezCokk",
    SaveConfig = true,
    ConfigFolder = "RezCokk"
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local LT2 = Window:MakeTab({
    Name = "Lumber Tycoon 2",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SectionShops = LT2:AddSection({
    Name = "Shops"
})

LT2:AddButton({
    Name = "Wood R us",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(259.498, 3.16998, 57.6584)
        end
    end
})

LT2:AddButton({
    Name = "Land Store",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(273.155, 3.08099, -97.9038)
        end
    end
})

LT2:AddButton({
    Name = "Car shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(509.9, 3.13624, -1452.15)
        end
    end
})

LT2:AddButton({
    Name = "Furniture Shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(498.77, 3.05071, -1729.68)
        end
    end
})

LT2:AddButton({
    Name = "FineArt Shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(5226.62, -166.177, 718.345)
        end
    end
})

LT2:AddButton({
    Name = "ShackShop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(264.61, 8.25245, -2541.67)
        end
    end
})

local SectionBiomes = LT2:AddSection({
    Name = "Biomes"
})

LT2:AddButton({
    Name = "Swamp Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-1090.67, 131.533, -1108.28)
        end
    end
})

LT2:AddButton({
    Name = "Volcano Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-1661.97, 623, 1066.59)
        end
    end
})

LT2:AddButton({
    Name = "Palm Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(1938.3, -5.91243, -1537.41)
        end
    end
})

-- Adding features to the Main tab
local SectionPlayer = Tab:AddSection({
    Name = "Player"
})

SectionPlayer:AddSlider({
    Name = "Walkspeed",
    Min = 0,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

SectionPlayer:AddSlider({
    Name = "Jump Power",
    Min = 0,
    Max = 200,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

SectionPlayer:AddSlider({
    Name = "Field of View",
    Min = 90,
    Max = 120,
    Default = 90,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "FOV",
    Callback = function(Value)
        game.Workspace.CurrentCamera.FieldOfView = Value
    end    
})

local SectionCFrameFly = Tab:AddSection({
    Name = "CFrame Fly"
})

SectionCFrameFly:AddToggle({
    Name = "Enable Fly",
    Default = false,
    Callback = function(Value)
        _G.Fly = Value
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        
        if Value then
            -- Fly logic here
            local FlySpeed = 2 -- Change the speed as needed
            local flying = true
            local BodyGyro = Instance.new("BodyGyro")
            local BodyVelocity = Instance.new("BodyVelocity")

            BodyGyro.P = 9e4
            BodyGyro.Parent = HumanoidRootPart
            BodyVelocity.Parent = HumanoidRootPart

            while _G.Fly do
                wait()
                HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                local Control = {F = 0, B = 0, L = 0, R = 0}
                local MaxSpeed = FlySpeed
                local Camera = game.Workspace.CurrentCamera

                local LookVector = Camera.CFrame.lookVector
                Control.F = (game.UserInputService:IsKeyDown(Enum.KeyCode.W) and 1 or 0)
                Control.B = (game.UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0)
                Control.L = (game.UserInputService:IsKeyDown(Enum.KeyCode.A) and 1 or 0)
                Control.R = (game.UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or 0)

                BodyVelocity.Velocity = ((LookVector * (Control.F - Control.B)) + ((Camera.CFrame * CFrame.new(Control.L - Control.R, 0, 0)).p - Camera.CFrame.p)) * MaxSpeed
                BodyGyro.CFrame = Camera.CFrame
            end

            BodyGyro:Destroy()
            BodyVelocity:Destroy()
        else
            -- Disable fly logic here
            flying = false
        end
    end    
})

SectionCFrameFly:AddSlider({
    Name = "Fly Speed",
    Min = 1,
    Max = 10,
    Default = 2,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        FlySpeed = Value
    end    
})

-- Adding the Misc tab
local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local MiscSection = MiscTab:AddSection({
    Name = "CamLock"
})

local camLockEnabled = false
local camLockDistance = 100

MiscSection:AddToggle({
    Name = "Enable CamLock",
    Default = false,
    Callback = function(Value)
        camLockEnabled = Value
        local Player = game.Players.LocalPlayer
        local Camera = game.Workspace.CurrentCamera

        if Value then
            local function updateCamLock()
                while camLockEnabled do
                    wait()
                    local targetPlayer = nil
                    local closestDistance = camLockDistance

                    for _, player in pairs(game.Players:GetPlayers()) do
                        if player ~= Player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local distance = (Camera.CFrame.Position - player.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance then
                                closestDistance = distance
                                targetPlayer = player
                            end
                        end
                    end

                    if targetPlayer then
                        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPlayer.Character.HumanoidRootPart.Position)
                    end
                end
            end

            -- Start CamLock logic
            spawn(updateCamLock)
        else
            -- Stop CamLock logic
            camLockEnabled = false
        end
    end    
})

MiscSection:AddSlider({
    Name = "CamLock Distance",
    Min = 50,
    Max = 500,
    Default = 100,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Distance",
    Callback = function(Value)
        camLockDistance = Value
    end    
})

-- Adding Da Hood tab
local DaHoodTab = Window:MakeTab({
    Name = "Da Hood",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local CamLockSection = DaHoodTab:AddSection({
    Name = "CamLock"
})

local camLockEnabledDaHood = false
local camLockDistanceDaHood = 100

CamLockSection:AddToggle({
    Name = "Enable CamLock",
    Default = false,
    Callback = function(Value)
        camLockEnabledDaHood = Value
        local Player = game.Players.LocalPlayer
        local Camera = game.Workspace.CurrentCamera

        if Value then
            local function updateCamLock()
                while camLockEnabledDaHood do
                    wait()
                    local targetPlayer = nil
                    local closestDistance = camLockDistanceDaHood

                    for _, player in pairs(game.Players:GetPlayers()) do
                        if player ~= Player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local distance = (Camera.CFrame.Position - player.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance then
                                closestDistance = distance
                                targetPlayer = player
                            end
                        end
                    end

                    if targetPlayer then
                        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPlayer.Character.HumanoidRootPart.Position)
                    end
                end
            end

            -- Start CamLock logic
            spawn(updateCamLock)
        else
            -- Stop CamLock logic
            camLockEnabledDaHood = false
        end
    end    
})

CamLockSection:AddSlider({
    Name = "CamLock Distance",
    Min = 50,
    Max = 500,
    Default = 100,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Distance",
    Callback = function(Value)
        camLockDistanceDaHood = Value
    end    
})

-- Adding ESP features to Da Hood tab
local EspSection = DaHoodTab:AddSection({
    Name = "ESP"
})

local function add3DBox(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local box = Instance.new("BoxHandleAdornment")
        box.Adornee = character.HumanoidRootPart
        box.Size = character.HumanoidRootPart.Size
        box.Color3 = Color3.fromRGB(255,0,0)
        box.Transparency = 0.5
        box.Parent = character
    end
end

local function remove3DBoxes()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            for _, child in pairs(player.Character:GetChildren()) do
                if child:IsA("BoxHandleAdornment") then
                    child:Destroy()
                end
            end
        end
    end
end

EspSection:AddToggle({
    Name = "Enable 3D Hitboxes",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, player in pairs(game.Players:GetPlayers()) do
                add3DBox(player)
            end
        else
            remove3DBoxes()
        end
    end
})

EspSection:AddToggle({
    Name = "Enable Names ESP",
    Default = false,
    Callback = function(Value)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                if Value then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Adornee = player.Character.HumanoidRootPart
                    billboardGui.Size = UDim2.new(0, 200, 0, 50)
                    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                    billboardGui.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Parent = billboardGui
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = player.Name
                    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    textLabel.TextStrokeTransparency = 0
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    
                    billboardGui.Parent = player.Character
                end
            end
        end
    end
})
