# CMD-X Api
## Run CMD-X commands directly in your script!

### How to use:
If you want to run CMD-X commands in your script, paste this in your code:
```lua
local CMDX = loadstring(game:HttpGet("wip"))()
```
Now you can run commands easily by just calling the following code:
```lua
CMDX:RunCmd("command name")
```
For example:
```lua
local CMDX = loadstring(game:HttpGet("wip"))()
CMDX:RunCmd("ragdoll")
```

Made by Malrous
