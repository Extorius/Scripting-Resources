# Extorius Character Functions
## Documentation
This is documentation for Extorius Character Functions.
Since this script has automatically prepared anti-cheat measures, it may be a bit delayed for certain functions.

### Booting the Script
You should put this at the start of your script to ensure the game has fully loaded in.
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Extorius/Scripting-Resources/scripts/Character%20Functions.lua"))()
```
### Returning HumanoidRootPart
Expected Return: LocalPlayer's HumanoidRootPart

If this is in a loop, if statements are recommended in case LocalPlayer's character is removed.
```lua
returnHRP()
```
### Returning Humanoid
Expected Return: LocalPlayer's Humanoid

If this is in a loop, if statements are recommended in case LocalPlayer's character is removed.
```lua
returnHUM()
```
### Spoofing HumanoidRootPart
Expected Return: (Integer) true

Will return true once it's completed.
```lua
spoofHRP()
```
### Spoofing Humanoid
Expected Return: (Integer) true

Will return true once it's completed.
```lua
spoofHUM()
```
### Spoofing Workspace
Expected Return: (Integer) true

Will return true once it's completed.
**This does not spoof every instance in Workspace. This only spoofs Workspace's properties.**
```lua
spoofHUM()
```

### Setting Gravity
- [x] Smart Anti-Cheat
Expected Return: (Nil) none
Expected Input: (Integer) Replace x with the gravity you want to set Workspace to.

Will spoof Workspace before setting the gravity.
```lua
Gravity(x)
```

Example:
```lua
Gravity(0)
```

### Setting WalkSpeed
- [x] Smart Anti-Cheat
Expected Return: (Nil) none
Expected Input: (Integer) Replace x with the WalkSpeed you want to set LocalPlayer's humanoid to.

Will spoof LocalPlayer's humanoid before setting the WalkSpeed.
```lua
WalkSpeed(x)
```

Example:
```lua
WalkSpeed(100)
```

### Setting JumpPower
- [x] Smart Anti-Cheat
Expected Return: (Nil) none
Expected Input: (Integer) Replace x with the JumpPower you want to set LocalPlayer's humanoid to.

Will spoof LocalPlayer's humanoid before setting the JumpPower.
```lua
JumpPower(x)
```

Example:
```lua
JumpPower(100)
```

### Teleporting LocalPlayer
- [x] Smart Anti-Cheat
Expected Return: (Integer) true
Expected Input 1: (CFrame) Replace CFrame with the CFrame you want to teleport LocalPlayer to.
Expected Input 2: (Integer) Replace Refresh with true to force the player to reset before teleporting. Set to false otherwise.

Will return true once it's completed.
```lua
TpTo(CFrame, Refresh)
```

### Tweening LocalPlayer
- [ ] Smart Anti-Cheat
Expected Return: (Integer) true
Expected Input 1: (CFrame) Replace CFrame with the CFrame you want to tween LocalPlayer to.
Expected Input 2: (Integer) Replace Speed with how many studs per second you want to LocalPlayer to tween at.

Will return true once it's completed.
```lua
TweenTo(CFrame, Speed)
```

### Replacing LocalPlayer's Humanoid
- [x] Smart Anti-Cheat
Expected Return: (Instance) LocalPlayer's new humanoid.

Will return LocalPlayer's new humanoid once it's completed.
```lua
ReplaceHUM()
```

### Netless for LocalPlayer
- [ ] Smart Anti-Cheat
Expected Return: (Integer) true

Will return true once it's completed.
```lua
Netless()
```
