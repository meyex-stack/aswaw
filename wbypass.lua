KeySystemUI = {}
function KeySystemUI.New(json)
    print("[NoName] Hooking internal key...")
    return setmetatable({
        Closed = false,
        Finished = function()
            return true
        end,
        
        _close = function(self)
            self.Closed = true
        end
    }, {
        __index = OriginalKeySystem
    })
end
KeySystemUI.Finished = function() return true end
KeySystemUI.Closed = false
