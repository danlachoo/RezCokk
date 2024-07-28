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

-- Добавляем кнопку для телепортации и перезагрузки слота в LT2 вкладку
LT2:AddButton({
    Name = "Teleport and Reload Slot",
    Callback = function()
        local player = game.Players.LocalPlayer
        local slotNumber = 2  -- Номер слота, который нужно перезагрузить

        -- Функция для сохранения слота
        local function saveSlot(slot)
            local saveSlotEvent = game:GetService("ReplicatedStorage"):WaitForChild("LoadSaveRequests"):WaitForChild("RequestSave")
            saveSlotEvent:InvokeServer(slot)
        end

        -- Функция для загрузки слота
        local function loadSlot(slot)
            local loadSlotEvent = game:GetService("ReplicatedStorage"):WaitForChild("LoadSaveRequests"):WaitForChild("RequestLoad")
            loadSlotEvent:InvokeServer(slot)
        end

        -- Перезагрузка слота
        local function reloadSlot(slot)
            saveSlot(slot)
            loadSlot(slot)
        end

        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            -- Телепортация игрока
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-2092.05, 365.865, 923.582)
            createNotification("Teleport", "Teleported to coordinates")

            -- Перезагрузка слота
            reloadSlot(slotNumber)
            createNotification("Slot", "Slot reloaded")
        end
    end
})


-- Adding features to the Main tab
Tab:AddSlider({
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

-- Record Tool Variables
local recording = false
local replaying = false
local recordedPositions = {}
local recordStartTime = 0

-- Timer Function
local function startTimer(duration)
    local startTime = tick()
    while tick() - startTime < duration do
        wait(1)
        createNotification("Timer", tostring(math.floor(duration - (tick() - startTime))) .. " seconds remaining")
    end
    createNotification("Timer", "Time's up!")
end

-- Record Tool Buttons
MiscTab:AddButton({
    Name = "Start Recording",
    Callback = function()
        if not recording then
            recording = true
            recordedPositions = {}
            recordStartTime = tick()
            createNotification("Record", "Recording started")
        else
            createNotification("Record", "Already recording")
        end
    end
})

MiscTab:AddButton({
    Name = "Stop Recording",
    Callback = function()
        if recording then
            recording = false
            createNotification("Record", "Recording stopped")
        else
            createNotification("Record", "Not recording")
        end
    end
})

MiscTab:AddButton({
    Name = "Save Recording",
    Callback = function()
        if #recordedPositions > 0 then
            -- Save the recording to a file or datastore (this part can vary based on the platform)
            -- For demonstration, we'll just create a notification
            createNotification("Record", "Recording saved")
        else
            createNotification("Record", "No recording to save")
        end
    end
})

MiscTab:AddButton({
    Name = "Play Recording",
    Callback = function()
        if not replaying and #recordedPositions > 0 then
            replaying = true
            createNotification("Record", "Replaying recording")
            for _, posData in pairs(recordedPositions) do
                if replaying then
                    local elapsedTime = tick() - recordStartTime
                    if elapsedTime < posData.time then
                        wait(posData.time - elapsedTime)
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = posData.cframe
                end
            end
            replaying = false
            createNotification("Record", "Replay finished")
        else
            createNotification("Record", "No recording to play or already replaying")
        end
    end
})

-- Timer Button
MiscTab:AddButton({
    Name = "Start 10 Seconds Timer",
    Callback = function()
        startTimer(10)
    end
})

-- Update Recorded Positions
game:GetService("RunService").Stepped:Connect(function()
    if recording then
        table.insert(recordedPositions, {time = tick() - recordStartTime, cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
    end
end)
