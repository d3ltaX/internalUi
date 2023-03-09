internalUi = {}

function internalUi:webimport(str)
    return loadstring(game:HttpGet(str))()
end

function internalUi:bind(gui,code)
toggled = false
local uis = game.UserInputService
uis.InputBegan:Connect(function(key)
    
    if key.KeyCode == code then
        if toggled then
            toggled = false
            gui.Enabled = false
        else
            toggled = true
            gui.Enabled = true
        end
    end
    
end)
end

return internalUi
