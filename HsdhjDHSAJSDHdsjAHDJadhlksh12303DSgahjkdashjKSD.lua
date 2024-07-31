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

local VS = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local DH = Window:MakeTab({
    Name = "Da hood",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local LT2 = Window:MakeTab({
    Name = "Lumber Tycoon 2",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function createNotification(title, message)
    local notificationFrame = Instance.new("Frame", screenGui)
    local notificationTitle = Instance.new("TextLabel", notificationFrame)
    local notificationMessage = Instance.new("TextLabel", notificationFrame)

    -- Настройки начальных значений для уведомления
    notificationFrame.AnchorPoint = Vector2.new(1, 1)
    notificationFrame.Position = UDim2.new(1, -10, 1, -10)  -- Позиция справа снизу
    notificationFrame.Size = UDim2.new(0, 200, 0, 60)
    notificationFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.BackgroundTransparency = 0.5

    notificationTitle.Text = title
    notificationTitle.Size = UDim2.new(1, -10, 0.5, -5)
    notificationTitle.Position = UDim2.new(0, 5, 0, 5)
    notificationTitle.BackgroundTransparency = 1
    notificationTitle.TextColor3 = Color3.new(1, 1, 1)
    notificationTitle.TextScaled = true

    notificationMessage.Text = message
    notificationMessage.Size = UDim2.new(1, -10, 0.5, -5)
    notificationMessage.Position = UDim2.new(0, 5, 0.5, 0)
    notificationMessage.BackgroundTransparency = 1
    notificationMessage.TextColor3 = Color3.new(1, 1, 1)
    notificationMessage.TextScaled = true

    local uiCornerNotification = Instance.new("UICorner", notificationFrame)
    uiCornerNotification.CornerRadius = UDim.new(0, 10) -- Закругление углов

    -- Создаем tween для появления уведомления
    local notificationTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local notificationAppearGoals = {BackgroundTransparency = 0.5, Position = UDim2.new(1, -10, 1, -70)}
    local notificationDisappearGoals = {BackgroundTransparency = 1, Position = UDim2.new(1, -10, 1, -10)}

    local notificationAppearTween = TweenService:Create(notificationFrame, notificationTweenInfo, notificationAppearGoals)
    local notificationDisappearTween = TweenService:Create(notificationFrame, notificationTweenInfo, notificationDisappearGoals)

    -- Создаем tween для исчезновения текста
    local textFadeOutGoals = {TextTransparency = 1}
    local titleFadeOutTween = TweenService:Create(notificationTitle, notificationTweenInfo, textFadeOutGoals)
    local messageFadeOutTween = TweenService:Create(notificationMessage, notificationTweenInfo, textFadeOutGoals)

    -- Показ уведомления
    notificationAppearTween:Play()
    wait(3) -- Уведомление отображается в течение 3 секунд
    titleFadeOutTween:Play()
    messageFadeOutTween:Play()
    notificationDisappearTween:Play()

    notificationDisappearTween.Completed:Connect(function()
        notificationFrame:Destroy()
    end)
end



-- Adding features to the LT2 tab
LT2:AddButton({
    Name = "Wood R us",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(259.498, 3.16998, 57.6584)
            createNotification("Teleport", "Teleported to Wood R Us")
        end
    end
})

LT2:AddButton({
    Name = "Land Store",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(273.155, 3.08099, -97.9038)
            createNotification("Teleport", "Teleported to Land Store")
        end
    end
})

LT2:AddButton({
    Name = "Car shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(509.9, 3.13624, -1452.15)
            createNotification("Teleport", "Teleported to Car Shop")
        end
    end
})

LT2:AddButton({
    Name = "Furniture Shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(498.77, 3.05071, -1729.68)
            createNotification("Teleport", "Teleported to Furniture Shop")
        end
    end
})

LT2:AddButton({
    Name = "FineArt Shop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(5226.62, -166.177, 718.345)
            createNotification("Teleport", "Teleported to FineArt Shop")
        end
    end
})

LT2:AddButton({
    Name = "ShackShop",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(264.61, 8.25245, -2541.67)
            createNotification("Teleport", "Teleported to Shack Shop")
        end
    end
})

LT2:AddButton({
    Name = "Swamp Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-1090.67, 131.533, -1108.28)
            createNotification("Teleport", "Teleported to Swamp")
        end
    end
})

LT2:AddButton({
    Name = "Volcano Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-1661.97, 623, 1066.59)
            createNotification("Teleport", "Teleported to Volcano")
        end
    end
})

LT2:AddButton({
    Name = "Palm Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(1938.3, -5.91243, -1537.41)
            createNotification("Teleport", "Teleported to Palm")
        end
    end
})


local Section = Tab:AddSection({
	Name = "Player"
})



local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local speed = 16  -- Начальная скорость
local connection

-- Функция для перемещения с использованием CFrame
local function moveCharacter(character)
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart then
        -- Если уже существует подключение, отключаем его
        if connection then
            connection:Disconnect()
        end

        -- Подключаем событие RenderStepped
        connection = RunService.RenderStepped:Connect(function()
            if humanoidRootPart then
                local moveDirection = Vector3.new(0, 0, 0)

                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    moveDirection = moveDirection + humanoidRootPart.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    moveDirection = moveDirection - humanoidRootPart.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    moveDirection = moveDirection - humanoidRootPart.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    moveDirection = moveDirection + humanoidRootPart.CFrame.RightVector
                end

                if moveDirection.Magnitude > 0 then
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame + (moveDirection.Unit * speed / 50)
                end
            end
        end)
    end
end

-- Функция для обработки изменения персонажа
local function onCharacterAdded(character)
    moveCharacter(character)
end

-- Подключаем обработчик для добавления персонажа
player.CharacterAdded:Connect(onCharacterAdded)

-- Если персонаж уже существует, сразу вызываем функцию
if player.Character then
    moveCharacter(player.Character)
end

-- Добавляем ползунок на вкладку
Tab:AddSlider({
    Name = "CFrame Speed",
    Min = 0,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        speed = Value
    end    
})


Tab:AddSlider({
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

Tab:AddSlider({
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


local camLockEnabled = false
local targetPlayer = nil
local whitelist = {}
local attackMethod = "Normal"
local lastKilledPlayerPosition = nil
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")

local function getClosestPlayer()
    local Player = Players.LocalPlayer
    local Camera = Workspace.CurrentCamera
    local closestDistance = math.huge
    local closestPlayer = nil

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if not table.find(whitelist, player.Name) then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local distance = (Camera.CFrame.Position - player.Character.HumanoidRootPart.Position).magnitude
                    if distance < _G.camLockDistance and humanoid.Health > 10 and distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end

    return closestPlayer
end

local function onPlayerRemoved(player)
    if targetPlayer == player then
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            lastKilledPlayerPosition = player.Character.HumanoidRootPart.Position
        end
    end
end

local function updateCamLock()
    while camLockEnabled do
        wait()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition
            if _G.camLockTarget == "Head" and targetPlayer.Character:FindFirstChild("Head") then
                targetPosition = targetPlayer.Character.Head.Position
            else
                targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            end

            local playerRootPart = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if playerRootPart then
                if attackMethod == "Normal" then
                    playerRootPart.CFrame = CFrame.new(playerRootPart.Position, targetPosition)
                elseif attackMethod == "Above Head" then
                    local radius = 5
                    local height = 10
                    local angle = tick() * 2
                    local offset = Vector3.new(math.cos(angle) * radius, height, math.sin(angle) * radius)
                    local newPosition = targetPosition + offset

                    -- Check distance and adjust if necessary
                    local distance = (playerRootPart.Position - newPosition).magnitude
                    if distance > radius then
                        playerRootPart.CFrame = CFrame.new(newPosition, targetPosition)
                    end
                elseif attackMethod == "Circle Around" then
                    local radius = 10
                    local speed = 200
                    local angle = tick() * speed
                    local offset = Vector3.new(math.cos(angle) * radius, 0, math.sin(angle) * radius)
                    playerRootPart.CFrame = CFrame.new(targetPosition + offset, targetPosition)
                elseif attackMethod == "Air" then
                    local radius = 7
                    local speed = 100
                    local angle = tick() * speed
                    local offset = Vector3.new(math.cos(angle) * radius, 5, math.sin(angle) * radius)
                    playerRootPart.CFrame = CFrame.new(targetPosition + offset, targetPosition)
                end
            end

            local cameraPosition = Workspace.CurrentCamera.CFrame.Position
            local direction = (targetPosition - cameraPosition).unit
            Workspace.CurrentCamera.CFrame = CFrame.new(cameraPosition, targetPosition)
        else
            targetPlayer = getClosestPlayer()
        end
    end
end

-- Connect to player removal event
Players.PlayerRemoving:Connect(onPlayerRemoved)

local Section = DH:AddSection({
    Name = "CamLock"
})

DH:AddBind({
    Name = "Toggle CamLock",
    Default = Enum.KeyCode.Q,
    Hold = false,
    Callback = function()
        camLockEnabled = not camLockEnabled
        if camLockEnabled then
            targetPlayer = getClosestPlayer()
            spawn(updateCamLock)
        else
            Workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character.Humanoid
        end
    end    
}) 

DH:AddSlider({
    Name = "Distance",
    Min = 0,
    Max = 50,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "units",
    Callback = function(Value)
        _G.camLockDistance = Value
    end
})

DH:AddDropdown({
    Name = "Target Body Part",
    Default = "Head",
    Options = {"Head", "Torso", "HumanoidRootPart"},
    Callback = function(Value)
        _G.camLockTarget = Value
    end    
})

DH:AddDropdown({
    Name = "Attack Method",
    Default = "Normal",
    Options = {"Normal", "Above Head", "Circle Around", "Air"},
    Callback = function(Value)
        attackMethod = Value
    end    
})

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.Q and camLockEnabled and not gameProcessedEvent then
        targetPlayer = getClosestPlayer()
    end
end)



local Section = DH:AddSection({
	Name = "Other"
})

-- Define the toggle and callback function
DH:AddToggle({
    Name = "fake lag!",
    Default = false,
    Callback = function(Value)
        -- Get the player's character
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        -- Define a variable to control the loop
        local toggleEnabled = Value
        
        -- Function to handle the teleportation loop
        local function teleportLoop()
            while toggleEnabled do
                -- Save the original position
                local originalPosition = character.HumanoidRootPart.Position

                -- Set the new position under the map
                local newPosition = originalPosition - Vector3.new(0, 500, 0) -- Adjust the Y offset as needed

                -- Teleport the player under the map
                character.HumanoidRootPart.CFrame = CFrame.new(newPosition)

                -- Wait for a short duration
                wait(0.5)

                -- Teleport the player back to the original position
                character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)

                -- Wait for a short duration before repeating
                wait(0.5)
            end
        end

        -- Start or stop the teleportation loop based on the toggle state
        if Value then
            -- Start the teleportation loop in a separate thread
            spawn(teleportLoop)
        else
            -- Stop the teleportation loop
            toggleEnabled = false
        end
    end    
})


DH:AddButton({
	Name = "Animations Gamepass",
	Callback = function()
      		--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
     -- // clone
            for _, v in next, game:GetService("CoreGui"):GetChildren() do
                if (v.Name:match("FreeAnimationPack")) then
                    v:Destroy()
                end
            end
        
            -- // Instances
            local FreeAnimationPack = Instance.new("ScreenGui")
            local AnimationPack = Instance.new("TextButton")
            local Animations = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local Lean = Instance.new("TextButton")
            local Lay = Instance.new("TextButton")
            local Dance1 = Instance.new("TextButton")
            local Dance2 = Instance.new("TextButton")
            local Greet = Instance.new("TextButton")
            local ChestPump = Instance.new("TextButton")
            local Praying = Instance.new("TextButton")
            local Stop = Instance.new("TextButton")
            local UniversalAnimation = Instance.new("Animation")
        
            -- // Utility
            function stopTracks()
                for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    if (v.Animation.AnimationId:match("rbxassetid")) then
                        v:Stop()
                    end
                end
            end
        
            function loadAnimation(id)
                if UniversalAnimation.AnimationId == id then
                    stopTracks()
                    UniversalAnimation.AnimationId = "1"
                else
                    UniversalAnimation.AnimationId = id
                    local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
                    animationTrack:Play()
                end
            end
        

            FreeAnimationPack.Name = "FreeAnimationPack"
            FreeAnimationPack.Parent = game.CoreGui
            FreeAnimationPack.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
            AnimationPack.Name = "AnimationPack"
            AnimationPack.Parent = FreeAnimationPack
            AnimationPack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AnimationPack.BorderSizePixel = 0
            AnimationPack.Position = UDim2.new(0, 0, 0.388007045, 0)
            AnimationPack.Size = UDim2.new(0, 100, 0, 20)
            AnimationPack.Font = Enum.Font.SourceSansBold
            AnimationPack.Text = "Animations"
            AnimationPack.TextColor3 = Color3.fromRGB(0, 0, 0)
            AnimationPack.TextSize = 18.000
            AnimationPack.MouseButton1Click:Connect(function()
                if (Animations.Visible == false) then
                    Animations.Visible = true
                end
            end)
        
            Animations.Name = "Animations"
            Animations.Parent = AnimationPack
            Animations.Active = true
            Animations.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
            Animations.Position = UDim2.new(-0.104712225, 0, -1.54173493, 0)
            Animations.Size = UDim2.new(0, 120, 0, 195)
            Animations.Visible = false
            Animations.CanvasPosition = Vector2.new(0, 60.0000305)
            Animations.CanvasSize = UDim2.new(0, 0, 1, 235)
        
            UIListLayout.Parent = Animations
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 2)
        
            Lean.Name = "Lean"
            Lean.Parent = Animations
            Lean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Lean.Size = UDim2.new(1, 0, 0, 30)
            Lean.Font = Enum.Font.SourceSansBold
            Lean.Text = "Lean"
            Lean.TextColor3 = Color3.fromRGB(0, 0, 0)
            Lean.TextSize = 14.000
            Lean.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3152375249")
            end)
        
            Lay.Name = "Lay"
            Lay.Parent = Animations
            Lay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Lay.Size = UDim2.new(1, 0, 0, 30)
            Lay.Font = Enum.Font.SourceSansBold
            Lay.Text = "Lay"
            Lay.TextColor3 = Color3.fromRGB(0, 0, 0)
            Lay.TextSize = 14.000
            Lay.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3152378852")
            end)
        
            Dance1.Name = "Dance1"
            Dance1.Parent = Animations
            Dance1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dance1.Size = UDim2.new(1, 0, 0, 30)
            Dance1.Font = Enum.Font.SourceSansBold
            Dance1.Text = "Dance1"
            Dance1.TextColor3 = Color3.fromRGB(0, 0, 0)
            Dance1.TextSize = 14.000
            Dance1.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3189773368")
            end)
        
            Dance2.Name = "Dance2"
            Dance2.Parent = Animations
            Dance2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dance2.Size = UDim2.new(1, 0, 0, 30)
            Dance2.Font = Enum.Font.SourceSansBold
            Dance2.Text = "Dance2"
            Dance2.TextColor3 = Color3.fromRGB(0, 0, 0)
            Dance2.TextSize = 14.000
            Dance2.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3189776546")
            end)
        
            Greet.Name = "Greet"
            Greet.Parent = Animations
            Greet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Greet.Size = UDim2.new(1, 0, 0, 30)
            Greet.Font = Enum.Font.SourceSansBold
            Greet.Text = "Greet"
            Greet.TextColor3 = Color3.fromRGB(0, 0, 0)
            Greet.TextSize = 14.000
            Greet.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
            end)
        
            ChestPump.Name = "ChestPump"
            ChestPump.Parent = Animations
            ChestPump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ChestPump.Size = UDim2.new(1, 0, 0, 30)
            ChestPump.Font = Enum.Font.SourceSansBold
            ChestPump.Text = "Chest Pump"
            ChestPump.TextColor3 = Color3.fromRGB(0, 0, 0)
            ChestPump.TextSize = 14.000
            ChestPump.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3189779152")
            end)
        
            Praying.Name = "Praying"
            Praying.Parent = Animations
            Praying.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Praying.Size = UDim2.new(1, 0, 0, 30)
            Praying.Font = Enum.Font.SourceSansBold
            Praying.Text = "Praying"
            Praying.TextColor3 = Color3.fromRGB(0, 0, 0)
            Praying.TextSize = 14.000
            Praying.MouseButton1Click:Connect(function()
                stopTracks()
                loadAnimation("rbxassetid://3487719500")
            end)
        
            Stop.Name = "Stop"
            Stop.Parent = Animations
            Stop.BackgroundColor3 = Color3.fromRGB(255, 112, 112)
            Stop.Size = UDim2.new(1, 0, 0, 30)
            Stop.Font = Enum.Font.SourceSansBold
            Stop.Text = "Stop Animation"
            Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
            Stop.TextSize = 14.000
            Stop.MouseButton1Click:Connect(function()
                stopTracks()
            end)
            --close gui
            local plr = game.Players.LocalPlayer
        
            plr:GetMouse().KeyDown:Connect(function(K)
                if K == "p" then
                    Animations.Visible = false
                end
            end)
        warn("loaded")
  	end    
})



local Section = DH:AddSection({
	Name = "CamLock WhiteList"
})

DH:AddTextbox({
    Name = "Add to Whitelist",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        table.insert(whitelist, Value)
        print("Added to whitelist: " .. Value)
    end
})

DH:AddTextbox({
    Name = "Remove from Whitelist",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local index = table.find(whitelist, Value)
        if index then
            table.remove(whitelist, index)
            print("Removed from whitelist: " .. Value)
        end
    end
})

-- ServerScriptService.Script

local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

-- Сообщение по умолчанию
local defaultMessage = "RezCokk gg"

-- Функция для отправки сообщения в чат
local function sendMessage(message, player)
    local character = player.Character
    if character then
        local head = character:FindFirstChild("Head")
        if head then
            Chat:Chat(head, message, Enum.ChatColor.Red)
        end
    end
end

-- StarterPlayerScripts.LocalScript

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local ChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
local SayMessageRequest = ChatEvents:WaitForChild("SayMessageRequest")

-- Функция для отправки сообщения в чат
local function say(message)
    SayMessageRequest:FireServer(message, "All")
end

-- Обработчик нажатия клавиши
local function onKeyPress(input, gameProcessedEvent)
    if gameProcessedEvent then return end -- Игнорируем нажатия, обработанные другими UI

    if input.KeyCode == Enum.KeyCode.Z then
    end
end

-- Подключаем обработчик к событию ввода
UserInputService.InputBegan:Connect(onKeyPress)


