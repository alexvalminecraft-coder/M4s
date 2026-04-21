loadstring(game:HttpGet("https://gist.githubusercontent.com/alexvalminecraft-coder/40746a45b941b2047989002e993ce48d/raw/gistfile1.txt"))()
local KEYS = {
    "Master",
    "Vip",
    "Alex",
    "Master Duels"
}

local function isValidKey(input)
    for _, key in pairs(KEYS) do
        if input == key then
            return true
        end
    end
    return false
end

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local Check = Instance.new("TextButton")
local GetKey = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner2 = Instance.new("UICorner")
local UICorner3 = Instance.new("UICorner")
local UICorner4 = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui

-- MAIN FRAME
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 300, 0, 220)
Main.Position = UDim2.new(0.5, -150, 0.5, -110)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.Active = true

UICorner.Parent = Main

-- TITLE
Title.Parent = Main
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Master Duels | Key System"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold

-- CLOSE BUTTON
Close.Parent = Main
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255,255,255)
Close.BackgroundTransparency = 1

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- TEXTBOX
TextBox.Parent = Main
TextBox.Size = UDim2.new(0.8, 0, 0, 40)
TextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBox.PlaceholderText = "Enter Key..."
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
TextBox.TextColor3 = Color3.fromRGB(255,255,255)

UICorner2.Parent = TextBox

-- CHECK BUTTON
Check.Parent = Main
Check.Size = UDim2.new(0.8, 0, 0, 35)
Check.Position = UDim2.new(0.1, 0, 0.55, 0)
Check.Text = "Check Key"
Check.BackgroundColor3 = Color3.fromRGB(40,40,40)
Check.TextColor3 = Color3.fromRGB(255,255,255)

UICorner3.Parent = Check

-- GET KEY BUTTON
GetKey.Parent = Main
GetKey.Size = UDim2.new(0.8, 0, 0, 30)
GetKey.Position = UDim2.new(0.1, 0, 0.75, 0)
GetKey.Text = "Get Key"
GetKey.BackgroundColor3 = Color3.fromRGB(35,35,35)
GetKey.TextColor3 = Color3.fromRGB(255,255,255)

UICorner4.Parent = GetKey

GetKey.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/yUTfebAd24")
    end
    GetKey.Text = "Copied!"
end)

-- DRAG SYSTEM
local UIS = game:GetService("UserInputService")
local dragging = false
local dragInput, startPos, startFramePos

local function update(input)
    local delta = input.Position - startPos
    Main.Position = UDim2.new(
        startFramePos.X.Scale,
        startFramePos.X.Offset + delta.X,
        startFramePos.Y.Scale,
        startFramePos.Y.Offset + delta.Y
    )
end

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        startPos = input.Position
        startFramePos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- LOGIC
Check.MouseButton1Click:Connect(function()
    if isValidKey(TextBox.Text) then
        ScreenGui:Destroy()

        if setclipboard then
            setclipboard("https://discord.gg/yUTfebAd24")
        end

        -- Scripts finales (6)
        loadstring(game:HttpGet("https://pastefy.app/basi25UT/raw"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Op-Brainrott/Sab/refs/heads/main/InstantGrab"))()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/abbd9086d6174d5f15be86846a4e41af.lua"))()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/alexvalminecraft-coder/40746a45b941b2047989002e993ce48d/raw/gistfile1.txt"))()


    else
        TextBox.Text = "❌ No Valid Key"
    end
end)
