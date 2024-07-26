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

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local torso = character:WaitForChild("HumanoidRootPart")

-- Toggle variable
local isFlying = false

-- Tween parameters
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true)
local tweenRotationInfo = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)

local flyTweenGoals = {
    Position = UDim2.new(0, torso.Position.X, 0, torso.Position.Y + 5) -- Hovering 5 studs above
}

local rotateTweenGoals = {
    CFrame = torso.CFrame * CFrame.Angles(0, math.rad(360), 0) -- Rotating around Y-axis
}

local flyTween = TweenService:Create(torso, tweenInfo, flyTweenGoals)
local rotateTween = TweenService:Create(torso, tweenRotationInfo, rotateTweenGoals)

local function startFlying()
    if not isFlying then
        isFlying = true
        flyTween:Play()
        rotateTween:Play()
        humanoid.Sit = false
    end
end

local function stopFlying()
    if isFlying then
        isFlying = false
        flyTween:Stop()
        rotateTween:Stop()
        humanoid.Sit = false
    end
end

-- Create a toggle button
Tab:AddToggle({
    Name = "Fly Toggle",
    Default = false,
    Callback = function(Value)
        if Value then
            startFlying()
        else
            stopFlying()
        end
    end    
})

-- Ensure the character starts in a default seated position if needed
humanoid.Sit = false


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

MiscSection:AddToggle({
    Name = "Enable CamLock",
    Default = false,
    Callback = function(Value)
        camLockEnabled = Value
        local Player = game.Players.LocalPlayer
        local Camera = game.Workspace.CurrentCamera

        if Value then
            -- CamLock logic here
            local function updateCamLock()
                while camLockEnabled do
                    wait()
                    local targetPlayer = nil
                    local closestDistance = math.huge

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
