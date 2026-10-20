# Roblox Idle Animation Script

This project contains a script for playing an idle animation in Roblox. The script is designed to automatically play a specified idle animation for any character that spawns in the game, and it will stop the animation when the character dies.

## Installation

1. Open Roblox Studio.
2. Create a new script or open an existing one.
3. Copy the content of the script below and paste it into the script.
4. Place the script in the `ServerScriptService` in Roblox Studio.

## Usage

The script will automatically play the idle animation for any character that spawns in the game. The animation will stop when the character dies.

```lua
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
```

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/fba54cfb-75d6-464a-b1db-49e4969fe028?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=fba54cfb-75d6-464a-b1db-49e4969fe028
