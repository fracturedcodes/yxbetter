local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "YX Hub - fracture#0001", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	
})

local Section = Tab:AddSection({
	Name = "No CD"
})

Tab:AddToggle(
    {
        Name = "Eleven Spam",
        Default = false,
        Callback = function(Value)
            autoClick = Value
            if autoClick then
                spawn(
                    function()
                        while autoClick do
                            game.ReplicatedStorage.Characters.Vecna.Remotes.WindExplosion:FireServer(game.Players.LocalPlayer.Name)
                            wait(0.1)
                        end
                    end
                )
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "Dr Strange Spam",
        Default = false,
        Callback = function(Value)
            autoClick = Value
            if autoClick then
                spawn(
                    function()
                        while autoClick do
                            game.ReplicatedStorage.Characters.DoctorStrange.Remotes.TendrillSlam:FireServer(game.Players.LocalPlayer.Name)
                            wait(0.1)
                        end
                    end
                )
            end
        end
    }
)


OrionLib:MakeNotification({
	Name = "LOADING",
	Content = "Select Eleven in character list to use.",
	Image = "rbxassetid://4483345998",
	Time = 10
})