local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

-- Создаем новый GUI
local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", screenGui)
local imageLabel2 = Instance.new("ImageLabel", frame)
local imageLabel = Instance.new("ImageLabel", frame)
local overlayFrame = Instance.new("Frame", frame)
local overlayButton = Instance.new("TextButton", screenGui) -- Перемещаем кнопку в screenGui
local infoLabel = Instance.new("ImageButton", frame)
local textLabel = Instance.new("TextLabel", frame)
local closeButton = Instance.new("TextButton", frame)
local button2 = Instance.new("ImageButton", frame)
local button3 = Instance.new("ImageButton", frame)

-- Настройки начальных значений
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BorderSizePixel = 0

imageLabel2.Size = UDim2.new(0, 52, 0, 52)
imageLabel2.Position = UDim2.new(0.0, 0, 0.0, 0)
imageLabel2.AnchorPoint = Vector2.new(0, 0)
imageLabel2.BackgroundTransparency = 1
imageLabel2.Image = "rbxassetid://18663149111" -- Пример иконки
imageLabel2.ImageTransparency = 1 -- Изначально прозрачный

textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.057, 0, 0, 0)
textLabel.AnchorPoint = Vector2.new(0, 0)
textLabel.Text = "RezCokk"
textLabel.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextTransparency = 1 -- Изначально прозрачный

imageLabel.Size = UDim2.new(0, 199, 0, 126)
imageLabel.Position = UDim2.new(0.122, 0, 0.228, 0)
imageLabel.AnchorPoint = Vector2.new(0, 0)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = "rbxassetid://18664503869" -- Иконка ImageLabel

overlayFrame.Size = UDim2.new(0, 199, 0, 40)
overlayFrame.Position = UDim2.new(0.122, 0, 0.475, 0)
overlayFrame.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
overlayFrame.ZIndex = 2 -- Помещаем поверх ImageLabel

-- Настройки кнопки на верхнем уровне
overlayButton.Size = UDim2.new(0, 83, 0, 23)
overlayButton.Position = UDim2.new(0.5, 0, 0.05, 0) -- Позиция на экране
overlayButton.AnchorPoint = Vector2.new(0.5, 0)
overlayButton.BackgroundColor3 = Color3.new(1, 1, 1) -- Белый цвет фона кнопки
overlayButton.Text = "Execute"
overlayButton.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста кнопки
overlayButton.TextScaled = true
overlayButton.Font = Enum.Font.SourceSansBold
overlayButton.BackgroundTransparency = 1 -- Изначально прозрачный
overlayButton.TextTransparency = 1 -- Изначально прозрачный
overlayButton.ZIndex = 3 -- Поверх остальных элементов

infoLabel.Size = UDim2.new(0, 52, 0, 52)
infoLabel.Position = UDim2.new(0, 0, 0.854, 0)
infoLabel.AnchorPoint = Vector2.new(0, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.Image = "rbxassetid://18663904819" -- Иконка infoLabel
infoLabel.ImageTransparency = 1 -- Изначально прозрачный

-- Настройки кнопки закрытия
closeButton.Size = UDim2.new(0, 52, 0, 52)
closeButton.Position = UDim2.new(1, 0, 0, 0)
closeButton.AnchorPoint = Vector2.new(1, 0)
closeButton.BackgroundColor3 = Color3.new(1, 1, 1) -- Белый цвет фона кнопки
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(0, 0, 0) -- Черный цвет текста кнопки
closeButton.TextScaled = true
closeButton.Font = Enum.Font.SourceSansBold
closeButton.BackgroundTransparency = 1 -- Изначально прозрачный
closeButton.TextTransparency = 1 -- Изначально прозрачный

-- Настройки второй кнопки
button2.Size = UDim2.new(0, 52, 0, 52)
button2.Position = UDim2.new(0, 0, 0.708, 0)
button2.AnchorPoint = Vector2.new(0, 0)
button2.BackgroundTransparency = 1
button2.Image = "rbxassetid://6663675885" -- Иконка второй кнопки
button2.ImageTransparency = 1 -- Изначально прозрачный

-- Настройки третьей кнопки
button3.Size = UDim2.new(0, 52, 0, 52)
button3.Position = UDim2.new(0, 0, 0.562, 0)
button3.AnchorPoint = Vector2.new(0, 0)
button3.BackgroundTransparency = 1
button3.Image = "rbxassetid://4621599120" -- Иконка третьей кнопки
button3.ImageTransparency = 1 -- Изначально прозрачный

-- Tween для появления фрейма из центра
local openTweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local openTweenGoals = {Size = UDim2.new(0, 645, 0, 356)}

local openTween = TweenService:Create(frame, openTweenInfo, openTweenGoals)

-- Tween для появления текста, иконки и кнопок
local appearTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local appearTextGoals = {TextTransparency = 0}
local appearImageGoals = {ImageTransparency = 0}
local appearButtonGoals = {TextTransparency = 0, BackgroundTransparency = 1}
local appearInfoLabelGoals = {ImageTransparency = 0}
local appearButton2Goals = {ImageTransparency = 0}
local appearButton3Goals = {ImageTransparency = 0}

local textAppearTween = TweenService:Create(textLabel, appearTweenInfo, appearTextGoals)
local imageAppearTween = TweenService:Create(imageLabel, appearTweenInfo, appearImageGoals)
local imageLabel2AppearTween = TweenService:Create(imageLabel2, appearTweenInfo, appearImageGoals)
local buttonAppearTween = TweenService:Create(closeButton, appearTweenInfo, appearButtonGoals)
local infoLabelAppearTween = TweenService:Create(infoLabel, appearTweenInfo, appearInfoLabelGoals)
local button2AppearTween = TweenService:Create(button2, appearTweenInfo, appearButton2Goals)
local button3AppearTween = TweenService:Create(button3, appearTweenInfo, appearButton3Goals)

-- Tween для исчезновения текста, иконки и кнопок
local disappearTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local disappearTextGoals = {TextTransparency = 1}
local disappearImageGoals = {ImageTransparency = 1}
local disappearButtonGoals = {TextTransparency = 1, BackgroundTransparency = 1}
local disappearInfoLabelGoals = {ImageTransparency = 1}
local disappearButton2Goals = {ImageTransparency = 1}
local disappearButton3Goals = {ImageTransparency = 1}

local textDisappearTween = TweenService:Create(textLabel, disappearTweenInfo, disappearTextGoals)
local imageDisappearTween = TweenService:Create(imageLabel, disappearTweenInfo, disappearImageGoals)
local imageLabel2DisappearTween = TweenService:Create(imageLabel2, disappearTweenInfo, disappearImageGoals)
local buttonDisappearTween = TweenService:Create(closeButton, disappearTweenInfo, disappearButtonGoals)
local infoLabelDisappearTween = TweenService:Create(infoLabel, disappearTweenInfo, disappearInfoLabelGoals)
local button2DisappearTween = TweenService:Create(button2, disappearTweenInfo, disappearButton2Goals)
local button3DisappearTween = TweenService:Create(button3, disappearTweenInfo, disappearButton3Goals)

-- Tween для закрытия фрейма
local closeTweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local closeTweenGoals = {Size = UDim2.new(0, 0, 0, 0)}

local closeTween = TweenService:Create(frame, closeTweenInfo, closeTweenGoals)

-- Функция для перетаскивания
local dragToggle = false
local dragInput, dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragToggle = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragToggle then
        updateInput(input)
    end
end)

-- Функция для открытия GUI
local function openGUI()
    screenGui.Enabled = true
    openTween:Play()
    openTween.Completed:Connect(function()
        textAppearTween:Play()
        imageAppearTween:Play()
        imageLabel2AppearTween:Play()
        buttonAppearTween:Play()
        infoLabelAppearTween:Play()
        button2AppearTween:Play()
        button3AppearTween:Play()
        overlayButton:TweenPosition(UDim2.new(0.5, 0, 0.05, 0), "Out", "Quad", 0.5, true) -- Анимация кнопки
        overlayButton:TweenSize(UDim2.new(0, 83, 0, 23), "Out", "Quad", 0.5, true) -- Анимация кнопки
    end)
end

-- Функция для закрытия GUI
local function closeGUI()
    textDisappearTween:Play()
    imageDisappearTween:Play()
    imageLabel2DisappearTween:Play()
    buttonDisappearTween:Play()
    infoLabelDisappearTween:Play()
    button2DisappearTween:Play()
    button3DisappearTween:Play()
    textDisappearTween.Completed:Connect(function()
        closeTween:Play()
        closeTween.Completed:Connect(function()
            screenGui.Enabled = false
        end)
    end)
end

-- Обработчик для кнопки закрытия
closeButton.MouseButton1Click:Connect(function()
    closeGUI()
end)

-- Тестовое открытие GUI
openGUI()
