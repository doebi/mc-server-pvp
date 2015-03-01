PLUGIN = nil

function Initialize(Plugin)
    Plugin:SetName("NewPlugin")
    Plugin:SetVersion(1)
    
    -- Hooks
    
    PLUGIN = Plugin -- NOTE: only needed if you want OnDisable() to use GetName() or something like that
    
    -- Command Bindings

    LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
    LOG("Hello World")
    return true
end

function OnDisable()
    LOG(PLUGIN:GetName() .. " is shutting down...")
end
