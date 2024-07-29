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

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local TweenService = game:GetService("TweenService")

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

local Section = LT2:AddSection({
	Name = "Shops"
})

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

local Section = LT2:AddSection({
	Name = "Biomes"
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

LT2:AddButton({
    Name = "Cave Location",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(3511.34, -196.173, 449.8)
            createNotification("Teleport", "Teleported to Cave")
        end
    end
})

local Section = LT2:AddSection({
	Name = "Dupe"
})


-- Add a dropdown for slot selection
Tab:AddDropdown({
    Name = "Select Slot",
    Default = "1",  -- Default selected value
    Options = {"1", "2", "3", "4", "5"},  -- Options for slots
    Callback = function(selectedSlot)
        -- This function will be called when a slot is selected from the dropdown
        print("Selected Slot: " .. selectedSlot)
        _G.SelectedSlot = tonumber(selectedSlot)  -- Store the selected slot in a global variable
    end    
})

-- Modify the existing "Dupe Axe | Volcano method" button to use the selected slot
LT2:AddButton({
    Name = "Dupe Axe | Volcano method",
    Callback = function()
        local player = game.Players.LocalPlayer

        -- Check if the selected slot is set
        if not _G.SelectedSlot then
            createNotification("Error", "Please select a slot first")
            return
        end

        local slotNumber = _G.SelectedSlot  -- Use the selected slot

        -- Function to save the slot
        local function saveSlot(slot)
            local saveSlotEvent = game:GetService("ReplicatedStorage"):WaitForChild("LoadSaveRequests"):WaitForChild("RequestSave")
            saveSlotEvent:InvokeServer(slot)
        end

        -- Function to load the slot
        local function loadSlot(slot)
            local loadSlotEvent = game:GetService("ReplicatedStorage"):WaitForChild("LoadSaveRequests"):WaitForChild("RequestLoad")
            loadSlotEvent:InvokeServer(slot)
        end

        -- Function to reload the slot
        local function reloadSlot(slot)
            saveSlot(slot)
            loadSlot(slot)
        end

        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            -- Teleport the player
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-2092.05, 365.865, 94.582)
            createNotification("Teleport", "Teleported to coordinates")

            -- Reload the slot
            reloadSlot(slotNumber)
            createNotification("Slot", "Slot reloaded")
            wait(4)
        end
    end
})


local speed = 0  -- Начальная скорость

-- Функция для перемещения с использованием CFrame
local function moveCharacter(character)
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart then
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")

        RunService.RenderStepped:Connect(function()
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

-- Функция для обработки нового персонажа
local function onCharacterAdded(character)
    moveCharacter(character)
end

-- Подключение обработчика для текущего персонажа
if game.Players.LocalPlayer.Character then
    onCharacterAdded(game.Players.LocalPlayer.Character)
end

-- Подключение обработчика для новых персонажей
game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- Добавляем ползунок на вкладку
Tab:AddSlider({
    Name = "CFrame Speed",
    Min = 0,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        speed = Value
    end    
})


-- Запускаем функцию перемещения
moveCharacter()

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

Tab:AddToggle({
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
            local BodyGyro = Instance.new("BodyGyro")
            local BodyVelocity = Instance.new("BodyVelocity")

            BodyGyro.P = 9e4
            BodyGyro.Parent = HumanoidRootPart
            BodyVelocity.Parent = HumanoidRootPart

            local function fly()
                while _G.Fly do
                    wait()
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
            end
            
            spawn(fly)
        else
            -- Disable fly logic here
            BodyGyro:Destroy()
            BodyVelocity:Destroy()
        end
    end    
})

Tab:AddSlider({
    Name = "Fly Speed",
    Min = 1,
    Max = 10,
    Default = 2,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        _G.FlySpeed = Value
    end    
})

MiscTab:AddToggle({
    Name = "Enable CamLock",
    Default = false,
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Camera = game.Workspace.CurrentCamera
        local camLockEnabled = Value

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

