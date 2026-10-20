-- Idle Animation Script

local Players = game:GetService("Players")
local AnimationId = "95485087326702"

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    local animator = humanoid:WaitForChild("Animator")

    local idleAnimation = Instance.new("Animation")
    idleAnimation.AnimationId = "rbxassetid://" .. AnimationId

    local idleAnimationTrack = animator:LoadAnimation(idleAnimation)
    idleAnimationTrack:Play()

    humanoid.Died:Connect(function()
        idleAnimationTrack:Stop()
    end)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end)