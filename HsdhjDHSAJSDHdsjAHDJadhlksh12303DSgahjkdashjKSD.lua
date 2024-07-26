local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = OrionLib:MakeWindow({
    Name = "XlebHub",
    HidePremium = false,
    IntroText = "XlebHub",
    SaveConfig = true,
    ConfigFolder = "XlebHub"
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

local Section = LT2:AddSection({
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

local Section = LT2:AddSection({
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
