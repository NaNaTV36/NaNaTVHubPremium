local messages = {
    "NaNa TV Pro Code",
    "NaNa Make Script",
    "Script By NaNa | Fast Attack By Tboy",
    "Cày Thuê - Mua Key Premium IB",
    "TikTok NaNa TV",
    "Tham Gia Discord Để Nhận Nhiều Script Hơn Nhé",
    "https://discord.gg/cZbkaZKK4T",
    "Thank You!"
}

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

TextLabel.Parent = ScreenGui
TextLabel.AnchorPoint = Vector2.new(0.5,0)
TextLabel.Position = UDim2.new(0.5,0,0.07,0)
TextLabel.Size = UDim2.new(0,1000,0,45)

TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.fromRGB(255,230,0)

TextLabel.TextStrokeTransparency = 0
TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0)

TextLabel.TextScaled = true

for _,msg in pairs(messages) do

    TextLabel.Text = ""
    TextLabel.TextTransparency = 0
    TextLabel.TextStrokeTransparency = 0

    -- hiện từng chữ
    for i = 1, #msg do
        TextLabel.Text = string.sub(msg,1,i)
        task.wait(0.015)
    end

    task.wait(0.8)

    -- biến mất nhanh
    for i = 1,10 do
        TextLabel.TextTransparency = i/10
        TextLabel.TextStrokeTransparency = i/10
        task.wait(0.01)
    end

    task.wait(0.05)
end

ScreenGui:Destroy()

-- chạy script sau khi hiện xong
loadstring(game:HttpGet("https://pastefy.app/cwwniiNF/raw"))()
