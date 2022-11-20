if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game:GetService("Players") and game:GetService("Workspace") and game:GetService("ReplicatedStorage") and
    game:GetService("UserInputService")

local KbR291kJ8XH4 = game:GetService("Players").LocalPlayer
loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()

local function returnHRP()
    if not KbR291kJ8XH4.Character then
        return
    end
    if not KbR291kJ8XH4.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return KbR291kJ8XH4.Character:FindFirstChild("HumanoidRootPart")
    end
end
local function returnHUM()
    if not KbR291kJ8XH4.Character then
        return
    end
    if not KbR291kJ8XH4.Character:FindFirstChild("Humanoid") then
        return
    else
        return KbR291kJ8XH4.Character:FindFirstChild("Humanoid")
    end
end
repeat
    task.wait()
until returnHRP() and returnHUM()
local HrpTable = {
    Velocity = returnHRP().Velocity,
    Transparency = returnHRP().Transparency,
    Size = returnHRP().Size,
    Anchored = returnHRP().Anchored
}
local HumTable = {
    Health = returnHUM().Health,
    HealthDisplayDistance = returnHUM().HealthDisplayDistance,
    HealthDisplayType = returnHUM().HealthDisplayType,
    HipHeight = returnHUM().HipHeight,
    Jump = returnHUM().Jump,
    JumpPower = returnHUM().JumpPower,
    MaxHealth = returnHUM().MaxHealth,
    Name = returnHUM().Name,
    NameDisplayDistance = returnHUM().NameDisplayDistance,
    NameOcclusion = returnHUM().NameOcclusion,
    PlatformStand = returnHUM().PlatformStand,
    SeatPart = returnHUM().SeatPart,
    Sit = returnHUM().Sit,
    TargetPoint = returnHUM().TargetPoint,
    WalkSpeed = returnHUM().WalkSpeed,
    WalkToPart = returnHUM().WalkToPart,
    WalkToPoint = returnHUM().WalkToPoint
}
local WorkspaceTable = {
    DistributedGameTime = workspace.DistributedGameTime,
    FallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight,
    Gravity = workspace.Gravity
}

local function spoofHRP()
    repeat
        task.wait()
    until returnHRP()
    for i, v in pairs(HrpTable) do
        spoof(returnHRP(), tostring(i), returnHRP():GetAttribute(v))
    end

    return true
end
local function spoofHUM()
    repeat
        task.wait()
    until returnHUM()
    for i, v in pairs(HumTable) do
        spoof(returnHRP(), tostring(i), returnHUM():GetAttribute(v))
    end

    return true
end
local function spoofWorkspace()
    for i, v in pairs(WorkspaceTable) do
        spoof(workspace, tostring(i), returnHUM():GetAttribute(v))
    end

    return true
end

local function Gravity(x)
    spoofWorkspace()
    workspace.Gravity = x
end
local function WalkSpeed(x)
    spoofHUM()
    returnHUM().WalkSpeed = x

    return true
end
local function JumpPower(x)
    spoofHUM()
    returnHUM().JumpPower = x

    return true
end

local function TpTo(CFrame, Refresh)
    if Refresh then
        returnHUM().Health = 0
        KbR291kJ8XH4.CharacterAdded:Wait()
        repeat
            task.wait()
        until returnHRP() and returnHUM()
    end

    returnHRP().CFrame = CFrame

    return true
end
local function TweenTo(CFrame, Speed)
    local goal = {}
    goal.CFrame = CFrame
    local TweenService = game:GetService("TweenService")
    local tweenInfo =
        TweenInfo.new(
        (CFrame.Position - returnHRP().Position).Magnitude / Speed,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.In,
        0,
        false
    )
    Tween = TweenService:Create(returnHRP(), tweenInfo, goal)
    Tween:Play()
    Tween.Completed:Wait()

    return true
end

local function ReplaceHUM()
    spoofHUM()
    n = syn and syn.crypt.random(32) or crypt.generatebytes(32)
    humanoid1 = returnHUM()
    character = humanoid1.Parent

    humanoid1.Name = n

    humanoid2 = humanoid1:Clone()
    humanoid2.Name = "Humanoid"
    humanoid2.Parent = character
    humanoid1:Destroy()

    workspace.CurrentCamera.CameraSubject = character
    humanoid2.DisplayDistanceType = "None"
    spoofHUM()

    return humanoid2
end
local function Netless()
    for _, v in ipairs(returnHUM().Parent:GetDescendants()) do
        if v:IsA("BasePart") and v ~= returnHRP() then
            spoof(v, "Velocity", Vector3.new(0, 0, 0))
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    v.Velocity = Vector3.new(-30, 0, 0)
                end
            )
        end
    end
    return true
end
