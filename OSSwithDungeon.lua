
local _fs512 = game:GetService("HttpService")
local _fp818 = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local _fc651 = {id="UJCJJEW0A6Z",k=false,h=false,t=1778945559153}

if _fc651.k then
    local _fk688 = nil
    pcall(function() if _G and _G.script_key then _fk688 = tostring(_G.script_key) end end)
    if not _fk688 then pcall(function() if getgenv then local e = getgenv() if e and e.script_key then _fk688 = tostring(e.script_key) end end end) end
    if not _fk688 or _fk688 == "" or _fk688 == "nil" then return _fp818:Kick("[Hide.lat] Key required. Set _G.script_key = 'YOUR_KEY' before running.") end
    local s,r = pcall(function()
        local req = (syn and syn.request) or request or http_request
        if req then
            return req({Url="https://hide.lat/api/free/validate",Method="POST",Headers={["Content-Type"]="application/json"},Body=_fs512:JSONEncode({id=_fc651.id,key=_fk688,user=tostring(_fp818.UserId),timestamp=os.time()})})
        end
    end)
    if s and r and r.Body then
        local d = nil
        pcall(function() d = _fs512:JSONDecode(r.Body) end)
        if d and d.error then return _fp818:Kick("[Hide.lat] " .. tostring(d.error)) end
    elseif _fc651.k then
        return _fp818:Kick("[Hide.lat] Could not validate key")
    end
end

if getgenv().__ZytheraX_Loaded then
    warn("[ZytheraX] Script already loaded. Use a fresh executor state.")
    return
end
getgenv().__ZytheraX_Loaded = true

getgenv().ZX_Notify = function() end

task.spawn(function()
    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local lp = Players.LocalPlayer






    local suppressNotifs = true
    local lastNotifTime = 0
    local NOTIF_COOLDOWN = 0.35




    pcall(function()
        local old = game.CoreGui:FindFirstChild("ZX_Load")
        if old then old:Destroy() end
    end)

    local loadGui = Instance.new("ScreenGui")
    loadGui.Name = "ZX_Load"
    loadGui.IgnoreGuiInset = true
    loadGui.ResetOnSpawn = false
    loadGui.DisplayOrder = 99999
    pcall(function() loadGui.Parent = game.CoreGui end)
    if not loadGui.Parent then
        loadGui.Parent = lp:WaitForChild("PlayerGui")
    end


    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(5, 2, 7)
    bg.BorderSizePixel = 0
    bg.Parent = loadGui

    local bgGrad = Instance.new("UIGradient")
    bgGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(20, 5, 10)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 3, 6)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(2, 1, 2)),
    })
    bgGrad.Rotation = 90
    bgGrad.Parent = bg


    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 380, 0, 200)
    box.Position = UDim2.new(0.5, -190, 0.5, -100)
    box.BackgroundTransparency = 1
    box.Parent = bg


    local glow = Instance.new("ImageLabel")
    glow.Size = UDim2.new(0, 500, 0, 180)
    glow.Position = UDim2.new(0.5, -250, 0, -10)
    glow.BackgroundTransparency = 1
    glow.Image = "rbxassetid://5028857084"
    glow.ImageColor3 = Color3.fromRGB(160, 15, 15)
    glow.ImageTransparency = 0.55
    glow.ScaleType = Enum.ScaleType.Slice
    glow.SliceCenter = Rect.new(100, 100, 100, 100)
    glow.Parent = box


    local emblem = Instance.new("TextLabel")
    emblem.Size = UDim2.new(1, 0, 0, 72)
    emblem.Position = UDim2.new(0, 0, 0, 8)
    emblem.BackgroundTransparency = 1
    emblem.Font = Enum.Font.GothamBlack
    emblem.Text = "ZX"
    emblem.TextColor3 = Color3.fromRGB(240, 220, 220)
    emblem.TextSize = 72
    emblem.TextStrokeColor3 = Color3.fromRGB(50, 0, 0)
    emblem.TextStrokeTransparency = 0.3
    emblem.Parent = box

    local emblemGrad = Instance.new("UIGradient")
    emblemGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(255, 80, 80)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 30, 30)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(140, 5, 5)),
    })
    emblemGrad.Rotation = 90
    emblemGrad.Parent = emblem


    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 22)
    title.Position = UDim2.new(0, 0, 0, 82)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.Text = "Z Y T H E R A   X"
    title.TextColor3 = Color3.fromRGB(200, 180, 180)
    title.TextSize = 17
    title.Parent = box


    local subtitle = Instance.new("TextLabel")
    subtitle.Size = UDim2.new(1, 0, 0, 14)
    subtitle.Position = UDim2.new(0, 0, 0, 106)
    subtitle.BackgroundTransparency = 1
    subtitle.Font = Enum.Font.Gotham
    subtitle.Text = "B y   L o v e l y"
    subtitle.TextColor3 = Color3.fromRGB(130, 95, 100)
    subtitle.TextSize = 10
    subtitle.Parent = box


    local line = Instance.new("Frame")
    line.Size = UDim2.new(0, 140, 0, 1)
    line.Position = UDim2.new(0.5, -70, 0, 126)
    line.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    line.BorderSizePixel = 0
    local lineGrad = Instance.new("UIGradient")
    lineGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(180, 20, 20)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 100)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(180, 20, 20)),
    })
    lineGrad.Parent = line
    line.Parent = box


    local barBg = Instance.new("Frame")
    barBg.Size = UDim2.new(0, 320, 0, 4)
    barBg.Position = UDim2.new(0.5, -160, 0, 142)
    barBg.BackgroundColor3 = Color3.fromRGB(18, 6, 10)
    barBg.BorderSizePixel = 0
    local barBgCorner = Instance.new("UICorner")
    barBgCorner.CornerRadius = UDim.new(1, 0)
    barBgCorner.Parent = barBg
    barBg.Parent = box


    local barFill = Instance.new("Frame")
    barFill.Size = UDim2.new(0, 0, 1, 0)
    barFill.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
    barFill.BorderSizePixel = 0
    local barFillCorner = Instance.new("UICorner")
    barFillCorner.CornerRadius = UDim.new(1, 0)
    barFillCorner.Parent = barFill
    local barFillGrad = Instance.new("UIGradient")
    barFillGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(255, 80, 80)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 30, 30)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(255, 80, 80)),
    })
    barFillGrad.Parent = barFill
    barFill.Parent = barBg


    local pctLabel = Instance.new("TextLabel")
    pctLabel.Size = UDim2.new(1, 0, 0, 16)
    pctLabel.Position = UDim2.new(0, 0, 0, 152)
    pctLabel.BackgroundTransparency = 1
    pctLabel.Font = Enum.Font.GothamBold
    pctLabel.Text = "0%"
    pctLabel.TextColor3 = Color3.fromRGB(200, 30, 30)
    pctLabel.TextSize = 13
    pctLabel.TextXAlignment = Enum.TextXAlignment.Center
    pctLabel.Parent = box


    local statusText = Instance.new("TextLabel")
    statusText.Size = UDim2.new(1, 0, 0, 14)
    statusText.Position = UDim2.new(0, 0, 0, 172)
    statusText.BackgroundTransparency = 1
    statusText.Font = Enum.Font.Gotham
    statusText.Text = "Initializing..."
    statusText.TextColor3 = Color3.fromRGB(150, 130, 135)
    statusText.TextSize = 10
    statusText.TextXAlignment = Enum.TextXAlignment.Center
    statusText.Parent = box


    local skipBtn = Instance.new("TextButton")
    skipBtn.Size = UDim2.new(0, 72, 0, 22)
    skipBtn.Position = UDim2.new(1, -88, 1, -32)
    skipBtn.BackgroundColor3 = Color3.fromRGB(15, 6, 10)
    skipBtn.BorderSizePixel = 0
    skipBtn.Font = Enum.Font.GothamBold
    skipBtn.Text = "SKIP >>"
    skipBtn.TextColor3 = Color3.fromRGB(180, 25, 25)
    skipBtn.TextSize = 9
    skipBtn.AutoButtonColor = false
    local skipCorner = Instance.new("UICorner")
    skipCorner.CornerRadius = UDim.new(0, 3)
    skipCorner.Parent = skipBtn
    local skipStroke = Instance.new("UIStroke")
    skipStroke.Color = Color3.fromRGB(60, 10, 10)
    skipStroke.Thickness = 1
    skipStroke.Parent = skipBtn
    skipBtn.Parent = bg


    local credits = Instance.new("TextLabel")
    credits.Size = UDim2.new(0, 250, 0, 12)
    credits.Position = UDim2.new(0, 16, 1, -24)
    credits.BackgroundTransparency = 1
    credits.Font = Enum.Font.Gotham
    credits.Text = "// ZYTHERA-X  ::  crimson edition"
    credits.TextColor3 = Color3.fromRGB(60, 45, 48)
    credits.TextSize = 9
    credits.TextXAlignment = Enum.TextXAlignment.Left
    credits.Parent = bg




    local skipped = false
    skipBtn.MouseButton1Click:Connect(function()
        skipped = true
    end)


    task.spawn(function()
        while loadGui and loadGui.Parent and not skipped do
            local t = tick()
            glow.ImageTransparency = 0.45 + math.sin(t * 2.5) * 0.2
            emblem.TextStrokeTransparency = 0.25 + math.sin(t * 2.5) * 0.15
            task.wait(0.03)
        end
    end)


    local embers = {}
    for i = 1, 30 do
        local e = Instance.new("Frame")
        local sz = math.random(2, 4)
        e.Size = UDim2.new(0, sz, 0, sz)
        e.Position = UDim2.new(math.random(), 0, 1 + math.random() * 0.3, 0)
        e.BackgroundColor3 = Color3.fromRGB(
            math.random(180, 255),
            math.random(20, 70),
            math.random(10, 25)
        )
        e.BackgroundTransparency = math.random(40, 80) / 100
        e.BorderSizePixel = 0
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(1, 0)
        c.Parent = e
        e.Parent = bg
        table.insert(embers, {
            frame = e,
            speed = math.random(30, 80) / 1000,
            drift = (math.random() - 0.5) * 0.0007,
            phase = math.random() * math.pi * 2,
        })
    end

    task.spawn(function()
        while loadGui and loadGui.Parent do
            local t = tick()
            for _, em in ipairs(embers) do
                if em.frame and em.frame.Parent then
                    local pos = em.frame.Position
                    local newY = pos.Y.Scale - em.speed
                    if newY < -0.05 then
                        newY = 1.05
                        em.frame.Position = UDim2.new(math.random(), 0, newY, 0)
                    else
                        local drift = math.sin(t * 2 + em.phase) * em.drift
                        em.frame.Position = UDim2.new(pos.X.Scale + drift, 0, newY, 0)
                    end
                    em.frame.BackgroundTransparency = 0.4 + math.sin(t * 3 + em.phase) * 0.25
                end
            end
            task.wait(0.03)
        end
    end)




    local function setProgress(pct, msg)
        if barFill then
            barFill.Size = UDim2.new(pct, 0, 1, 0)
        end
        if pctLabel then
            pctLabel.Text = tostring(math.floor(pct * 100)) .. "%"
        end
        if statusText and msg then
            statusText.Text = msg
        end
    end

    local function hideLoadScreen()
        if not loadGui then return end

        local tweens = {}
        local fadeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        for _, obj in ipairs({bg, emblem, title, subtitle, statusText, pctLabel, barFill, barBg, line, glow, skipBtn, credits}) do
            if obj then
                if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                    table.insert(tweens, TweenService:Create(obj, fadeInfo, {TextTransparency = 1, TextStrokeTransparency = 1, BackgroundTransparency = 1}))
                elseif obj:IsA("ImageLabel") then
                    table.insert(tweens, TweenService:Create(obj, fadeInfo, {ImageTransparency = 1, BackgroundTransparency = 1}))
                else
                    table.insert(tweens, TweenService:Create(obj, fadeInfo, {BackgroundTransparency = 1}))
                end
            end
        end

        for _, em in ipairs(embers) do
            if em.frame then
                table.insert(tweens, TweenService:Create(em.frame, fadeInfo, {BackgroundTransparency = 1}))
            end
        end
        for _, tw in ipairs(tweens) do tw:Play() end
        task.wait(0.6)
        pcall(function() loadGui:Destroy() end)
        loadGui = nil
    end




    pcall(function()
        local oldN = game.CoreGui:FindFirstChild("ZX_NotifGui")
        if oldN then oldN:Destroy() end
    end)

    local notifGui = Instance.new("ScreenGui")
    notifGui.Name = "ZX_NotifGui"
    notifGui.ResetOnSpawn = false
    notifGui.DisplayOrder = 99998
    pcall(function() notifGui.Parent = game.CoreGui end)
    if not notifGui.Parent then
        notifGui.Parent = lp:WaitForChild("PlayerGui")
    end

    local notifContainer = Instance.new("Frame")

    local vw = workspace.CurrentCamera.ViewportSize.X
    local notifWidth = vw < 500 and 240 or 300
    notifContainer.Size = UDim2.new(0, notifWidth, 1, -50)
    notifContainer.Position = UDim2.new(1, -(notifWidth + 20), 0, 45)
    notifContainer.BackgroundTransparency = 1
    notifContainer.Parent = notifGui

    local notifLayout = Instance.new("UIListLayout")
    notifLayout.SortOrder = Enum.SortOrder.LayoutOrder
    notifLayout.Padding = UDim.new(0, 6)
    notifLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    notifLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    notifLayout.Parent = notifContainer

    local PRESETS = {
        success  = { bg = Color3.fromRGB(8, 20, 12),  accent = Color3.fromRGB(60, 220, 100), icon = "+" },
        warning  = { bg = Color3.fromRGB(26, 20, 6),  accent = Color3.fromRGB(255, 180, 40), icon = "!" },
        error    = { bg = Color3.fromRGB(28, 6, 8),   accent = Color3.fromRGB(255, 60, 60),  icon = "x" },
        info     = { bg = Color3.fromRGB(10, 16, 28), accent = Color3.fromRGB(80, 150, 255), icon = "i" },
        feature  = { bg = Color3.fromRGB(16, 4, 10),  accent = Color3.fromRGB(220, 30, 30),  icon = "Z" },
        mastery  = { bg = Color3.fromRGB(22, 12, 4),  accent = Color3.fromRGB(255, 140, 30), icon = "M" },
    }

    local notifCounter = 0

    local function notify(title, message, notifType)
        notifType = notifType or "info"


        if suppressNotifs then return end
        if tick() - lastNotifTime < NOTIF_COOLDOWN then return end
        lastNotifTime = tick()

        local preset = PRESETS[notifType] or PRESETS.info
        notifCounter = notifCounter + 1

        local notif = Instance.new("Frame")
        notif.Size = UDim2.new(1, 0, 0, 56)
        notif.BackgroundColor3 = preset.bg
        notif.BackgroundTransparency = 1
        notif.BorderSizePixel = 0
        notif.LayoutOrder = notifCounter
        notif.Position = UDim2.new(1, 40, 0, 0)
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = notif


        local accentBar = Instance.new("Frame")
        accentBar.Size = UDim2.new(0, 3, 1, 0)
        accentBar.BackgroundColor3 = preset.accent
        accentBar.BorderSizePixel = 0
        accentBar.BackgroundTransparency = 1
        local acCorner = Instance.new("UICorner")
        acCorner.CornerRadius = UDim.new(0, 1.5)
        acCorner.Parent = accentBar
        accentBar.Parent = notif


        local stroke = Instance.new("UIStroke")
        stroke.Color = preset.accent
        stroke.Thickness = 1
        stroke.Transparency = 1
        stroke.Parent = notif


        local iconCircle = Instance.new("Frame")
        iconCircle.Size = UDim2.new(0, 24, 0, 24)
        iconCircle.Position = UDim2.new(0, 11, 0.5, -12)
        iconCircle.BackgroundColor3 = preset.accent
        iconCircle.BackgroundTransparency = 1
        iconCircle.BorderSizePixel = 0
        local icCorner = Instance.new("UICorner")
        icCorner.CornerRadius = UDim.new(1, 0)
        icCorner.Parent = iconCircle
        iconCircle.Parent = notif

        local iconLabel = Instance.new("TextLabel")
        iconLabel.Size = UDim2.new(1, 0, 1, 0)
        iconLabel.BackgroundTransparency = 1
        iconLabel.Font = Enum.Font.GothamBold
        iconLabel.Text = preset.icon
        iconLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        iconLabel.TextSize = 13
        iconLabel.TextTransparency = 1
        iconLabel.Parent = iconCircle


        local titleLabel = Instance.new("TextLabel")
        titleLabel.Size = UDim2.new(1, -70, 0, 18)
        titleLabel.Position = UDim2.new(0, 44, 0, 7)
        titleLabel.BackgroundTransparency = 1
        titleLabel.Font = Enum.Font.GothamBold
        titleLabel.Text = title or "Notification"
        titleLabel.TextColor3 = Color3.fromRGB(240, 235, 240)
        titleLabel.TextSize = 12
        titleLabel.TextXAlignment = Enum.TextXAlignment.Left
        titleLabel.TextTruncate = Enum.TextTruncate.AtEnd
        titleLabel.TextTransparency = 1
        titleLabel.Parent = notif


        local msgLabel = Instance.new("TextLabel")
        msgLabel.Size = UDim2.new(1, -70, 0, 24)
        msgLabel.Position = UDim2.new(0, 44, 0, 25)
        msgLabel.BackgroundTransparency = 1
        msgLabel.Font = Enum.Font.Gotham
        msgLabel.Text = message or ""
        msgLabel.TextColor3 = Color3.fromRGB(170, 165, 175)
        msgLabel.TextSize = 10
        msgLabel.TextXAlignment = Enum.TextXAlignment.Left
        msgLabel.TextYAlignment = Enum.TextYAlignment.Top
        msgLabel.TextWrapped = true
        msgLabel.TextTruncate = Enum.TextTruncate.AtEnd
        msgLabel.TextTransparency = 1
        msgLabel.Parent = notif


        local closeBtn = Instance.new("TextButton")
        closeBtn.Size = UDim2.new(0, 14, 0, 14)
        closeBtn.Position = UDim2.new(1, -18, 0, 5)
        closeBtn.BackgroundTransparency = 1
        closeBtn.Font = Enum.Font.GothamBold
        closeBtn.Text = "x"
        closeBtn.TextColor3 = Color3.fromRGB(120, 110, 115)
        closeBtn.TextSize = 10
        closeBtn.TextTransparency = 1
        closeBtn.Parent = notif

        notif.Parent = notifContainer




        local slideInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local fadeInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)


        TweenService:Create(notif, slideInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()

        TweenService:Create(notif, fadeInfo, {BackgroundTransparency = 0.02}):Play()

        TweenService:Create(accentBar, fadeInfo, {BackgroundTransparency = 0}):Play()

        TweenService:Create(iconCircle, fadeInfo, {BackgroundTransparency = 0.85}):Play()

        TweenService:Create(stroke, fadeInfo, {Transparency = 0.7}):Play()

        TweenService:Create(iconLabel, fadeInfo, {TextTransparency = 0}):Play()
        TweenService:Create(titleLabel, fadeInfo, {TextTransparency = 0}):Play()
        TweenService:Create(msgLabel, fadeInfo, {TextTransparency = 0}):Play()
        TweenService:Create(closeBtn, fadeInfo, {TextTransparency = 0}):Play()


        task.spawn(function()
            task.wait(3.5)
            if notif and notif.Parent then
                local outInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
                TweenService:Create(notif, outInfo, {Position = UDim2.new(1, 40, 0, 0), BackgroundTransparency = 1}):Play()
                TweenService:Create(accentBar, outInfo, {BackgroundTransparency = 1}):Play()
                TweenService:Create(stroke, outInfo, {Transparency = 1}):Play()
                TweenService:Create(iconCircle, outInfo, {BackgroundTransparency = 1}):Play()
                TweenService:Create(iconLabel, outInfo, {TextTransparency = 1}):Play()
                TweenService:Create(titleLabel, outInfo, {TextTransparency = 1}):Play()
                TweenService:Create(msgLabel, outInfo, {TextTransparency = 1}):Play()
                TweenService:Create(closeBtn, outInfo, {TextTransparency = 1}):Play()
                task.wait(0.45)
                pcall(function() notif:Destroy() end)
            end
        end)

        closeBtn.MouseButton1Click:Connect(function()
            if notif and notif.Parent then
                local outInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
                TweenService:Create(notif, outInfo, {Position = UDim2.new(1, 40, 0, 0), BackgroundTransparency = 1}):Play()
                TweenService:Create(accentBar, outInfo, {BackgroundTransparency = 1}):Play()
                TweenService:Create(stroke, outInfo, {Transparency = 1}):Play()
                TweenService:Create(iconLabel, outInfo, {TextTransparency = 1}):Play()
                TweenService:Create(titleLabel, outInfo, {TextTransparency = 1}):Play()
                TweenService:Create(msgLabel, outInfo, {TextTransparency = 1}):Play()
                task.wait(0.35)
                pcall(function() notif:Destroy() end)
            end
        end)
    end


    getgenv().ZX_Notify = notify




    local steps = {
        { 0.10, "Initializing core..." },
        { 0.22, "Loading services..." },
        { 0.34, "Hooking remotes..." },
        { 0.46, "Loading quest data..." },
        { 0.58, "Building combat module..." },
        { 0.70, "Loading ESP system..." },
        { 0.82, "Applying crimson theme..." },
        { 0.92, "Building interface..." },
        { 1.00, "Ready" },
    }

    for _, step in ipairs(steps) do
        if skipped then break end
        setProgress(step[1], step[2])
        task.wait(0.6)
    end

    if skipped then
        setProgress(1.0, "Skipped")
        task.wait(0.2)
    else
        task.wait(0.3)
    end


    hideLoadScreen()


    task.wait(0.3)
    suppressNotifs = false


    notify("Zythera-X Loaded", "Script ready. Toggle any feature to begin.", "success")
end)

local Services = setmetatable({}, {
    __index = function(self, serviceName)
        local service = game:GetService(serviceName)
        rawset(self, serviceName, service)
        return service
    end
})

local _ZX_HttpGet
do
    local function pickRequestFn()

        if type(request) == "function" then return request end
        if type(http_request) == "function" then return http_request end
        if syn and type(syn.request) == "function" then return syn.request end
        if type(http_get) == "function" then return http_get end
        return nil
    end

    function _ZX_HttpGet(url)

        local ok, result = pcall(function()
            if game and type(game.GetService) == "function" then
                local hs = game:GetService("HttpService")
                if hs and type(hs.GetAsync) == "function" then
                    return hs:GetAsync(url, false)
                end
            end
            return nil
        end)
        if ok and type(result) == "string" and #result > 0 then
            return result
        end


        local reqFn = pickRequestFn()
        if reqFn then
            local ok2, resp = pcall(function()
                return reqFn({
                    Url = url,
                    Method = "GET",
                    Headers = { ["User-Agent"] = "ZytheraX/3.8" },
                })
            end)
            if ok2 and resp then

                if type(resp) == "string" then return resp end
                if type(resp.Body) == "string" then return resp.Body end
                if type(resp.body) == "string" then return resp.body end
                if type(resp.Success) == "boolean" and resp.Success and type(resp.Body) == "string" then return resp.Body end
            end
        end


        local ok3, result3 = pcall(function()
            return game:GetService("HttpService"):GetAsync(url, false)
        end)
        if ok3 and type(result3) == "string" then
            return result3
        end


        warn("[ZytheraX] HTTP GET failed for: " .. tostring(url))
        return ""
    end
end

local HttpService = Services.HttpService
local FolderName = "Zythera-X"
local FileName = "Settings.json"
local FullPath = FolderName .. "/" .. FileName

if makefolder and not isfolder(FolderName) then
    makefolder(FolderName)
end

_G.SaveData = _G.SaveData or {}

function SaveSettings()
    if not writefile then return false end
    local success = pcall(function()
        local json = HttpService:JSONEncode(_G.SaveData)
        writefile(FullPath, json)
    end)
    return success
end

function LoadSettings()
    if not (isfile and isfile(FullPath)) then return false end
    local success, result = pcall(function()
        local content = readfile(FullPath)
        return HttpService:JSONDecode(content)
    end)
    if success and result then
        _G.SaveData = result
        return true
    end
    return false
end

function GetSetting(name, default)
    return _G.SaveData[name] ~= nil and _G.SaveData[name] or default
end

LoadSettings()

local Players = Services.Players
local CollectionService = Services.CollectionService
local ReplicatedStorage = Services.ReplicatedStorage

local player = Players.LocalPlayer
local commE = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommE")
local commF = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")

_G.AutoKen = false

local function HasKen()
    local char = player.Character
    return char and CollectionService:HasTag(char, "Ken")
end

task.spawn(function()
    while _G.AutoKen do
        task.wait(0.2)
        if not HasKen() then
            pcall(function()
                commE:FireServer("Ken", true)
            end)
        end
    end
end)

local desiredTeam = "Marines"

if not player.Team or player.Team.Name ~= desiredTeam then
    pcall(function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", desiredTeam)
    end)
end

local Lighting = Services.Lighting

Lighting.Ambient = Color3.new(0.695, 0.695, 0.695)
Lighting.ColorShift_Bottom = Color3.new(0.695, 0.695, 0.695)
Lighting.ColorShift_Top = Color3.new(0.695, 0.695, 0.695)
Lighting.Brightness = 2
Lighting.FogEnd = 1e10

do
    ply = Services.Players
    plr = ply.LocalPlayer
    Root = plr.Character.HumanoidRootPart
    replicated = Services.ReplicatedStorage
    Lv = plr.Data.Level.Value
    TeleportService = Services.TeleportService
    TW = Services.TweenService
    Lighting = Services.Lighting
    Enemies = workspace.Enemies
    vim1 = Services.VirtualInputManager
    vim2 = Services.VirtualUser
    TeamSelf = plr.Team
    RunSer = Services.RunService
    Stats = Services.Stats
    Energy = plr.Character.Energy.Value


    Boss = {}
    BringConnections = {}
    MaterialList = {}
    NPCList = {}


    shouldTween = false
    SoulGuitar = false
    KenTest = true
    debug = false
    Brazier1 = false
    Brazier2 = false
    Brazier3 = false
    Sec = 0.1
    ClickState = 0
    Num_self = 25
end

repeat
    local loading = plr.PlayerGui:FindFirstChild("Main")
    loading = loading and loading:FindFirstChild("Loading")
    task.wait()
until game:IsLoaded() and not (loading and loading.Visible)

local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 85211729168715 then
    World1 = true
elseif placeId == 4442272183 or placeId == 79091703265657 then
    World2 = true
elseif placeId == 7449423635 or placeId == 100117331123089 then
    World3 = true
else
    plr:Kick("❌ Error Blox Fruits - World not recognized")
end

Sea = World1 or World2 or World3
local IsDungeon = placeId == 73902483975735

Marines = function()
    commF:InvokeServer("SetTeam", "Marines")
end

Pirates = function()
    commF:InvokeServer("SetTeam", "Pirates")
end
if World1 then
        Boss = {
                        "The Gorilla King",
                        "Bobby",
                        "The Saw",
                        "Yeti",
                        "Mob Leader",
                        "Vice Admiral",
                        "Saber Expert",
                        "Warden",
                        "Chief Warden",
                        "Swan",
                        "Magma Admiral",
                        "Fishman Lord",
                        "Wysper",
                        "Thunder God",
                        "Cyborg",
                        "Ice Admiral",
                        "Greybeard",
                };
elseif World2 then
        Boss = {
                        "Diamond",
                        "Jeremy",
                        "Fajita",
                        "Don Swan",
                        "Smoke Admiral",
                        "Awakened Ice Admiral",
                        "Tide Keeper",
                        "Darkbeard",
                        "Cursed Captain",
                        "Order",
                };
elseif World3 then
        Boss = {
                        "Stone",
                        "Hydra Leader",
                        "Kilo Admiral",
                        "Captain Elephant",
                        "Beautiful Pirate",
                        "Cake Queen",
                        "Longma",
                        "Soul Reaper",
                };
end;
if World1 then
        MaterialList = {
                        "Leather + Scrap Metal",
                        "Angel Wings",
                        "Magma Ore",
                        "Fish Tail",
                };
elseif World2 then
        MaterialList = {
                        "Leather + Scrap Metal",
                        "Radioactive Material",
                        "Ectoplasm",
                        "Mystic Droplet",
                        "Magma Ore",
                        "Vampire Fang",
                };
elseif World3 then
        MaterialList = {
                        "Scrap Metal",
                        "Demonic Wisp",
                        "Conjured Cocoa",
                        "Dragon Scale",
                        "Gunpowder",
                        "Fish Tail",
                        "Mini Tusk",
                };
end;
local e = {
                "Flame",
                "Ice",
                "Quake",
                "Light",
                "Dark",
                "String",
                "Rumble",
                "Magma",
                "Human: Buddha",
                "Sand",
                "Bird: Phoenix",
                "Dough",
        };
local K = {
                "Snow Lurker",
                "Arctic Warrior",
                "Hidden Key",
                "Awakened Ice Admiral",
        };
local n = {
                Mob = "Mythological Pirate",
                Mob2 = "Cursed Skeleton",
                "Hell\'s Messenger",
                Mob3 = "Cursed Skeleton",
                "Heaven\'s Guardian",
        };
local d = {
                "Part",
                "SpawnLocation",
                "Terrain",
                "WedgePart",
                "MeshPart",
        };
local z = { "Swan Pirate", "Jeremy" };
local H = { "Forest Pirate", "Captain Elephant" };
local F = { "Fajita", "Jeremy", "Diamond" };
local Q = {
                "Beast Hunter",
                "Lantern",
                "Guardian",
                "Grand Brigade",
                "Dinghy",
                "Sloop",
                "The Sentinel",
        };
local X = { "Cookie Crafter", "Head Baker", "Baking Staff", "Cake Guard" };
local P = { "Reborn Skeleton", "Posessed Mummy", "Demonic Soul", "Living Zombie" };
local w = {
                ["Pirate Millionaire"] = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625),
                ["Pistol Billionaire"] = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625),
                ["Dragon Crew Warrior"] = CFrame.new(7021.5043945312, 55.762702941895, -730.12908935547),
                ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
                ["Female Islander"] = CFrame.new(4692.7939453125, 797.97668457031, 858.84802246094),
                ["Venomous Assailant"] = CFrame.new(4902, 670, 39),
                ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
                ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
                ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
                ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
                ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
                ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
                ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
                ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
                ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
                ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
                ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
                ["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
                ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
                ["Peanut President"] = CFrame.new(-2215, 159, -10474),
                ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
                ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
                ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
                ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
                ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
                ["Head Baker"] = CFrame.new(-1932, 38, -12848),
                ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
                ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
                ["Sweet Thief"] = CFrame.new(116, 36, -12478),
                ["Candy Rebel"] = CFrame.new(47, 61, -12889),
                Ghost = CFrame.new(5251, 5, 1111),
        };
EquipWeapon = function(I)
                if not I then
                        return;
                end;
                if plr.Backpack:FindFirstChild(I) then
                        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(I));
                end;
        end;
weaponSc = function(I)
                for e, K in pairs(plr.Backpack:GetChildren()) do
                        if K:IsA("Tool") then
                                if K.ToolTip == I then
                                        EquipWeapon(K.Name);
                                end;
                        end;
                end;
        end;
pcall(function()
    hookfunction(require((game:GetService("ReplicatedStorage")).Effect.Container.Death), function() end)
end)
pcall(function()
    hookfunction((require((game:GetService("ReplicatedStorage")):WaitForChild("GuideModule"))).ChangeDisplayedNPC, function() end)
end)
pcall(function() hookfunction(error, function() end) end)
pcall(function() hookfunction(warn, function() end) end)

pcall(function()
    local waterScript = game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("WaterCFrame")
    if waterScript then
        waterScript.Disabled = true
    end
end)
local O = workspace:FindFirstChild("Rocks");
if O then
        O:Destroy();
end;
InitLighting = (function()
    local I = game:GetService("Lighting");
    local e = I:FindFirstChild("LightingLayers");



    local K = workspace._WorldOrigin["Foam;"];
    if K and workspace._WorldOrigin["Foam;"] then
        K:Destroy();
    end;
end)();

local G = {};
G.__index = G;
G.Alive = function(I)
                if not I then
                        return;
                end;
                local e = I:FindFirstChild("Humanoid");
                return e and e.Health > 0;
        end;
G.Pos = function(I, e)
                return (Root.Position - mode.Position).Magnitude <= e;
        end;
G.Dist = function(I, e)
                return (Root.Position - (I:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= e;
        end;
G.DistH = function(I, e)
                return (Root.Position - (I:FindFirstChild("HumanoidRootPart")).Position).Magnitude > e;
        end;

_G.MobHeight = _G.MobHeight or 30
_G.SaveData.BringMobs_Save = true
_G.BringRadius = 200

local spinAngle = 0

G.Kill = function(I, e)
    if not (I and e) then return end

    local hrp = I:FindFirstChild("HumanoidRootPart")
    local hum = I:FindFirstChild("Humanoid")

    if not hrp or not hum or hum.Health <= 0 then return end

    local player = game.Players.LocalPlayer
    local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end


    if not I:GetAttribute("Locked") then
        I:SetAttribute("Locked", hrp.CFrame)
    end

    local centerCF = I:GetAttribute("Locked")
    PosMon = centerCF.Position
    _B = true


    if _G.SaveData.BringMobs_Save then
        local mobs = {}

        for _, v in pairs(workspace.Enemies:GetChildren()) do
            local vhrp = v:FindFirstChild("HumanoidRootPart")
            local vhum = v:FindFirstChild("Humanoid")

            if v.Name == I.Name and vhrp and vhum and vhum.Health > 0 then
                if (vhrp.Position - root.Position).Magnitude <= (_G.BringRadius or 200) then
                    table.insert(mobs, v)
                end
            end
        end

        spinAngle = spinAngle + 0.3
        local radius = 10
        local total = #mobs

        for i, v in ipairs(mobs) do
            local vhrp = v.HumanoidRootPart
            local vhum = v.Humanoid

            vhum.WalkSpeed = 0
            vhum.JumpPower = 0
            vhum:ChangeState(11)

            vhrp.CanCollide = false
            vhrp.Size = Vector3.new(60,60,60)
            vhrp.Transparency = 1

            if i == 1 then
                vhrp.CFrame = centerCF
            else
                local angle = (i / total) * math.pi * 2 + spinAngle
                local offset = Vector3.new(
                    math.cos(angle) * radius,
                    0,
                    math.sin(angle) * radius
                )

                vhrp.CFrame = centerCF + offset
            end
        end
    end


    BringEnemy()
    EquipWeapon(_G.SelectWeapon)

    local tool = player.Character:FindFirstChildOfClass("Tool")
    if not tool then return end


    _tp(centerCF * CFrame.new(0, _G.MobHeight, 0))
end
G.Kill2 = function(I, e)
                if I and e then
                        if not I:GetAttribute("Locked") then
                                I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
                        end;
                        PosMon = (I:GetAttribute("Locked")).Position;
                        BringEnemy();
                        EquipWeapon(_G.SelectWeapon);
                        local e = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
                        local K = e.ToolTip;
                        if K == "Blox Fruit" then
                                _tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
                        else
                                _tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 8)) * CFrame.Angles(0, math.rad(180), 0));
                        end;
                        if RandomCFrame then
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
                        end;
                end;
        end;
G.KillSea = function(I, e)
                if I and e then
                        if not I:GetAttribute("Locked") then
                                I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
                        end;
                        PosMon = (I:GetAttribute("Locked")).Position;
                        BringEnemy();
                        EquipWeapon(_G.SelectWeapon);
                        local e = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
                        local K = e.ToolTip;
                        if K == "Blox Fruit" then
                                _tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
                        else
                                notween(I.HumanoidRootPart.CFrame * CFrame.new(0, 10, 8));
                                task.wait(.85);
                                notween(I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
                                task.wait(1);
                        end;
                end;
        end;
G.Sword = function(I, e)
                if I and e then
                        if not I:GetAttribute("Locked") then
                                I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
                        end;
                        PosMon = (I:GetAttribute("Locked")).Position;
                        BringEnemy();
                        weaponSc("Sword");
                        _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
                        if RandomCFrame then
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
                                task.wait(.1);
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
                        end;
                end;
        end;

_G.FruitSkills = {
    Z = false,
    X = false,
    C = false,
    V = false,
    F = false
}

UseFruitSkills = function()
    weaponSc("Blox Fruit")

    if _G.FruitSkills.Z then
        Useskills("Blox Fruit", "Z")
    end
    if _G.FruitSkills.X then
        Useskills("Blox Fruit", "X")
    end
    if _G.FruitSkills.C then
        Useskills("Blox Fruit", "C")
    end
    if _G.FruitSkills.V then
        Useskills("Blox Fruit", "V")
    end
    if _G.FruitSkills.F then
        vim1:SendKeyEvent(true, "F", false, game)
        vim1:SendKeyEvent(false, "F", false, game)
    end
end

G.Mas = function(I, e)
                if I and e then
                        if not I:GetAttribute("Locked") then
                                I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
                        end;
                        PosMon = (I:GetAttribute("Locked")).Position;
                        BringEnemy();
                        if I.Humanoid.Health <= HealthM then
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
                                UseFruitSkills()
                        else
                                weaponSc("Melee");
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
                        end;
                end;
        end;
G.Masgun = function(I, e)
                if I and e then
                        if not I:GetAttribute("Locked") then
                                I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
                        end;
                        PosMon = (I:GetAttribute("Locked")).Position;
                        BringEnemy();
                        if I.Humanoid.Health <= HealthM then
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 35, 8));
                                Useskills("Gun", "Z");
                                Useskills("Gun", "X");
                        else
                                weaponSc("Melee");
                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
                        end;
                end;
        end;
statsSetings = function(I, e)
                if I == "Melee" then
                        if plr.Data.Points.Value ~= 0 then
                                commF:InvokeServer("AddPoint", "Melee", e);
                        end;
                elseif I == "Defense" then
                        if plr.Data.Points.Value ~= 0 then
                                commF:InvokeServer("AddPoint", "Defense", e);
                        end;
                elseif I == "Sword" then
                        if plr.Data.Points.Value ~= 0 then
                                commF:InvokeServer("AddPoint", "Sword", e);
                        end;
                elseif I == "Gun" then
                        if plr.Data.Points.Value ~= 0 then
                                commF:InvokeServer("AddPoint", "Gun", e);
                        end;
                elseif I == "Devil" then
                        if plr.Data.Points.Value ~= 0 then
                                commF:InvokeServer("AddPoint", "Demon Fruit", e);
                        end;
                end;
        end;

_G = _G or {}

_B = false
PosMon = nil

_G.BringRange = _G.BringRange or 250
_G.MaxBringMobs = _G.MaxBringMobs or 15

_G.FarmPriorityElf = _G.FarmPriorityElf or false
_G.FarmMastery_S   = _G.FarmMastery_S or false

local TweenService = game:GetService("TweenService")
local TweenInfoBring = TweenInfo.new(
    0.50,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

local function FarmAtivo()

    if _G.FarmPriorityElf or _G.FarmElfLevelCustom then
        return true
    end


    if _G.FarmMastery_S then
        return true
    end


    return _G.StartFarm and (
        _G.Level or
        _G.AutoFarm_Bone or
        _G.AutoFarm_Cake or
        _G.FarmMastery_Dev or
        _G.FarmMastery_G or
        (getgenv()).AutoMaterial or
        _G.AutoTyrant or
        _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or (getgenv()).AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.AutoAttackSeabeasts or _G.FishBoat or _G.Auto or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.SummonPrehistoricIsland or _G.SummonForzenDimension or _G.SummonKitsuneIsland or _G.TweenToPrehistoricIsland or _G.TweenToFrozenDimension or _G.TweenToKitsuneIsland or _G.TweenToMirageIsland or _G.AutoAttackMonDungeon or _G.AutoKillLavaGolem or _G.AutoFarmCandy or _G.FarmMastery_G or _G.FarmMastery_S
    )
end

local function IsRaidMob(mob)
    local n = mob.Name:lower()

    if n:find("raid") or n:find("microchip") or n:find("island") then
        return true
    end

    if mob:GetAttribute("IsRaid")
        or mob:GetAttribute("RaidMob")
        or mob:GetAttribute("IsBoss") then
        return true
    end

    local hum = mob:FindFirstChild("Humanoid")
    if hum and hum.WalkSpeed == 0 then
        return true
    end

    if mob.Parent and tostring(mob.Parent):lower():find("_worldorigin") then
        return true
    end

    return false
end

BringEnemy = function()
    if not FarmAtivo() or not _B then return end

    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end


    pcall(function()
        sethiddenproperty(plr, "SimulationRadius", math.huge)
    end)

    local targetPos = PosMon or hrp.Position
    local enemies = workspace.Enemies:GetChildren()
    local count = 0

    for _, mob in ipairs(enemies) do
        if count >= _G.MaxBringMobs then break end

        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")

        if hum and root and hum.Health > 0 and not IsRaidMob(mob) then
            local dist = (root.Position - targetPos).Magnitude

            if dist <= _G.BringRange and not root:GetAttribute("Tweening") then
                count = count + 2
                root:SetAttribute("Tweening", true)

                local tween = TweenService:Create(
                    root,
                    TweenInfoBring,
                    { CFrame = CFrame.new(targetPos) }
                )

                tween:Play()
                tween.Completed:Once(function()
                    if root then
                        root:SetAttribute("Tweening", false)
                    end
                end)
            end
        end
    end
end

task.spawn(function()
    while task.wait(1) do
        if FarmAtivo() then
            _B = true
            BringEnemy()
            task.wait(1)
            _B = false
            task.wait(1)
        else
            _B = false
            task.wait(1)
        end
    end
end)
Useskills = function(I, e)
                if I == "Melee" then
                        weaponSc("Melee");
                        if e == "Z" then
                                vim1:SendKeyEvent(true, "Z", false, game);
                                vim1:SendKeyEvent(false, "Z", false, game);
                        elseif e == "X" then
                                vim1:SendKeyEvent(true, "X", false, game);
                                vim1:SendKeyEvent(false, "X", false, game);
                        elseif e == "C" then
                                vim1:SendKeyEvent(true, "C", false, game);
                                vim1:SendKeyEvent(false, "C", false, game);
                        end;
                elseif I == "Sword" then
                        weaponSc("Sword");
                        if e == "Z" then
                                vim1:SendKeyEvent(true, "Z", false, game);
                                vim1:SendKeyEvent(false, "Z", false, game);
                        elseif e == "X" then
                                vim1:SendKeyEvent(true, "X", false, game);
                                vim1:SendKeyEvent(false, "X", false, game);
                        end;
                elseif I == "Blox Fruit" then
                        weaponSc("Blox Fruit");
                        if e == "Z" then
                                vim1:SendKeyEvent(true, "Z", false, game);
                                vim1:SendKeyEvent(false, "Z", false, game);
                        elseif e == "X" then
                                vim1:SendKeyEvent(true, "X", false, game);
                                vim1:SendKeyEvent(false, "X", false, game);
                        elseif e == "C" then
                                vim1:SendKeyEvent(true, "C", false, game);
                                vim1:SendKeyEvent(false, "C", false, game);
                        elseif e == "V" then
                                vim1:SendKeyEvent(true, "V", false, game);
                                vim1:SendKeyEvent(false, "V", false, game);
                        end;
                elseif I == "Gun" then
                        weaponSc("Gun");
                        if e == "Z" then
                                vim1:SendKeyEvent(true, "Z", false, game);
                                vim1:SendKeyEvent(false, "Z", false, game);
                        elseif e == "X" then
                                vim1:SendKeyEvent(true, "X", false, game);
                                vim1:SendKeyEvent(false, "X", false, game);
                        end;
                end;
                if I == "nil" and e == "Y" then
                        vim1:SendKeyEvent(true, "Y", false, game);
                        vim1:SendKeyEvent(false, "Y", false, game);
                end;
        end;
local J = getrawmetatable(game);
local i = J.__namecall;
setreadonly(J, false);
J.__namecall = newcclosure(function(...)
                local I = getnamecallmethod();
                local e = { ... };
                if tostring(I) == "FireServer" then
                        if tostring(e[1]) == "RemoteEvent" then
                                if tostring(e[2]) ~= "true" and tostring(e[2]) ~= "false" then
                                        if _G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials or _G.AimMethod and ABmethod == "AimBots Skill" or _G.AimMethod and ABmethod == "Auto Aimbots" then
                                                e[2] = MousePos;
                                                return i(unpack(e));
                                        end;
                                end;
                        end;
                end;
                return i(...);
        end);
GetConnectionEnemies = function(I)
                for e, K in pairs(replicated:GetChildren()) do
                        if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
                                return K;
                        end;
                end;
                for e, K in next, game.Workspace.Enemies:GetChildren() do
                        if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
                                return K;
                        end;
                end;
        end;
LowCpu = function()
                local I = true;
                local e = game;
                local K = e.Workspace;
                local n = e.Lighting;
                local d = K.Terrain;
                d.WaterWaveSize = 0;
                d.WaterWaveSpeed = 0;
                d.WaterReflectance = 0;
                d.WaterTransparency = 0;
                n.GlobalShadows = false;
                n.FogEnd = 9000000000.0;
                n.Brightness = 1;
                (settings()).Rendering.QualityLevel = "Level01";
                for e, K in pairs(e:GetDescendants()) do
                        if K:IsA("Part") or K:IsA("Union") or K:IsA("CornerWedgePart") or K:IsA("TrussPart") then
                                K.Material = "Plastic";
                                K.Reflectance = 0;
                        elseif K:IsA("Decal") or K:IsA("Texture") and I then
                                K.Transparency = 1;
                        elseif K:IsA("ParticleEmitter") or K:IsA("Trail") then
                                K.Lifetime = NumberRange.new(0);
                        elseif K:IsA("Explosion") then
                                K.BlastPressure = 1;
                                K.BlastRadius = 1;
                        elseif K:IsA("Fire") or K:IsA("SpotLight") or K:IsA("Smoke") or K:IsA("Sparkles") then
                                K.Enabled = false;
                        elseif K:IsA("MeshPart") then
                                K.Material = "Plastic";
                                K.Reflectance = 0;
                                K.TextureID = 10385902758728957;
                        end;
                end;
                for I, e in pairs(n:GetChildren()) do
                        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                                e.Enabled = false;
                        end;
                end;
        end;
CheckF = function()
                if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then
                        return true;
                end;
        end;
CheckBoat = function()
                for I, e in pairs(workspace.Boats:GetChildren()) do
                        if tostring(e.Owner.Value) == tostring(plr.Name) then
                                return e;
                        end;
                end;
                return false;
        end;
CheckEnemiesBoat = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == "FishBoat" and (e:FindFirstChild("Health")).Value > 0 then
                                return true;
                        end;
                end;
                return false;
        end;
CheckPirateGrandBrigade = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if (e.Name == "PirateGrandBrigade" or e.Name == "PirateBrigade") and (e:FindFirstChild("Health")).Value > 0 then
                                return true;
                        end;
                end;
                return false;
        end;
CheckShark = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == "Shark" and G.Alive(e) then
                                return true;
                        end;
                end;
                return false;
        end;
CheckTerrorShark = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == "Terrorshark" and G.Alive(e) then
                                return true;
                        end;
                end;
                return false;
        end;
CheckPiranha = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == "Piranha" and G.Alive(e) then
                                return true;
                        end;
                end;
                return false;
        end;
CheckFishCrew = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if (e.Name == "Fish Crew Member" or e.Name == "Haunted Crew Member") and G.Alive(e) then
                                return true;
                        end;
                end;
                return false;
        end;
CheckHauntedCrew = function()
                for I, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == "Haunted Crew Member" and G.Alive(e) then
                                return true;
                        end;
                end;
                return false;
        end;
CheckSeaBeast = function()
    local seaBeasts = workspace:FindFirstChild("SeaBeasts")

    if not seaBeasts then
        return false
    end
    for _, e in pairs(seaBeasts:GetChildren()) do
        if e.Name ~= "Leviathan" and e:FindFirstChild("HumanoidRootPart") then
            if e:FindFirstChild("Health") and e.Health.Value > 0 then
                return true
            elseif e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then
                return true
            elseif not e:FindFirstChild("Health") and not e:FindFirstChild("Humanoid") then
                return true
            end
        end
    end

    return false
end
CheckLeviathan = function()
    if workspace:FindFirstChild("SeaBeasts") and workspace.SeaBeasts:FindFirstChild("Leviathan") then
        return true
    end

    return false
end
IsLiveSeaBeast = function(seaBeast)
    if not seaBeast or not seaBeast.Parent or not seaBeast:FindFirstChild("HumanoidRootPart") then
        return false
    end
    if seaBeast:FindFirstChild("Health") then
        return seaBeast.Health.Value > 0
    end
    if seaBeast:FindFirstChild("Humanoid") then
        return seaBeast.Humanoid.Health > 0
    end
    return true
end
IsSeaBeastAttackEnabled = function()
    return _G.SeaBeast1 or _G.AutoAttackSeabeasts
end
UpdStFruit = function()
                for I, e in next, plr.Backpack:GetChildren() do
                        StoreFruit = e:FindFirstChild("EatRemote", true);
                        if StoreFruit then
                                commF:InvokeServer("StoreFruit", StoreFruit.Parent:GetAttribute("OriginalName"), plr.Backpack:FindFirstChild(e.Name));
                        end;
                end;
        end;
collectFruits = function(I)
                if I then
                        local I = plr.Character;
                        for e, K in pairs(workspace:GetChildren()) do
                                if string.find(K.Name, "Fruit") then
                                        K.Handle.CFrame = I.HumanoidRootPart.CFrame;
                                end;
                        end;
                end;
        end;
Getmoon = function()
                if World1 then
                        return Lighting.FantasySky.MoonTextureId;
                elseif World2 then
                        return Lighting.FantasySky.MoonTextureId;
                elseif World3 then
                        return Lighting.Sky.MoonTextureId;
                end;
        end;
DropFruits = function()
                for I, e in next, plr.Backpack:GetChildren() do
                        if string.find(e.Name, "Fruit") then
                                EquipWeapon(e.Name);
                                task.wait(.1);
                                if plr.PlayerGui.Main.Dialogue.Visible == true then
                                        plr.PlayerGui.Main.Dialogue.Visible = false;
                                end;
                                EquipWeapon(e.Name);
                                (plr.Character:FindFirstChild(e.Name)).EatRemote:InvokeServer("Drop");
                        end;
                end;
                for I, e in pairs(plr.Character:GetChildren()) do
                        if string.find(e.Name, "Fruit") then
                                EquipWeapon(e.Name);
                                task.wait(.1);
                                if plr.PlayerGui.Main.Dialogue.Visible == true then
                                        plr.PlayerGui.Main.Dialogue.Visible = false;
                                end;
                                EquipWeapon(e.Name);
                                (plr.Character:FindFirstChild(e.Name)).EatRemote:InvokeServer("Drop");
                        end;
                end;
        end;
GetBP = function(I)
                return plr.Backpack:FindFirstChild(I) or plr.Character:FindFirstChild(I);
        end;
GetIn = function(I)
                for e, K in pairs(commF:InvokeServer("getInventory")) do
                        if type(K) == "table" then
                                if K.Name == I or plr.Character:FindFirstChild(I) or plr.Backpack:FindFirstChild(I) then
                                        return true;
                                end;
                        end;
                end;
                return false;
        end;
GetM = function(I)
                for e, K in pairs(commF:InvokeServer("getInventory")) do
                        if type(K) == "table" then
                                if K.Type == "Material" then
                                        if K.Name == I then
                                                return K.Count;
                                        end;
                                end;
                        end;
                end;
                return 0;
        end;
GetWP = function(I)
                for e, K in pairs(commF:InvokeServer("getInventory")) do
                        if type(K) == "table" then
                                if K.Type == "Sword" then
                                        if K.Name == I or plr.Character:FindFirstChild(I) or plr.Backpack:FindFirstChild(I) then
                                                return true;
                                        end;
                                end;
                        end;
                end;
                return false;
        end;
getInfinity_Ability = function(I, e)
                if not Root then
                        return;
                end;
                if I == "Soru" and e then
                        for I, K in next, getgc() do
                                if plr.Character.Soru then
                                        if typeof(K) == "function" and (getfenv(K)).script == plr.Character.Soru then
                                                for I, K in next, getupvalues(K) do
                                                        if typeof(K) == "table" then
                                                                repeat
                                                                        task.wait(Sec);
                                                                        K.LastUse = 0;
                                                                until not e or plr.Character.Humanoid.Health <= 0;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                elseif I == "Energy" and e then
                        plr.Character.Energy.Changed:Connect(function()
                                if e then
                                        plr.Character.Energy.Value = Energy;
                                end;
                        end);
                elseif I == "Observation" and e then
                        local I = plr.VisionRadius;
                        I.Value = math.huge;
                end;
        end;

Hop = function()
    pcall(function()
        local Http = game:GetService("HttpService")
        local ServerBrowser = replicated:FindFirstChild("__ServerBrowser")
        local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        local target = nil

        local success, data = pcall(function()
            return Http:JSONDecode(_ZX_HttpGet(url))
        end)
        if success and data and data.data then
            for _, server in ipairs(data.data) do
                if server and server.playing and server.maxPlayers and server.playing < server.maxPlayers then
                    target = server
                    break
                end
            end
        end

        if not target and ServerBrowser then
            for I = math.random(1, math.random(40, 75)), 100, 1 do
                local e = ServerBrowser:InvokeServer(I)
                if type(e) == "table" then
                    for _, srv in next, e do
                        if type(srv) == "table" and tonumber(srv.Count) and tonumber(srv.Count) < 12 then
                            target = { id = srv.id or srv.Id, playing = tonumber(srv.Count) }
                            break
                        end
                    end
                end
                if target then break end
            end
        end
        if target and target.id then

            for _ = 1, 3 do
                task.spawn(function()
                    pcall(function()
                        if ServerBrowser then
                            ServerBrowser:InvokeServer("teleport", target.id)
                        else
                            TeleportService:TeleportToPlaceInstance(game.PlaceId, target.id, plr)
                        end
                    end)
                end)
            end
        end
    end)
end;

function GetNewServer()
    local Http = game:GetService("HttpService")
    local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local success, raw = pcall(function() return _ZX_HttpGet(url) end)
    if not success then return nil end
    local ok, data = pcall(function() return Http:JSONDecode(raw) end)
    if not ok or not data or not data.data then return nil end
    local candidates = {}
    for _, server in ipairs(data.data) do
        if server.playing and server.maxPlayers and server.playing < server.maxPlayers and server.id ~= game.JobId then
            table.insert(candidates, server.id)
        end
    end
    if #candidates > 0 then
        return candidates[math.random(1, #candidates)]
    end
    return nil
end
local C = Instance.new("Part", workspace);
C.Size = Vector3.new(1, 1, 1);
C.Name = "Rip_Indra";
C.Anchored = true;
C.CanCollide = false;
C.CanTouch = false;
C.Transparency = 1;

local M = workspace:FindFirstChild(C.Name);
if M and M ~= C then
        M:Destroy();
end;

task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if C and C.Parent == workspace then
                        if shouldTween then
                                (getgenv()).OnFarm = true;
                        else
                                (getgenv()).OnFarm = false;
                        end;
                else
                        (getgenv()).OnFarm = false;
                end;
        end;
end);

task.spawn(function()
        local I = game.Players.LocalPlayer;
        local _charTimeout = 0
        repeat task.wait(0.1) _charTimeout = _charTimeout + 1 until (I.Character and I.Character.PrimaryPart) or _charTimeout > 100

        C.CFrame = I.Character.PrimaryPart.CFrame;

        while task.wait() do
                pcall(function()
                        if (getgenv()).OnFarm then
                                if C and C.Parent == workspace then
                                        local e = I.Character and I.Character.PrimaryPart;
                                        if e and (e.Position - C.Position).Magnitude <= 200 then
                                                e.CFrame = C.CFrame;
                                        else
                                                C.CFrame = e.CFrame;
                                        end;
                                end;

                                local e = I.Character;
                                if e then
                                        for _, v in pairs(e:GetChildren()) do
                                                if v:IsA("BasePart") then
                                                        v.CanCollide = false;
                                                end;
                                        end;
                                end;

                        else
                                local e = I.Character;
                                if e then
                                        for _, v in pairs(e:GetChildren()) do
                                                if v:IsA("BasePart") then
                                                        v.CanCollide = true;
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);

getgenv().TweenSpeedFar = 180
getgenv().TweenSpeedNear = 180
getgenv().TweenSpeedTravel = 100

_tp = function(I)
local e = plr.Character;
if not e or not e:FindFirstChild("HumanoidRootPart") then
return;
end;

local HRP = e.HumanoidRootPart;

shouldTween = true
getgenv().OnFarm = false

if HRP.Anchored then
        HRP.Anchored = false
        task.wait()
end

local dist = (I.Position - HRP.Position).Magnitude

local speed = dist <= 15 and (getgenv().TweenSpeedNear or 370) or (getgenv().TweenSpeedFar or 370)

local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
local tween = game:GetService("TweenService"):Create(C, info, { CFrame = I })

if e.Humanoid.Sit == true then
        C.CFrame = CFrame.new(C.Position.X, I.Y, C.Position.Z)
end

tween:Play()

task.spawn(function()
        while tween.PlaybackState == Enum.PlaybackState.Playing do
                if not shouldTween then
                        tween:Cancel()
                        break
                end
                task.wait(.1)
        end

        getgenv().OnFarm = true
end)

end

TeleportToTarget = function(I)
_tp(I)
end

notween = function(I)
plr.Character.HumanoidRootPart.CFrame = I
end

function BTP(I)
        local e = game.Players.LocalPlayer;
        local K = e.Character.HumanoidRootPart;
        local n = e.Character.Humanoid;
        local d = e.PlayerGui.Main;
        local z = I.Position;
        local H = K.Position;

        repeat
                n.Health = 0;
                K.CFrame = I;
                d.Quest.Visible = false;

                if (K.Position - H).Magnitude > 1 then
                        H = K.Position;
                        K.CFrame = I;
                end;

                task.wait(.5);
        until (I.Position - K.Position).Magnitude <= 2000;
end;
task.spawn(function()
        while task.wait(0.05) do
                pcall(function()
                        if _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or (getgenv()).AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.AutoAttackSeabeasts or _G.FishBoat or _G.Auto or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.SummonPrehistoricIsland or _G.SummonForzenDimension or _G.SummonKitsuneIsland or _G.TweenToPrehistoricIsland or _G.TweenToFrozenDimension or _G.TweenToKitsuneIsland or _G.TweenToMirageIsland or _G.AutoAttackMonDungeon or _G.AutoKillLavaGolem or _G.AutoFarmCandy or _G.FarmMastery_G or _G.FarmMastery_S then
                                shouldTween = true;
                                if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                                        local I = Instance.new("BodyVelocity");
                                        I.Name = "BodyClip";
                                        I.Parent = plr.Character.HumanoidRootPart;
                                        I.MaxForce = Vector3.new(100000, 100000, 100000);
                                        I.Velocity = Vector3.new(0, 0, 0);
                                end;
                                for I, e in pairs(plr.Character:GetDescendants()) do
                                        if e:IsA("BasePart") then
                                                e.CanCollide = false;
                                        end;
                                end;
                        else
                                shouldTween = false;
                                if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                                        (plr.Character.HumanoidRootPart:FindFirstChild("BodyClip")):Destroy();
                                end;
                                if plr.Character:FindFirstChild("highlight") then
                                        (plr.Character:FindFirstChild("highlight")):Destroy();
                                end;
                        end;
                end);
        end;
end);
QuestB = function()
                if World1 then
                        if _G.FindBoss == "The Gorilla King" then
                                bMon = "The Gorilla King";
                                Qname = "JungleQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
                                PosB = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247);
                        elseif _G.FindBoss == "Bobby" then
                                bMon = "Bobby";
                                Qname = "BuggyQuest1";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
                                PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344);
                        elseif _G.FindBoss == "The Saw" then
                                bMon = "The Saw";
                                PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906);
                        elseif _G.FindBoss == "Yeti" then
                                bMon = "Yeti";
                                Qname = "SnowQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156);
                                PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172);
                        elseif _G.FindBoss == "Mob Leader" then
                                bMon = "Mob Leader";
                                PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813);
                        elseif _G.FindBoss == "Vice Admiral" then
                                bMon = "Vice Admiral";
                                Qname = "MarineQuest2";
                                Qdata = 2;
                                PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625);
                                PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375);
                        elseif _G.FindBoss == "Saber Expert" then
                                bMon = "Saber Expert";
                                PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564);
                        elseif _G.FindBoss == "Warden" then
                                bMon = "Warden";
                                Qname = "ImpelQuest";
                                Qdata = 1;
                                PosB = CFrame.new(5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-06, .975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, .220546961);
                                PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
                        elseif _G.FindBoss == "Chief Warden" then
                                bMon = "Chief Warden";
                                Qname = "ImpelQuest";
                                Qdata = 2;
                                PosB = CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939);
                                PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
                        elseif _G.FindBoss == "Swan" then
                                bMon = "Swan";
                                Qname = "ImpelQuest";
                                Qdata = 3;
                                PosB = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812);
                                PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
                        elseif _G.FindBoss == "Magma Admiral" then
                                bMon = "Magma Admiral";
                                Qname = "MagmaQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875);
                                PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875);
                        elseif _G.FindBoss == "Fishman Lord" then
                                bMon = "Fishman Lord";
                                Qname = "FishmanQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
                                PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984);
                        elseif _G.FindBoss == "Wysper" then
                                bMon = "Wysper";
                                Qname = "SkyExp1Quest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094);
                                PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531);
                        elseif _G.FindBoss == "Thunder God" then
                                bMon = "Thunder God";
                                Qname = "SkyExp2Quest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125);
                                PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188);
                        elseif _G.FindBoss == "Cyborg" then
                                bMon = "Cyborg";
                                Qname = "FountainQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
                                PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813);
                        elseif _G.FindBoss == "Ice Admiral" then
                                bMon = "Ice Admiral";
                                Qdata = nil;
                                PosQBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
                                PosB = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
                        elseif _G.FindBoss == "Greybeard" then
                                bMon = "Greybeard";
                                Qdata = nil;
                                PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
                                PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
                        end;
                end;
                if World2 then
                        if _G.FindBoss == "Diamond" then
                                bMon = "Diamond";
                                Qname = "Area1Quest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375);
                                PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407);
                        elseif _G.FindBoss == "Jeremy" then
                                bMon = "Jeremy";
                                Qname = "Area2Quest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063);
                                PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109);
                        elseif _G.FindBoss == "Fajita" then
                                bMon = "Fajita";
                                Qname = "MarineQuest3";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031);
                                PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625);
                        elseif _G.FindBoss == "Don Swan" then
                                bMon = "Don Swan";
                                PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875);
                        elseif _G.FindBoss == "Smoke Admiral" then
                                bMon = "Smoke Admiral";
                                Qname = "IceSideQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813);
                                PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875);
                        elseif _G.FindBoss == "Awakened Ice Admiral" then
                                bMon = "Awakened Ice Admiral";
                                Qname = "FrostQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813);
                                PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125);
                        elseif _G.FindBoss == "Tide Keeper" then
                                bMon = "Tide Keeper";
                                Qname = "ForgottenQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625);
                                PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188);
                        elseif _G.FindBoss == "Darkbeard" then
                                bMon = "Darkbeard";
                                Qdata = nil;
                                PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
                                PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
                        elseif _G.FindBoss == "Cursed Captaim" then
                                bMon = "Cursed Captain";
                                Qdata = nil;
                                PosQBoss = CFrame.new(916.928589, 181.092773, 33422);
                                PosB = CFrame.new(916.928589, 181.092773, 33422);
                        elseif _G.FindBoss == "Order" then
                                bMon = "Order";
                                Qdata = nil;
                                PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
                                PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
                        end;
                end;
                if World3 then
                        if _G.FindBoss == "Stone" then
                                bMon = "Stone";
                                Qname = "PiratePortQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625);
                                PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438);
                        elseif _G.FindBoss == "Hydra Leader" then
                                bMon = "Hydra Leader";
                                Qname = "AmazonQuest2";
                                Qdata = 3;
                                PosQBoss = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
                                PosB = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
                        elseif _G.FindBoss == "Kilo Admiral" then
                                bMon = "Kilo Admiral";
                                Qname = "MarineTreeIsland";
                                Qdata = 3;
                                PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938);
                                PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125);
                        elseif _G.FindBoss == "Captain Elephant" then
                                bMon = "Captain Elephant";
                                Qname = "DeepForestIsland";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875);
                                PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
                        elseif _G.FindBoss == "Beautiful Pirate" then
                                bMon = "Beautiful Pirate";
                                Qname = "DeepForestIsland2";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375);
                                PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285);
                        elseif _G.FindBoss == "Cake Queen" then
                                bMon = "Cake Queen";
                                Qname = "IceCreamIslandQuest";
                                Qdata = 3;
                                PosQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664);
                                PosB = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499);
                        elseif _G.FindBoss == "Longma" then
                                bMon = "Longma";
                                Qdata = nil;
                                PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
                                PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
                        elseif _G.FindBoss == "Soul Reaper" then
                                bMon = "Soul Reaper";
                                Qdata = nil;
                                PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
                                PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
                        end;
                end;
        end;
QuestBeta = function()
                local I = QuestB();
                return {
                        [0] = _G.FindBoss,
                        [1] = bMon,
                        [2] = Qdata,
                        [3] = Qname,
                        [4] = PosB,
                };
        end;
QuestCheck = function()
    local I = game.Players.LocalPlayer.Data.Level.Value


    if World1 and I > 699 then
        I = 650
    end

    if World2 and I > 1499 then
        I = 1450
    end

    if World1 then
        if I == 1 or I <= 9 then
            if tostring(TeamSelf) == "Marines" then
                Mon = "Trainee"
                Qname = "MarineQuest"
                Qdata = 1
                NameMon = "Trainee"
                PosM = CFrame.new(-2709.67944, 24.5206585, 2104.24585)
                PosQ = CFrame.new(-2709.67944, 24.5206585, 2104.24585)
            elseif tostring(TeamSelf) == "Pirates" then
                Mon = "Bandit"
                Qdata = 1
                Qname = "BanditQuest1"
                NameMon = "Bandit"
                PosM = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
                PosQ = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
            end
        elseif I >= 10 and I <= 14 then
            Mon = "Monkey"
            Qdata = 1
            Qname = "JungleQuest"
            NameMon = "Monkey"
            PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            PosM = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642)
        elseif I >= 15 and I <= 29 then
            Mon = "Gorilla"
            Qdata = 2
            Qname = "JungleQuest"
            NameMon = "Gorilla"
            PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            PosM = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469)
        elseif I >= 30 and I <= 39 then
            Mon = "Pirate"
            Qdata = 1
            Qname = "BuggyQuest1"
            NameMon = "Pirate"
            PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            PosM = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531)
        elseif I >= 40 and I <= 59 then
            Mon = "Brute"
            Qdata = 2
            Qname = "BuggyQuest1"
            NameMon = "Brute"
            PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            PosM = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188)
        elseif I >= 60 and I <= 74 then
            Mon = "Desert Bandit"
            Qdata = 1
            Qname = "DesertQuest"
            NameMon = "Desert Bandit"
            PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            PosM = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375)
        elseif I >= 75 and I <= 89 then
            Mon = "Desert Officer"
            Qdata = 2
            Qname = "DesertQuest"
            NameMon = "Desert Officer"
            PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            PosM = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188)
        elseif I >= 90 and I <= 99 then
            Mon = "Snow Bandit"
            Qdata = 1
            Qname = "SnowQuest"
            NameMon = "Snow Bandit"
            PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            PosM = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031)
        elseif I >= 100 and I <= 119 then
            Mon = "Snowman"
            Qdata = 2
            Qname = "SnowQuest"
            NameMon = "Snowman"
            PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            PosM = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif I >= 120 and I <= 149 then
            Mon = "Chief Petty Officer"
            Qdata = 1
            Qname = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            PosQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018)
            PosM = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062)
        elseif I >= 150 and I <= 174 then
            Mon = "Sky Bandit"
            Qdata = 1
            Qname = "SkyQuest"
            NameMon = "Sky Bandit"
            PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            PosM = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062)
        elseif I >= 175 and I <= 189 then
            Mon = "Dark Master"
            Qdata = 2
            Qname = "SkyQuest"
            NameMon = "Dark Master"
            PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            PosM = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906)
        elseif I >= 190 and I <= 209 then
            Mon = "Prisoner"
            Qdata = 1
            Qname = "PrisonerQuest"
            NameMon = "Prisoner"
            PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            PosM = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508)
        elseif I >= 210 and I <= 249 then
            Mon = "Dangerous Prisoner"
            Qdata = 2
            Qname = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            PosM = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594)
        elseif I >= 250 and I <= 274 then
            Mon = "Toga Warrior"
            Qdata = 1
            Qname = "ColosseumQuest"
            NameMon = "Toga Warrior"
            PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            PosM = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625)
        elseif I >= 275 and I <= 299 then
            Mon = "Gladiator"
            Qdata = 2
            Qname = "ColosseumQuest"
            NameMon = "Gladiator"
            PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            PosM = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406)
        elseif I >= 300 and I <= 324 then
            Mon = "Military Soldier"
            Qdata = 1
            Qname = "MagmaQuest"
            NameMon = "Military Soldier"
            PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            PosM = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875)
        elseif I >= 325 and I <= 374 then
            Mon = "Military Spy"
            Qdata = 2
            Qname = "MagmaQuest"
            NameMon = "Military Spy"
            PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            PosM = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375)
        elseif I >= 375 and I <= 399 then
            Mon = "Fishman Warrior"
            Qdata = 1
            Qname = "FishmanQuest"
            NameMon = "Fishman Warrior"
            PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            PosM = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                commF:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif I >= 400 and I <= 449 then
            Mon = "Fishman Commando"
            Qdata = 2
            Qname = "FishmanQuest"
            NameMon = "Fishman Commando"
            PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            PosM = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                commF:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif I >= 450 and I <= 474 then
            Mon = "God's Guard"
            Qdata = 1
            Qname = "SkyExp1Quest"
            NameMon = "God's Guard"
            PosQ = CFrame.new(-4721.88867, 843.874695, -1949.96643)
            PosM = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                commF:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif I >= 475 and I <= 524 then
            Mon = "Shanda"
            Qdata = 2
            Qname = "SkyExp1Quest"
            NameMon = "Shanda"
            PosQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
            PosM = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                commF:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif I >= 525 and I <= 549 then
            Mon = "Royal Squad"
            Qdata = 1
            Qname = "SkyExp2Quest"
            NameMon = "Royal Squad"
            PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            PosM = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469)
        elseif I >= 550 and I <= 624 then
            Mon = "Royal Soldier"
            Qdata = 2
            Qname = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            PosM = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266)
        elseif I >= 625 and I <= 649 then
            Mon = "Galley Pirate"
            Qdata = 1
            Qname = "FountainQuest"
            NameMon = "Galley Pirate"
            PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            PosM = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969)
        elseif I >= 650 then
            Mon = "Galley Captain"
            Qdata = 2
            Qname = "FountainQuest"
            NameMon = "Galley Captain"
            PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            PosM = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375)
        end
    elseif World2 then
        if I >= 700 and I <= 724 then
            Mon = "Raider"
            Qdata = 1
            Qname = "Area1Quest"
            NameMon = "Raider"
            PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            PosM = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125)
        elseif I >= 725 and I <= 774 then
            Mon = "Mercenary"
            Qdata = 2
            Qname = "Area1Quest"
            NameMon = "Mercenary"
            PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            PosM = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656)
        elseif I >= 775 and I <= 799 then
            Mon = "Swan Pirate"
            Qdata = 1
            Qname = "Area2Quest"
            NameMon = "Swan Pirate"
            PosQ = CFrame.new(638.43811, 71.769989, 918.282898)
            PosM = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016)
        elseif I >= 800 and I <= 874 then
            Mon = "Factory Staff"
            Qname = "Area2Quest"
            Qdata = 2
            NameMon = "Factory Staff"
            PosQ = CFrame.new(632.698608, 73.1055908, 918.666321)
            PosM = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422)
        elseif I >= 875 and I <= 899 then
            Mon = "Marine Lieutenant"
            Qdata = 1
            Qname = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            PosM = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281)
        elseif I >= 900 and I <= 949 then
            Mon = "Marine Captain"
            Qdata = 2
            Qname = "MarineQuest3"
            NameMon = "Marine Captain"
            PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            PosM = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656)
        elseif I >= 950 and I <= 974 then
            Mon = "Zombie"
            Qdata = 1
            Qname = "ZombieQuest"
            NameMon = "Zombie"
            PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            PosM = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875)
        elseif I >= 975 and I <= 999 then
            Mon = "Vampire"
            Qdata = 2
            Qname = "ZombieQuest"
            NameMon = "Vampire"
            PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            PosM = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391)
        elseif I >= 1000 and I <= 1049 then
            Mon = "Snow Trooper"
            Qdata = 1
            Qname = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            PosQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            PosM = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688)
        elseif I >= 1050 and I <= 1099 then
            Mon = "Winter Warrior"
            Qdata = 2
            Qname = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            PosQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            PosM = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062)
        elseif I >= 1100 and I <= 1124 then
            Mon = "Lab Subordinate"
            Qdata = 1
            Qname = "IceSideQuest"
            NameMon = "Lab Subordinate"
            PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            PosM = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438)
        elseif I >= 1125 and I <= 1174 then
            Mon = "Horned Warrior"
            Qdata = 2
            Qname = "IceSideQuest"
            NameMon = "Horned Warrior"
            PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            PosM = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375)
        elseif I >= 1175 and I <= 1199 then
            Mon = "Magma Ninja"
            Qdata = 1
            Qname = "FireSideQuest"
            NameMon = "Magma Ninja"
            PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            PosM = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938)
        elseif I >= 1200 and I <= 1249 then
            Mon = "Lava Pirate"
            Qdata = 2
            Qname = "FireSideQuest"
            NameMon = "Lava Pirate"
            PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            PosM = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875)
        elseif I >= 1250 and I <= 1274 then
            Mon = "Ship Deckhand"
            Qdata = 1
            Qname = "ShipQuest1"
            NameMon = "Ship Deckhand"
            PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            PosM = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1275 and I <= 1299 then
            Mon = "Ship Engineer"
            Qdata = 2
            Qname = "ShipQuest1"
            NameMon = "Ship Engineer"
            PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            PosM = CFrame.new(919.47863769531, 43.544013977051, 32779.96875)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1300 and I <= 1324 then
            Mon = "Ship Steward"
            Qdata = 1
            Qname = "ShipQuest2"
            NameMon = "Ship Steward"
            PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
            PosM = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1325 and I <= 1349 then
            Mon = "Ship Officer"
            Qdata = 2
            Qname = "ShipQuest2"
            NameMon = "Ship Officer"
            PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
            PosM = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1350 and I <= 1374 then
            Mon = "Arctic Warrior"
            Qdata = 1
            Qname = "FrostQuest"
            NameMon = "Arctic Warrior"
            PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            PosM = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125)
        elseif I >= 1375 and I <= 1424 then
            Mon = "Snow Lurker"
            Qdata = 2
            Qname = "FrostQuest"
            NameMon = "Snow Lurker"
            PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            PosM = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938)
        elseif I >= 1425 and I <= 1449 then
            Mon = "Sea Soldier"
            Qdata = 1
            Qname = "ForgottenQuest"
            NameMon = "Sea Soldier"
            PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            PosM = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125)
        elseif I >= 1450 then
            Mon = "Water Fighter"
            Qdata = 2
            Qname = "ForgottenQuest"
            NameMon = "Water Fighter"
            PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            PosM = CFrame.new(-3352.9013671875, 285.01556396484, -10534.841796875)
        end
    elseif World3 then
if I == 1500 or I <= 1524 then
Mon = "Pirate Millionaire"
Qdata = 1
Qname = "PiratePortQuest"
NameMon = "Pirate Millionaire"
PosQ = CFrame.new(-290.07, 42.90, 5581.59)
PosM = CFrame.new(-246.00, 47.31, 5584.10)
elseif I == 1525 or I <= 1574 then
Mon = "Pistol Billionaire"
Qdata = 2
Qname = "PiratePortQuest"
NameMon = "Pistol Billionaire"
PosQ = CFrame.new(-290.07, 42.90, 5581.59)
PosM = CFrame.new(-187.33, 86.24, 6013.51)
                elseif I == 1575 or I <= 1599 then
    Mon = "Dragon Crew Warrior"
    Qdata = 1
    Qname = "DragonCrewQuest"
    NameMon = "Dragon Crew Warrior"
    PosQ = CFrame.new(6737.06055,127.417763,-712.300659,-0.463954359,-7.19574755e-09,0.885859072,7.69187665e-08,1,4.84078626e-08,-0.885859072,9.05982276e-08,-0.463954359)
    PosM = CFrame.new(6709.76367,52.3442993,-1139.02966,-0.763515472,0,0.645789504,0,1,0,-0.645789504,0,-0.763515472)
elseif I == 1600 or I <= 1624 then
    Mon = "Dragon Crew Archer"
    Qdata = 2
    Qname = "DragonCrewQuest"
    NameMon = "Dragon Crew Archer"
    PosQ = CFrame.new(6737.06055,127.417763,-712.300659,-0.463954359,-7.19574755e-09,0.885859072,7.69187665e-08,1,4.84078626e-08,-0.885859072,9.05982276e-08,-0.463954359)
    PosM = CFrame.new(6668.76172,481.376923,329.12207,-0.121787429,0,-0.992556155,0,1,0,0.992556155,0,-0.121787429)
elseif I == 1625 or I <= 1649 then
    Mon = "Hydra Enforcer"
    Qname = "VenomCrewQuest"
    Qdata = 1
    NameMon = "Hydra Enforcer"
    PosQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
    PosM = CFrame.new(4547.11523, 1003.10217, 334.194824, 0.388810456, -0, -0.921317935, 0, 1, -0, 0.921317935, 0, 0.388810456)
elseif I == 1650 or I <= 1699 then
    Mon = "Venomous Assailant"
    Qname = "VenomCrewQuest"
    Qdata = 2
    NameMon = "Venomous Assailant"
    PosQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
    PosM = CFrame.new(4674.92676, 1134.82654, 996.308838, 0.731321394, -0, -0.682033002, 0, 1, -0, 0.682033002, 0, 0.731321394)
                elseif I == 1700 or I <= 1724 then
                        Mon = "Marine Commodore"
                        Qdata = 1
                        Qname = "MarineTreeIsland"
                        NameMon = "Marine Commodore"
                        PosQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        PosM = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312)
                elseif I == 1725 or I <= 1774 then
                        Mon = "Marine Rear Admiral"
                        NameMon = "Marine Rear Admiral"
                        Qname = "MarineTreeIsland"
                        Qdata = 2
                        PosQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                        PosM = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125)
                elseif I == 1775 or I <= 1799 then
                        Mon = "Fishman Raider"
                        Qdata = 1
                        Qname = "DeepForestIsland3"
                        NameMon = "Fishman Raider"
                        PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        PosM = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625)
                elseif I == 1800 or I <= 1824 then
                        Mon = "Fishman Captain"
                        Qdata = 2
                        Qname = "DeepForestIsland3"
                        NameMon = "Fishman Captain"
                        PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        PosM = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625)
                elseif I == 1825 or I <= 1849 then
                        Mon = "Forest Pirate"
                        Qdata = 1
                        Qname = "DeepForestIsland"
                        NameMon = "Forest Pirate"
                        PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                        PosM = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062)
                elseif I == 1850 or I <= 1899 then
                        Mon = "Mythological Pirate"
                        Qdata = 2
                        Qname = "DeepForestIsland"
                        NameMon = "Mythological Pirate"
                        PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                        PosM = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
                elseif I == 1900 or I <= 1924 then
                        Mon = "Jungle Pirate"
                        Qdata = 1
                        Qname = "DeepForestIsland2"
                        NameMon = "Jungle Pirate"
                        PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        PosM = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062)
                elseif I == 1925 or I <= 1974 then
                        Mon = "Musketeer Pirate"
                        Qdata = 2
                        Qname = "DeepForestIsland2"
                        NameMon = "Musketeer Pirate"
                        PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        PosM = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375)
                elseif I == 1975 or I <= 1999 then
                        Mon = "Reborn Skeleton"
                        Qdata = 1
                        Qname = "HauntedQuest1"
                        NameMon = "Reborn Skeleton"
                        PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        PosM = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062)
                elseif I == 2000 or I <= 2024 then
                        Mon = "Living Zombie"
                        Qdata = 2
                        Qname = "HauntedQuest1"
                        NameMon = "Living Zombie"
                        PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        PosM = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875)
                elseif I == 2025 or I <= 2049 then
                        Mon = "Demonic Soul"
                        Qdata = 1
                        Qname = "HauntedQuest2"
                        NameMon = "Demonic Soul"
                        PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625)
                elseif I == 2050 or I <= 2074 then
                        Mon = "Posessed Mummy"
                        Qdata = 2
                        Qname = "HauntedQuest2"
                        NameMon = "Posessed Mummy"
                        PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625)
                elseif I == 2075 or I <= 2099 then
                        Mon = "Peanut Scout"
                        Qdata = 1
                        Qname = "NutsIslandQuest"
                        NameMon = "Peanut Scout"
                        PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188)
                elseif I == 2100 or I <= 2124 then
                        Mon = "Peanut President"
                        Qdata = 2
                        Qname = "NutsIslandQuest"
                        NameMon = "Peanut President"
                        PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875)
                elseif I == 2125 or I <= 2149 then
                        Mon = "Ice Cream Chef"
                        Qdata = 1
                        Qname = "IceCreamIslandQuest"
                        NameMon = "Ice Cream Chef"
                        PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125)
                elseif I == 2150 or I <= 2199 then
                        Mon = "Ice Cream Commander"
                        Qdata = 2
                        Qname = "IceCreamIslandQuest"
                        NameMon = "Ice Cream Commander"
                        PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        PosM = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062)
                elseif I == 2200 or I <= 2224 then
                        Mon = "Cookie Crafter"
                        Qdata = 1
                        Qname = "CakeQuest1"
                        NameMon = "Cookie Crafter"
                        PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
                        PosM = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375)
                elseif I == 2225 or I <= 2249 then
                        Mon = "Cake Guard"
                        Qdata = 2
                        Qname = "CakeQuest1"
                        NameMon = "Cake Guard"
                        PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
                        PosM = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688)
                elseif I == 2250 or I <= 2274 then
                        Mon = "Baking Staff"
                        Qdata = 1
                        Qname = "CakeQuest2"
                        NameMon = "Baking Staff"
                        PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                        PosM = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938)
                elseif I == 2275 or I <= 2299 then
                        Mon = "Head Baker"
                        Qdata = 2
                        Qname = "CakeQuest2"
                        NameMon = "Head Baker"
                        PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                        PosM = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312)
                elseif I == 2300 or I <= 2324 then
                        Mon = "Cocoa Warrior"
                        Qdata = 1
                        Qname = "ChocQuest1"
                        NameMon = "Cocoa Warrior"
                        PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
                        PosM = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312)
                elseif I == 2325 or I <= 2349 then
                        Mon = "Chocolate Bar Battler"
                        Qdata = 2
                        Qname = "ChocQuest1"
                        NameMon = "Chocolate Bar Battler"
                        PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
                        PosM = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375)
                elseif I == 2350 or I <= 2374 then
                        Mon = "Sweet Thief"
                        Qdata = 1
                        Qname = "ChocQuest2"
                        NameMon = "Sweet Thief"
                        PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
                        PosM = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062)
                elseif I == 2375 or I <= 2399 then
                        Mon = "Candy Rebel"
                        Qdata = 2
                        Qname = "ChocQuest2"
                        NameMon = "Candy Rebel"
                        PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
                        PosM = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562)
                elseif I == 2400 or I <= 2449 then
                        Mon = "Candy Pirate"
                        Qdata = 1
                        Qname = "CandyQuest1"
                        NameMon = "Candy Pirate"
                        PosQ = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938)
                        PosM = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875)
                elseif I == 2450 or I <= 2474 then
                        Mon = "Isle Outlaw"
                        Qdata = 1
                        Qname = "TikiQuest1"
                        NameMon = "Isle Outlaw"
                        PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
                        PosM = CFrame.new(-16479.900390625, 226.6117401123, -300.31143188477)
                elseif I == 2475 or I <= 2499 then
                        Mon = "Island Boy"
                        Qdata = 2
                        Qname = "TikiQuest1"
                        NameMon = "Island Boy"
                        PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
                        PosM = CFrame.new(-16849.396484375, 192.86505126953, -150.78532409668)
                elseif I == 2500 or I <= 2524 then
                        Mon = "Sun-kissed Warrior"
                        Qdata = 1
                        Qname = "TikiQuest2"
                        NameMon = "kissed Warrior"
                        PosM = CFrame.new(-16347, 64, 984)
                        PosQ = CFrame.new(-16538, 55, 1049)
                elseif I == 2525 or I <= 2550 then
                        Mon = "Isle Champion"
                        Qdata = 2
                        Qname = "TikiQuest2"
                        NameMon = "Isle Champion"
                        PosQ = CFrame.new(-16541.0215, 57.3082275, 1051.46118, .0410757065, 0, -0.999156058, 0, 1, 0, .999156058, 0, .0410757065)
                        PosM = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688)
                elseif I == 2551 or I <= 2574 then
                        Mon = "Serpent Hunter"
                        Qdata = 1
                        Qname = "TikiQuest3"
                        NameMon = "Serpent Hunter"
                        PosQ = CFrame.new(-16668.03,105.32,1568.60)
                        PosM = CFrame.new(-16645.64,163.09,1352.87)
                elseif I >= 2575 and I <= 2599 then
                        Mon = "Skull Slayer"
                        Qdata = 2
                        Qname = "TikiQuest3"
                        NameMon = "Skull Slayer"
                        PosQ = CFrame.new(-16668.03,105.32,1568.60)
                        PosM = CFrame.new(-16709.49,419.68,1751.09)
                elseif I >= 2600 and I <= 2624 then
                        PosQ = CFrame.new(10778.875, -2087.72437, 9265.18359, 0.934615612, -9.33109447e-08, -0.355659455, 9.17655143e-08, 1, -2.12154276e-08, 0.355659455, -1.28090019e-08, 0.934615612)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "Reef Bandit"
                        Qdata = 1
                        Qname = "SubmergedQuest1"
                        NameMon = "Reef Bandit"
                        PosM = CFrame.new(11019.1318, -2146.06812, 9342.3916, -0.719955266, -1.74275385e-08, 0.69402045, 5.76556367e-08, 1, 8.49211546e-08, -0.69402045, 1.01153624e-07, -0.719955266)
                elseif I >= 2625 and I <= 2649 then
                        PosQ = CFrame.new(10778.875, -2087.72437, 9265.18359, 0.934615612, -9.33109447e-08, -0.355659455, 9.17655143e-08, 1, -2.12154276e-08, 0.355659455, -1.28090019e-08, 0.934615612)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "Coral Pirate"
                        Qdata = 2
                        Qname = "SubmergedQuest1"
                        NameMon = "Coral Pirate"
                        PosM = CFrame.new(10808.6006, -2030.36145, 9364.2334, -0.775185347, -0.0359364748, 0.6307109, 0.0615428537, 0.989336014, 0.132010356, -0.628728986, 0.141148239, -0.764707148)
                elseif I >= 2650 and I <= 2674 then
                        PosQ = CFrame.new(10880.6855, -2086.20044, 10032.624, -0.321384728, 9.87648434e-08, -0.946948707, 7.13271007e-08, 1, 8.00902953e-08, 0.946948707, -4.18033075e-08, -0.321384728)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "Sea Chanter"
                        Qdata = 1
                        Qname = "SubmergedQuest2"
                        NameMon = "Sea Chanter"
                        PosM = CFrame.new(10671.2715, -2057.59155, 10047.2588, -0.846484065, -3.11045447e-08, 0.532414079, -5.55383117e-08, 1, -2.98785316e-08, -0.532414079, -5.48610757e-08, -0.846484065)
                elseif I >= 2675 and I <= 2699 then
                        PosQ = CFrame.new(10880.6855, -2086.20044, 10032.624, -0.321384728, 9.87648434e-08, -0.946948707, 7.13271007e-08, 1, 8.00902953e-08, 0.946948707, -4.18033075e-08, -0.321384728)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "Ocean Prophet"
                        Qdata = 2
                        Qname = "SubmergedQuest2"
                        NameMon = "Ocean Prophet"
                        PosM = CFrame.new(11008.5195, -2007.72839, 10223.0791, -0.688615739, 2.33523378e-09, -0.725126445, 2.99292546e-09, 1, 3.78221315e-10, 0.725126445, -1.90980032e-09, -0.688615739)
                elseif I >= 2700 and I <= 2724 then
                        PosQ = CFrame.new(9640.08789, -1992.44507, 9613.65234, -0.957327187, 4.11991223e-08, 0.289006323, 1.5775445e-08, 1, -9.02985846e-08, -0.289006323, -8.18860855e-08, -0.957327187)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "High Disciple"
                        Qdata = 1
                        Qname = "SubmergedQuest3"
                        NameMon = "High Disciple"
                        PosM = CFrame.new(9750.41602, -1966.93884, 9753.36035, -0.749824047, 5.57797613e-08, -0.661637306, 2.03500754e-08, 1, 6.1243199e-08, 0.661637306, 3.24572511e-08, -0.749824047)
                elseif I >= 2725 then
                        PosQ = CFrame.new(9640.08789, -1992.44507, 9613.65234, -0.957327187, 4.11991223e-08, 0.289006323, 1.5775445e-08, 1, -9.02985846e-08, -0.289006323, -8.18860855e-08, -0.957327187)
                        if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                _tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
                                task.wait(2)
                                local args = {"TravelToSubmergedIsland"}
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                                return
                        end

                        Mon = "Grand Devotee"
                        Qdata = 2
                        Qname = "SubmergedQuest3"
                        NameMon = "Grand Devotee"
                        PosM = CFrame.new(9611.70508, -1993.47119, 9882.68848, -0.591375351, 4.14332426e-08, -0.806396425, 4.73774868e-08, 1, 1.66361875e-08, 0.806396425, -2.83668058e-08, -0.591375351)
                end
        end
end

MaterialMon = function()
                local I = game.Players.LocalPlayer;
                local e = I.Character and I.Character:FindFirstChild("HumanoidRootPart");
                if not e then
                        return;
                end;
                shouldRequestEntrance = function(I, K)
                                local n = (e.Position - I).Magnitude;
                                if n >= K then
                                        commF:InvokeServer("requestEntrance", I);
                                end;
                        end;
                if World1 then
                        if SelectMaterial == "Angel Wings" then
                                MMon = {
                                                "Shanda",
                                                "Royal Squad",
                                                "Royal Soldier",
                                                "Wysper",
                                                "Thunder God",
                                        };
                                MPos = CFrame.new(-4698, 845, -1912);
                                SP = "Default";
                                local I = Vector3.new(-4607.82275, 872.54248, -1667.55688);
                                shouldRequestEntrance(I, 10000);
                        elseif SelectMaterial == "Leather + Scrap Metal" then
                                MMon = { "Brute", "Pirate" };
                                MPos = CFrame.new(-1145, 15, 4350);
                                SP = "Default";
                        elseif SelectMaterial == "Magma Ore" then
                                MMon = { "Military Soldier", "Military Spy", "Magma Admiral" };
                                MPos = CFrame.new(-5815, 84, 8820);
                                SP = "Default";
                        elseif SelectMaterial == "Fish Tail" then
                                MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" };
                                MPos = CFrame.new(61123, 19, 1569);
                                SP = "Default";
                                local I = Vector3.new(61163.8515625, 5.342342376709, 1819.7841796875);
                                shouldRequestEntrance(I, 17000);
                        end;
                elseif World2 then
                        if SelectMaterial == "Leather + Scrap Metal" then
                                MMon = { "Marine Captain" };
                                MPos = CFrame.new(-2010.5059814453, 73.001159667969, -3326.6208496094);
                                SP = "Default";
                        elseif SelectMaterial == "Magma Ore" then
                                MMon = { "Magma Ninja", "Lava Pirate" };
                                MPos = CFrame.new(-5428, 78, -5959);
                                SP = "Default";
                        elseif SelectMaterial == "Ectoplasm" then
    MMon = {
            "Ship Deckhand",
            "Ship Engineer",
            "Ship Steward",
            "Ship Officer",
        };
    MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625);
    SP = "Default";

    local I = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125);


    shouldRequestEntrance(I, 1000);

                        elseif SelectMaterial == "Mystic Droplet" then
                                MMon = { "Water Fighter" };
                                MPos = CFrame.new(-3385, 239, -10542);
                                SP = "Default";
                        elseif SelectMaterial == "Radioactive Material" then
                                MMon = { "Factory Staff" };
                                MPos = CFrame.new(295, 73, -56);
                                SP = "Default";
                        elseif SelectMaterial == "Vampire Fang" then
                                MMon = { "Vampire" };
                                MPos = CFrame.new(-6033, 7, -1317);
                                SP = "Default";
                        end;
                elseif World3 then
                        if SelectMaterial == "Scrap Metal" then
                                MMon = { "Jungle Pirate", "Forest Pirate" };
                                MPos = CFrame.new(-11975.78515625, 331.77340698242, -10620.030273438);
                                SP = "Default";
                        elseif SelectMaterial == "Fish Tail" then
                                MMon = { "Fishman Raider", "Fishman Captain" };
                                MPos = CFrame.new(-10993, 332, -8940);
                                SP = "Default";
                        elseif SelectMaterial == "Conjured Cocoa" then
                                MMon = { "Chocolate Bar Battler", "Cocoa Warrior" };
                                MPos = CFrame.new(620.63446044922, 78.936447143555, -12581.369140625);
                                SP = "Default";
                        elseif SelectMaterial == "Dragon Scale" then
                                MMon = { "Dragon Crew Archer", "Dragon Crew Warrior" };
                                MPos = CFrame.new(6594, 383, 139);
                                SP = "Default";
                        elseif SelectMaterial == "Gunpowder" then
                                MMon = { "Pistol Billionaire" };
                                MPos = CFrame.new(-84.855690002441, 85.620613098145, 6132.0087890625);
                                SP = "Default";
                        elseif SelectMaterial == "Mini Tusk" then
                                MMon = { "Mythological Pirate" };
                                MPos = CFrame.new(-13545, 470, -6917);
                                SP = "Default";
                        elseif SelectMaterial == "Demonic Wisp" then
                                MMon = { "Demonic Soul" };
                                MPos = CFrame.new(-9495.6806640625, 453.58624267578, 5977.3486328125);
                                SP = "Default";
                        end;
                end;
        end;
QuestNeta = function()
                local I = QuestCheck();
                return {
                        [1] = Mon,
                        [2] = Qdata,
                        [3] = Qname,
                        [4] = PosM,
                        [5] = NameMon,
                        [6] = PosQ,
                };
        end;
                local Library = (function()

    local libCode = _ZX_HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/xRedzLib.lua")






    libCode = libCode:gsub("Color3%.fromRGB%(0, 255, 0%)", "Color3.fromRGB(200, 15, 15)")

    libCode = libCode:gsub("Color3%.fromRGB%(50, 150, 50%)", "Color3.fromRGB(140, 10, 10)")

    libCode = libCode:gsub("Color3%.fromRGB%(40, 150, 255%)", "Color3.fromRGB(200, 15, 15)")


    libCode = libCode:gsub("Color3%.fromRGB%(30, 30, 30%)", "Color3.fromRGB(8, 8, 12)")
    libCode = libCode:gsub("Color3%.fromRGB%(25, 25, 25%)", "Color3.fromRGB(6, 6, 10)")
    libCode = libCode:gsub("Color3%.fromRGB%(20, 20, 20%)", "Color3.fromRGB(4, 4, 8)")


    libCode = libCode:gsub("Color3%.fromRGB%(40, 40, 40%)", "Color3.fromRGB(12, 12, 18)")
    libCode = libCode:gsub("Color3%.fromRGB%(35, 35, 35%)", "Color3.fromRGB(10, 10, 15)")
    libCode = libCode:gsub("Color3%.fromRGB%(45, 45, 45%)", "Color3.fromRGB(14, 14, 20)")


    libCode = libCode:gsub("Color3%.fromRGB%(15, 15, 15%)", "Color3.fromRGB(3, 3, 6)")


    libCode = libCode:gsub("Color3%.fromRGB%(50, 50, 50%)", "Color3.fromRGB(25, 8, 8)")
    libCode = libCode:gsub("Color3%.fromRGB%(60, 60, 60%)", "Color3.fromRGB(30, 10, 10)")


    libCode = libCode:gsub("Color3%.fromRGB%(200, 200, 200%)", "Color3.fromRGB(220, 215, 220)")
    libCode = libCode:gsub("Color3%.fromRGB%(150, 150, 150%)", "Color3.fromRGB(160, 155, 165)")
    libCode = libCode:gsub("Color3%.fromRGB%(100, 100, 100%)", "Color3.fromRGB(80, 70, 80)")

    return loadstring(libCode)()
end)({Color = Color3.fromRGB(200, 15, 15)}):MakeWindow({
    Title = "Zythera-X",
    SubTitle = "Blox Fruit",
    SaveFolder = "zytherax.json"
})

do
    local _origMakeTab = Library.MakeTab
    Library.MakeTab = function(self, opts)
        local tab = _origMakeTab(self, opts)
        if not tab then return tab end

        local tabName = (opts and opts.Title) or "Tab"


        local _origAddToggle = tab.AddToggle
        tab.AddToggle = function(t, toggleOpts)
            local origCallback = toggleOpts.Callback
            local toggleName = toggleOpts.Name or "Toggle"
            toggleOpts.Callback = function(state)
                if origCallback then
                    pcall(origCallback, state)
                end
                if getgenv().ZX_Notify then
                    getgenv().ZX_Notify(
                        state and "Enabled" or "Disabled",
                        toggleName,
                        state and "feature" or "warning"
                    )
                end
            end
            return _origAddToggle(t, toggleOpts)
        end


        local _origAddButton = tab.AddButton
        tab.AddButton = function(t, btnOpts)
            local origCallback = btnOpts.Callback
            local btnName = btnOpts.Name or "Button"
            btnOpts.Callback = function()
                if origCallback then
                    pcall(origCallback)
                end
                if getgenv().ZX_Notify then
                    getgenv().ZX_Notify("Action", btnName, "info")
                end
            end
            return _origAddButton(t, btnOpts)
        end


        local _origAddDropdown = tab.AddDropdown
        tab.AddDropdown = function(t, ddOpts)
            local origCallback = ddOpts.Callback
            local ddName = ddOpts.Name or "Dropdown"
            ddOpts.Callback = function(value)
                if origCallback then
                    pcall(origCallback, value)
                end
                if getgenv().ZX_Notify then
                    getgenv().ZX_Notify("Selected", ddName .. " = " .. tostring(value), "info")
                end
            end
            return _origAddDropdown(t, ddOpts)
        end

        return tab
    end
end

do
    local camera = workspace.CurrentCamera
    local function getScale()
        local vp = camera.ViewportSize
        local w = vp.X




        if w >= 1200 then return 1.0
        elseif w >= 700 then return 0.85
        elseif w >= 500 then return 0.75
        else return 0.65 end
    end

    local function applyScaleToLibrary()

        local targetGui = nil
        pcall(function()
            for _, gui in ipairs(game.CoreGui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Name ~= "ControlGUI"
                   and gui.Name ~= "ZX_Load" and gui.Name ~= "ZX_NotifGui"
                   and gui.Name ~= "RobloxGui" then

                    local hasMain = false
                    for _, child in ipairs(gui:GetChildren()) do
                        if child:IsA("Frame") or child:IsA("ScrollingFrame") then
                            hasMain = true
                            break
                        end
                    end
                    if hasMain then
                        targetGui = gui
                        break
                    end
                end
            end
        end)

        if targetGui then

            local existing = targetGui:FindFirstChildOfClass("UIScale")
            if existing then existing:Destroy() end


            local scale = Instance.new("UIScale")
            scale.Name = "ZX_MobileScale"
            scale.Scale = getScale()
            scale.Parent = targetGui


            camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
                if scale and scale.Parent then
                    scale.Scale = getScale()
                end
            end)
        end
    end


    task.spawn(function()

        task.wait(0.5)
        applyScaleToLibrary()

        for i = 1, 5 do
            task.wait(1)
            if not game.CoreGui:FindFirstChildOfClass("UIScale") then
                applyScaleToLibrary()
            end
        end
    end)
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = game.CoreGui

local toggleBtn = Instance.new("TextButton")

local _vw = workspace.CurrentCamera.ViewportSize.X
local _btnSize = _vw < 500 and 42 or 55
toggleBtn.Size = UDim2.new(0, _btnSize, 0, _btnSize)
toggleBtn.Position = UDim2.new(0.5, -_btnSize/2, 0.5, -_btnSize/2)
toggleBtn.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
toggleBtn.Text = "ZX"
toggleBtn.TextColor3 = Color3.fromRGB(220, 20, 20)
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.TextSize = 20
toggleBtn.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
toggleBtn.TextStrokeTransparency = 0.5
toggleBtn.AutoButtonColor = false
toggleBtn.TextWrapped = false
toggleBtn.TextXAlignment = Enum.TextXAlignment.Center
toggleBtn.TextYAlignment = Enum.TextYAlignment.Center
imageButton = toggleBtn
toggleBtn.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0.4, 0)
uiCorner.Parent = toggleBtn

local btnGradient = Instance.new("UIGradient", toggleBtn)
btnGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 12, 22)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 6, 14)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(4, 2, 8))
})
btnGradient.Rotation = 45

local uiStroke = Instance.new("UIStroke", toggleBtn)
uiStroke.Thickness = 2
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Color = Color3.fromRGB(200, 15, 15)

local glowStroke = Instance.new("UIStroke", toggleBtn)
glowStroke.Thickness = 4
glowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
glowStroke.Color = Color3.fromRGB(200, 15, 15)
glowStroke.Transparency = 0.7

task.spawn(function()
    local tweenService = game:GetService("TweenService")
    while task.wait(0.5) do
        pcall(function()
            local pulseOut = tweenService:Create(glowStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                Transparency = 1
            })
            local pulseIn = tweenService:Create(glowStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                Transparency = 0.5
            })
            pulseOut:Play()
            pulseOut.Completed:Wait()
            pulseIn:Play()
            pulseIn.Completed:Wait()
        end)
    end
end)

toggleBtn.MouseEnter:Connect(function()
    pcall(function()
        game:GetService("TweenService"):Create(toggleBtn, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(20, 8, 12)
        }):Play()
        game:GetService("TweenService"):Create(uiStroke, TweenInfo.new(0.2), {
            Color = Color3.fromRGB(255, 30, 30)
        }):Play()
    end)
end)
toggleBtn.MouseLeave:Connect(function()
    pcall(function()
        game:GetService("TweenService"):Create(toggleBtn, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(8, 8, 12)
        }):Play()
        game:GetService("TweenService"):Create(uiStroke, TweenInfo.new(0.2), {
            Color = Color3.fromRGB(200, 15, 15)
        }):Play()
    end)
end)

do

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    imageButton.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

imageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = imageButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

imageButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

local isOpen = true
local _zxToggled = false
imageButton.MouseButton1Click:Connect(function()
    if _zxToggled then return end
    _zxToggled = true
    task.delay(0.1, function() _zxToggled = false end)

    pcall(function()
        isOpen = not isOpen


        local coreGui = game:GetService("CoreGui")
        for _, gui in pairs(coreGui:GetChildren()) do
            if gui:IsA("ScreenGui") then
                for _, child in pairs(gui:GetChildren()) do
                    if (child:IsA("Frame") or child:IsA("ImageButton")) and (child.Name == "Hub" or child.Name == "Main") then
                        child.Visible = isOpen
                    end
                end
            end
        end

        for _, gui in pairs(game.Players.LocalPlayer:WaitForChild("PlayerGui"):GetChildren()) do
            if gui:IsA("ScreenGui") then
                for _, child in pairs(gui:GetChildren()) do
                    if (child:IsA("Frame") or child:IsA("ImageButton")) and (child.Name == "Hub" or child.Name == "Main") then
                        child.Visible = isOpen
                    end
                end
            end
        end
    end)
end)

end

task.spawn(function()
    task.wait(2)
    pcall(function()
        local coreGui = game:GetService("CoreGui")
        local tweenService = game:GetService("TweenService")


        local libGui = nil
        for _, gui in pairs(coreGui:GetChildren()) do
            if gui:IsA("ScreenGui") and gui.Name ~= "ControlGUI" and gui.Name ~= "RobloxGui" and gui.Name ~= "TopBar" then

                local hasMain = false
                for _, child in pairs(gui:GetChildren()) do
                    if child:IsA("Frame") and child.Name == "Main" then
                        hasMain = true
                        break
                    end
                end
                if hasMain then
                    libGui = gui
                    break
                end
            end
        end

        if libGui then

        for _, frame in pairs(libGui:GetDescendants()) do
            if frame:IsA("Frame") and frame.Name == "Main" then

                        local waterGradient = Instance.new("UIGradient", frame)
                        waterGradient.Name = "ZX_WaterGradient"
                        waterGradient.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(12, 4, 18)),
                            ColorSequenceKeypoint.new(0.3, Color3.fromRGB(6, 2, 10)),
                            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 3, 14)),
                            ColorSequenceKeypoint.new(0.7, Color3.fromRGB(4, 1, 8)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 2, 12))
                        })
                        waterGradient.Rotation = 135


                        task.spawn(function()
                            while task.wait(3) do
                                pcall(function()
                                    local shimmer = tweenService:Create(waterGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                                        Rotation = 225
                                    })
                                    shimmer:Play()
                                    shimmer.Completed:Wait()

                                    local shimmer2 = tweenService:Create(waterGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                                        Rotation = 135
                                    })
                                    shimmer2:Play()
                                    shimmer2.Completed:Wait()
                                end)
                            end
                        end)
                        break
                    end
                end


                for _, frame in pairs(libGui:GetDescendants()) do
                    if frame:IsA("Frame") and not frame:FindFirstChild("ZX_WaterGradient") and frame.BackgroundTransparency < 0.5 then
                        local waterGrad = Instance.new("UIGradient", frame)
                        waterGrad.Name = "ZX_WaterGradient"
                        waterGrad.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 4, 15)),
                            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(5, 2, 8)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 3, 12))
                        })
                        waterGrad.Rotation = math.random(0, 360)
                    end
                end


                for _, frame in pairs(libGui:GetDescendants()) do
                    if frame:IsA("Frame") and frame:FindFirstChild("ZX_WaterGradient") then
                        local borderStroke = Instance.new("UIStroke", frame)
                        borderStroke.Name = "ZX_BorderGlow"
                        borderStroke.Thickness = 1.5
                        borderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                        borderStroke.Color = Color3.fromRGB(200, 15, 15)
                        borderStroke.Transparency = 0.3

                        task.spawn(function()
                            while task.wait(0.5) do
                                pcall(function()
                                    local glowOut = tweenService:Create(borderStroke, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                        Transparency = 0.7
                                    })
                                    local glowIn = tweenService:Create(borderStroke, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                                        Transparency = 0.2
                                    })
                                    glowOut:Play()
                                    glowOut.Completed:Wait()
                                    glowIn:Play()
                                    glowIn.Completed:Wait()
                                end)
                            end
                        end)
                    end
                end

        end
    end)
end)

-- ═══════════════════════════════════════════════════════════════════
-- TAB STRUCTURE (reorganized to match Nova Redz pattern)
-- 17 tabs: Info, Main(Farming), Settings, Fish, Quests, SeaEvent, Race,
-- Prehistoric(Dojo), Raids(Fruit), Combat(Player), Travel(Teleport),
-- Shop, Visual(Fake All), Misc, Esp, Maestry, Others(Stack Farm)
-- ═══════════════════════════════════════════════════════════════════
local Status = Library:MakeTab({
    Title = "Tab Info And Status",
    Icon = "rbxassetid://7040410130"
})

local Farm = Library:MakeTab({
    Title = "Tab Farming",
    Icon = "rbxassetid://7733960981"
})

local Others = Library:MakeTab({
    Title = "Tab Stack Farm",
    Icon = "rbxassetid://10723405360"
})

local Fish = Library:MakeTab({
    Title = "Tab Fishing",
    Icon = "rbxassetid://127664059821666"
})

local Quests = Library:MakeTab({
    Title = "Tab Quest And Item",
    Icon = "rbxassetid://13075622619"
})

local Maestry = Library:MakeTab({
    Title = "Farm Mastery",
    Icon = "rbxassetid://10709782497"
})

local Event = Library:MakeTab({
    Title = "Tab Sea Event",
    Icon = "rbxassetid://10709783577"
})

local Race = Library:MakeTab({
    Title = "Tab Mirage And Race",
    Icon = "rbxassetid://11162889532"
})

local Dojo = Library:MakeTab({
    Title = "Tab Dojo & Drago Race",
    Icon = "rbxassetid://91920478152016"
})

local Fruit = Library:MakeTab({
    Title = "Tab Fruit And Raid",
    Icon = "rbxassetid://11155986081"
})

local Player = Library:MakeTab({
    Title = "Tab Local Player",
    Icon = "rbxassetid://13075651575"
})

local Shop = Library:MakeTab({
    Title = "Tab Shopping",
    Icon = "rbxassetid://6031265976"
})

local Esp = Library:MakeTab({
    Title = "Tab Stats And Esp",
    Icon = "rbxassetid://11155851001"
})

local Teleport = Library:MakeTab({
    Title = "Tab Teleport",
    Icon = "rbxassetid://10734886004"
})

local Visual = Library:MakeTab({
    Title = "Fake All",
    Icon = "rbxassetid://86824310982630"
})

local Misc = Library:MakeTab({
    Title = "Tab Miscellaneous",
    Icon = "rbxassetid://10709783577"
})

local Setting = Library:MakeTab({
    Title = "Tab Setting",
    Icon = "rbxassetid://7734053495"
})
Status:AddDiscordInvite({
    Name = "Zythera-X",
    Description = "join for support and update <3",
    Invite = "https://discord.gg/MtMhAk8Y"
})

Shop:AddSection("Fighting Shop")
Shop:AddButton({
    Name = "Black Leg",
    Callback = function()
        commF:InvokeServer("BuyBlackLeg")
    end
})
Shop:AddButton({
    Name = "Fishman Karate",
    Callback = function()
        commF:InvokeServer("BuyFishmanKarate")
    end
})
Shop:AddButton({
    Name = "Electro",
    Callback = function()
        commF:InvokeServer("BuyElectro")
    end
})
Shop:AddButton({
    Name = "Dragon Breath",
    Callback = function()
        commF:InvokeServer("BlackbeardReward","DragonClaw","1")
        commF:InvokeServer("BlackbeardReward","DragonClaw","2")
    end
})
Shop:AddButton({
    Name = "SuperHuman",
    Callback = function()
        commF:InvokeServer("BuySuperhuman")
    end
})
Shop:AddButton({
    Name = "Death Step",
    Callback = function()
        commF:InvokeServer("BuyDeathStep")
    end
})
Shop:AddButton({
    Name = "Sharkman Karate",
    Callback = function()
        commF:InvokeServer("BuySharkmanKarate",true)
        commF:InvokeServer("BuySharkmanKarate")
    end
})
Shop:AddButton({
    Name = "Electric Claw",
    Callback = function()
        commF:InvokeServer("BuyElectricClaw")
    end
})
Shop:AddButton({
    Name = "Dragon Talon",
    Callback = function()
        commF:InvokeServer("BuyDragonTalon")
    end
})
Shop:AddButton({
    Name = "God Human",
    Callback = function()
        commF:InvokeServer("BuyGodhuman")
    end
})
Shop:AddButton({
    Name = "Sanguine Art",
    Callback = function()
        commF:InvokeServer("BuySanguineArt", true)
        commF:InvokeServer("BuySanguineArt")
    end
})
Shop:AddSection("Sword")
Shop:AddButton({
    Name = "Cutlass [ 1,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Cutlass")
    end
})
Shop:AddButton({
    Name = "Katana [ 1,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Katana")
    end
})
Shop:AddButton({
    Name = "Iron Mace [ 25,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Iron Mace")
    end
})
Shop:AddButton({
    Name = "Dual Katana [ 12,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Duel Katana")
    end
})
Shop:AddButton({
    Name = "Triple Katana [ 60,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Triple Katana")
    end
})
Shop:AddButton({
    Name = "Pipe [ 100,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Pipe")
    end
})
Shop:AddButton({
    Name = "Dual-Headed Blade [ 400,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Dual-Headed Blade")
    end
})
Shop:AddButton({
    Name = "Bisento [ 1,200,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Bisento")
    end
})
Shop:AddButton({
    Name = "Soul Cane [ 750,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Soul Cane")
    end
})
Shop:AddButton({
    Name = "Pole v.2 [ 5,000 Fragments ]",
    Callback = function()
        commF:InvokeServer("ThunderGodTalk")
    end
})
Shop:AddSection("Gun")
Shop:AddButton({
    Name = "Slingshot [ 5,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Slingshot")
    end
})
Shop:AddButton({
    Name = "Musket [ 8,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Musket")
    end
})
Shop:AddButton({
    Name = "Flintlock [ 10,500 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Flintlock")
    end
})
Shop:AddButton({
    Name = "Refined Slingshot [ 30,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Refined Flintlock")
    end
})
Shop:AddButton({
    Name = "Refined Flintlock [ 65,000 Beli ]",
    Callback = function()
        local args = {
            [1] = "BuyItem",
            [2] = "Refined Flintlock"
        }
        commF:InvokeServer(unpack(args))
    end
})
Shop:AddButton({
    Name = "Cannon [ 100,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyItem", "Cannon")
    end
})
Shop:AddButton({
    Name = "Kabucha [ 1,500 Fragments]",
    Callback = function()
        local Remote = commF
        Remote:InvokeServer("BlackbeardReward", "Slingshot", "1")
        Remote:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
})
Shop:AddButton({
    Name = "Bizarre Rifle [ 250 Ectoplasm ]",
    Callback = function()
        local Remote = commF
        local args = { "Ectoplasm", "Buy", 1 }
        Remote:InvokeServer(unpack(args))
        Remote:InvokeServer(unpack(args))
    end
})
Shop:AddSection("Abilities Shop")
Shop:AddButton({
    Name = "Skyjump [ $10,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyHaki", "Geppo")
    end
})
Shop:AddButton({
    Name = "Buso Haki [ $25,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyHaki", "Buso")
    end
})
Shop:AddButton({
    Name = "Observation haki [ $750,000 Beli ]",
    Callback = function()
        commF:InvokeServer("KenTalk", "Buy")
    end
})
Shop:AddButton({
    Name = "Soru [ $100,000 Beli ]",
    Callback = function()
        commF:InvokeServer("BuyHaki", "Soru")
    end
})
Shop:AddSection("Misc Shop")
Shop:AddButton({
    Name = "Buy Refund Stat (2500F)",
    Callback = function()
        local Remote = commF
        Remote:InvokeServer("BlackbeardReward", "Refund", "1")
        Remote:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})
Shop:AddButton({
    Name = "Buy Reroll Race (3000F)",
    Callback = function()
        local Remote = commF
        Remote:InvokeServer("BlackbeardReward", "Reroll", "1")
        Remote:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})
Shop:AddButton({
    Name = "Buy Draco",
    Callback = function()
        topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        local targetPosition = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local _tpTimeout = 0
        repeat task.wait(0.1) _tpTimeout = _tpTimeout + 1
        until (character.HumanoidRootPart.Position - targetPosition).Magnitude < 1 or _tpTimeout > 50
        local args = {
            [1] = {
                ["NPC"] = "Dragon Wizard",
                ["Command"] = "DragonRace"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
    end
})
Shop:AddButton({
    Name = "Buy Ghoul Race",
    Callback = function()
        local args = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        commF:InvokeServer(unpack(args))
    end
})
Shop:AddButton({
    Name = "Buy Cyborg Race (2500F)",
    Callback = function()
        local args = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        commF:InvokeServer(unpack(args))
    end
})
local _ZX_Status = {}

_ZX_Status.OS = Status:AddParagraph({
    Title = "Time Zone",
    Desc = ""
})
function UpdateOS()
    date = os.date("*t")
    hour = (date.hour) % 24
    ampm = hour < 12 and "AM" or "PM"
    timezone = string.format("%02i:%02i:%02i %s",((hour - 1) % 12) + 1,date.min,date.sec,ampm)
    datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    LocalizationService = game:GetService("LocalizationService")
    Players = game:GetService("Players")
    player = Players.LocalPlayer
    name = player.Name
    result, code = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    _ZX_Status.OS:SetDesc(datetime .. " - " .. timezone .. " [ " .. code .. " ]")
end
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        UpdateOS()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
-- Status UI references moved to shared table to free top-level locals
-- (LuaJIT 200-local-limit fix)

_ZX_Status.Time = Status:AddParagraph({
    Title = "Time",
    Desc = ""
})
function UpdateTime()
    GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    Hour = math.floor(GameTime / (60 ^ 2)) % 24
    Minute = math.floor(GameTime / 60) % 60
    Second = GameTime % 60
    _ZX_Status.Time:SetDesc(Hour .. " Hour (h) " ..Minute .. " Minute (m) " ..Second .. " Second (s) ")
end
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        UpdateTime()
        task.wait()
    end
end)
_ZX_Status.Mirage = Status:AddParagraph({
    Title = "Mirage Island",
    Desc = "Status: "
})
task.spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                _ZX_Status.Mirage:SetDesc('✅️')
            else
                _ZX_Status.Mirage:SetDesc('❌️')
            end
        end
    end)
end)
_ZX_Status.Kitsune = Status:AddParagraph({
    Title = "Kitsune Island",
    Desc = "Status: "
})
task.spawn(function()
    pcall(function()
        while task.wait() do
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                _ZX_Status.Kitsune:SetDesc('✅️')
            else
                _ZX_Status.Kitsune:SetDesc('❌️')
            end
        end
    end)
end)
_ZX_Status.Prehistoric = Status:AddParagraph({
    Title = "Prehistoric Island",
    Desc = "Status: "
})
task.spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                _ZX_Status.Prehistoric:SetDesc('✅️')
            else
                _ZX_Status.Prehistoric:SetDesc('❌️')
            end
        end
    end)
end)
_ZX_Status.Frozen = Status:AddParagraph({
    Title = "Frozen Dimension",
    Desc = "Status: "
})
task.spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                _ZX_Status.Frozen:SetDesc('✅️')
            else
                _ZX_Status.Frozen:SetDesc('❌️')
            end
        end
    end)
end)
_ZX_Status.CakePrince = Status:AddParagraph({
    Title = "Dimension Killed",
    Desc = ""
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            local response = commF:InvokeServer("CakePrinceSpawner")
            local len = string.len(response)
            if len == 88 then
                _ZX_Status.CakePrince:SetDesc("Kill : " .. string.sub(response, 39, 41))
            elseif len == 87 then
                _ZX_Status.CakePrince:SetDesc("Kill : " .. string.sub(response, 39, 40))
            elseif len == 86 then
                _ZX_Status.CakePrince:SetDesc("Kill : " .. string.sub(response, 39, 39) .. " ")
            else
                _ZX_Status.CakePrince:SetDesc("Cake Prince : ✅️")
            end
        end)
    end
end)
_ZX_Status.Tyrant = Status:AddParagraph({
    Title = "Tyrant of the Skies",
    Desc = "Status: "
})
task.spawn(function()
    pcall(function()
        while task.wait() do
            if game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies") then
                _ZX_Status.Tyrant:SetDesc("Status : ✅️")
            else
                _ZX_Status.Tyrant:SetDesc("Status : ❌️")
            end
        end
    end)
end)
_ZX_Status.Rip = Status:AddParagraph({
    Title = "Rip_Indra",
    Desc = "Status: "
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
            or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                _ZX_Status.Rip:SetDesc("Status : ✅️")
            else
                _ZX_Status.Rip:SetDesc("Status : ❌️")
            end
        end)
    end
end)
_ZX_Status.DoughKing = Status:AddParagraph({
    Title = "Dough King",
    Desc = "Status: "
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")
            or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                _ZX_Status.DoughKing:SetDesc("Status : ✅️")
            else
                _ZX_Status.DoughKing:SetDesc("Status : ❌️")
            end
        end)
    end
end)
_ZX_Status.EliteHunter = Status:AddParagraph({
    Title = "Elite Hunter",
    Desc = "Status: "
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            local rs = game:GetService("ReplicatedStorage")
            local ws = game:GetService("Workspace").Enemies
            local progress = rs.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
            if rs:FindFirstChild("Diablo") or rs:FindFirstChild("Deandre") or rs:FindFirstChild("Urban")
            or ws:FindFirstChild("Diablo") or ws:FindFirstChild("Deandre") or ws:FindFirstChild("Urban") then
                _ZX_Status.EliteHunter:SetDesc("Status : ✅️ | Killed: " .. progress)
            else
                _ZX_Status.EliteHunter:SetDesc("Status : ❌️ | Killed: " .. progress)
            end
        end)
    end
end)
_ZX_Status.PullLever = Status:AddParagraph({
    Title = "Pull Lever",
    Desc = "Status: "
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            if commF:InvokeServer("CheckTempleDoor") then
                _ZX_Status.PullLever:SetDesc("✅")
            else
                _ZX_Status.PullLever:SetDesc("❌")
            end
        end)
    end
end)
_ZX_Status.FullMoon = Status:AddParagraph({
    Title = "Full Moon",
    Desc = ""
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            local moonId = game:GetService("Lighting").Sky.MoonTextureId
            if moonId == "http://www.roblox.com/asset/?id=9709149431" then
                _ZX_Status.FullMoon:SetDesc("Moon: 5/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149052" then
                _ZX_Status.FullMoon:SetDesc("Moon: 4/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709143733" then
                _ZX_Status.FullMoon:SetDesc("Moon: 3/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709150401" then
                _ZX_Status.FullMoon:SetDesc("Moon: 2/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149680" then
                _ZX_Status.FullMoon:SetDesc("Moon: 1/5")
            else
                _ZX_Status.FullMoon:SetDesc("Moon: 0/5")
            end
        end)
    end
end)
_ZX_Status.Legendary = Status:AddParagraph({
    Title = "Legendary Sword",
    Desc = "Status: "
})
task.spawn(function()
    while task.wait(5) do
        pcall(function()
            local rs = commF
            if rs:InvokeServer("LegendarySwordDealer", "1") then
                _ZX_Status.Legendary:SetDesc("Shisui ✅")
            elseif rs:InvokeServer("LegendarySwordDealer", "2") then
                _ZX_Status.Legendary:SetDesc("Wando ✅")
            elseif rs:InvokeServer("LegendarySwordDealer", "3") then
                _ZX_Status.Legendary:SetDesc("Saddi ✅")
            else
                _ZX_Status.Legendary:SetDesc("Not in stock ❌")
            end
        end)
    end
end)
_ZX_Status.Bone = Status:AddParagraph({
    Title = "Bone",
    Desc = ""
})
task.spawn(function()
    while task.wait(3) do
        pcall(function()
            local bones = commF:InvokeServer("Bones", "Check")
            _ZX_Status.Bone:SetDesc("🦴 You Have: " .. tostring(bones) .. " Bones")
        end)
    end
end)
Status:AddTextBox({
    Name = "Input Job Id",
    Placeholder = "Job ID",
    ClearOnFocus = true,
    Callback = function(Value)
        getgenv().Job = Value
    end
})
Status:AddToggle({
    Name = "Spam Join",
    Default = false,
    Callback = function(Value)
        getgenv().Join = Value
    end
})
task.spawn(function()
    while task.wait(1) do
        if getgenv().Join and getgenv().Job and getgenv().Job ~= "" then
            pcall(function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getgenv().Job, game.Players.LocalPlayer)
            end)
        end
    end
end)
Status:AddButton({
    Name = "Join Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,getgenv().Job,game.Players.LocalPlayer)
    end
})
Status:AddButton({
    Name = "Copy JobId",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})
Status:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
    end
})
Status:AddButton({
    Name = "Hop Server",
    Callback = function()
        Hop()
    end
})
Status:AddButton({
    Name = "Hop Server Less People",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local plr = Players.LocalPlayer
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api .. _place .. "/servers/Public?sortOrder=Asc&limit=100"
        local function ListServers(cursor)
            local Raw = _ZX_HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
            return Http:JSONDecode(Raw)
        end
        local Server, Next
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server
        TPS:TeleportToPlaceInstance(_place, Server.id, plr)
    end
})

_G.AutoRejoin30m = false
local RejoinRunning = false
Status:AddToggle({
    Name = "Anti-reset (30 min)",
    Description = "Server hop every 30 minutes to avoid server reset",
    Default = false,
    Callback = function(Value)
        _G.AutoRejoin30m = Value
        if Value and not RejoinRunning then
            RejoinRunning = true
            task.spawn(function()
                while _G.AutoRejoin30m do
                    task.wait(1800)
                    if not _G.AutoRejoin30m then break end
                    local NewServer = GetNewServer()
                    if NewServer then
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, NewServer, plr)
                    else
                        TeleportService:Teleport(game.PlaceId, plr)
                    end
                end
                RejoinRunning = false
            end)
        end
    end,
})

Farm:AddSection({"Local Main"})

Farm:AddDropdown({
    Name = "Select Weapon",
    Description = "Select weapon",
    Options = {"Melee","Sword","Blox Fruit","Gun"},
    Default = "Melee",
    Multi = false,
    Callback = function(I)
        _G.ChooseWP = I
    end,
})

task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            for _, e in pairs(plr.Backpack:GetChildren()) do
                if e.ToolTip == _G.ChooseWP then
                    if plr.Backpack:FindFirstChild(e.Name) then
                        _G.SelectWeapon = e.Name
                    end
                end
            end
        end)
    end
end)

_G.SelectedFarmMode = "Level"
_G.StartFarm = false
_G.Level = false
_G.AutoFarm_Bone = false
_G.AutoFarm_Cake = false
_G.AutoTyrant = false
_G.AcceptQuest = false

local CurrentMobLevel = nil
local CurrentMobLevelSystem = nil

local TELEPORT_DISTANCE_THRESHOLD = 15

local function TeleportConditional(hrp, targetCFrame, threshold)
    if not hrp or not targetCFrame then return end

    local dist = (targetCFrame.Position - hrp.Position).Magnitude
    if dist > threshold then
        _tp(targetCFrame)
    end
end

Farm:AddToggle({
        Name = "Super Attack",
        Description = "Attack super fast",

        Default = GetSetting("AutoAttack_Save", true),
        Callback = function(I)
                _G.Seriality = I

        _G.SaveData["AutoAttack_Save"] = I
        SaveSettings()
        end,
})

local V5 = game.Players.LocalPlayer;
local function y5(I)
        if not I then
                return false;
        end;
        local e = I:FindFirstChild("Humanoid");
        return e and e.Health > 0;
end

Farm:AddSection({"Auto Farm"})
Farm:AddDropdown({
    Name = "Select Farm Mode",
    Description = "Select farm mode",
    Options = {"Level", "Bone", "Cake Prince", "Tyrant Of The Skies"},
    Default = GetSetting("SelectedFarmMode_Save", "Level"),
    Callback = function(v)
        _G.SelectedFarmMode = v
        _G.SaveData["SelectedFarmMode_Save"] = v
        SaveSettings()
    end
})

Farm:AddToggle({
    Name = "Start Farm",
    Description = "Start farm",
    Default = GetSetting("StartFarm_Save", false),
    Callback = function(v)
        _G.StartFarm = v


        _G.Level = false
        _G.AutoFarm_Bone = false
        _G.AutoFarm_Cake = false
        _G.AutoTyrant = false

        if v then
            if _G.SelectedFarmMode == "Level" then
                _G.Level = true
            elseif _G.SelectedFarmMode == "Bone" then
                _G.AutoFarm_Bone = true
            elseif _G.SelectedFarmMode == "Cake Prince" then
                _G.AutoFarm_Cake = true
            elseif _G.SelectedFarmMode == "Tyrant Of The Skies" then
                _G.AutoTyrant = true
            end
        end

        _G.SaveData["StartFarm_Save"] = v
        SaveSettings()
    end
})

Farm:AddToggle({
    Name = "Accept Quests",
    Description = "Farm with quest",
    Default = GetSetting("AcceptQuest_Save", false),
    Callback = function(v)
        _G.AcceptQuest = v
        _G.SaveData["AcceptQuest_Save"] = v
        SaveSettings()
    end
})

local FarmHeight = 30

task.spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.AutoTyrant and _G.StartFarm then
            local char = game.Players.LocalPlayer.Character
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
                if char:FindFirstChild("Humanoid") then
                    char.Humanoid.AutoRotate = true
                    char.Humanoid:ChangeState(11)
                end
            end
        end
    end)
end)

local function GetTargetByLevel()
    local myLevel = game.Players.LocalPlayer.Data.Level.Value


if myLevel >= 2575 then
    return {
        Name = "Skull Slayer",
        QuestArgs = {"StartQuest", "TikiQuest3", 2},
        QuestPos = CFrame.new(
            -16665.0879, 105.27478, 1577.61743,
            -0.999621451, 3.5280582e-08, 0.0275127869,
             3.5990368e-08, 1, 2.53032191e-08,
            -0.0275127869, 2.62838356e-08, -0.999621451
        ),
        FarmPos = CFrame.new(-16709.49, 419.68, 1751.09)
    }

elseif myLevel > 2550 then
    return {
        Name = "Serpent Hunter",
        QuestArgs = {"StartQuest", "TikiQuest3", 1},
        QuestPos = CFrame.new(
            -16665.0879, 105.27478, 1577.61743,
            -0.999621451, 3.5280582e-08, 0.0275127869,
             3.5990368e-08, 1, 2.53032191e-08,
            -0.0275127869, 2.62838356e-08, -0.999621451
        ),
        FarmPos = CFrame.new(-16645.64, 163.09, 1352.87)
    }

elseif myLevel >= 2525 then
    return {
        Name = "Isle Champion",
        QuestArgs = {"StartQuest", "TikiQuest2", 2},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688)
    }

elseif myLevel >= 2500 then
    return {
        Name = "Sun-kissed Warrior",
        QuestArgs = {"StartQuest", "TikiQuest2", 1},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16347, 64, 984)
    }

elseif myLevel >= 2475 then
    return {
        Name = "Island Boy",
        QuestArgs = {"StartQuest", "TikiQuest1", 2},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16670, 43, -270)
    }

else
    return {
        Name = "Isle Outlaw",
        QuestArgs = {"StartQuest", "TikiQuest1", 1},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16350, 45, -180)
    }
end
end

local function GetEyesCount()
    local model = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("TikiOutpost") and workspace.Map.TikiOutpost:FindFirstChild("IslandModel")
    local count = 0
    if model then
        local eye1 = model:FindFirstChild("Eye1")
        local eye2 = model:FindFirstChild("Eye2")
        local chunks = model:FindFirstChild("IslandChunks")
        local eye3 = chunks and chunks:FindFirstChild("E") and chunks.E:FindFirstChild("Eye3")
        local eye4 = chunks and chunks:FindFirstChild("E") and chunks.E:FindFirstChild("Eye4")
        if eye1 and eye1.Transparency == 0 then count = count + 1 end
        if eye2 and eye2.Transparency == 0 then count = count + 1 end
        if eye3 and eye3.Transparency == 0 then count = count + 1 end
        if eye4 and eye4.Transparency == 0 then count = count + 1 end
    end
    return count
end

local function UseAllCategorySkills()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local VirtualUser = game:GetService("VirtualUser")
    local categories = {"Melee", "Blox Fruit", "Sword", "Gun"}
    local skills = {"Z", "X", "C"}

    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightControl", false, game)
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + Vector3.new(0,-1,0))
    end)

    for _, toolType in ipairs(categories) do
        local tool = nil
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == toolType then tool = v break end
        end
        if not tool then
            local charTool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if charTool and charTool.ToolTip == toolType then tool = charTool end
        end
        if tool then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            task.wait(0.1)
            for i = 1, 3 do
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(851, 158))
                local skillKey = skills[i]
                if skillKey then
                    VirtualInputManager:SendKeyEvent(true, skillKey, false, game)
                    task.wait(0.05)
                    VirtualInputManager:SendKeyEvent(false, skillKey, false, game)
                end
                task.wait(0.1)
            end
        end
    end
end

task.spawn(function()
    local VaseIndex = 1

    while task.wait() do

        if _G.AutoTyrant and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local boss = workspace.Enemies:FindFirstChild("Tyrant of the Skies")
                local eyes = GetEyesCount()


                if boss and boss.Humanoid.Health > 0 then
                    _tp(boss.HumanoidRootPart.CFrame * CFrame.new(0, FarmHeight, 0))
                    repeat task.wait()
                        if boss and boss:FindFirstChild("HumanoidRootPart") then
                            _tp(boss.HumanoidRootPart.CFrame * CFrame.new(0, FarmHeight, 0))
                            EquipWeapon(_G.SelectWeapon)
                            G.Kill(boss, true)
                        else
                            break
                        end
                    until not boss.Parent or boss.Humanoid.Health <= 0 or not _G.StartFarm or not _G.AutoTyrant


                elseif eyes == 4 then
                    local targetsty = {
                        CFrame.new(-16335.1, 158.1, 1465.6), CFrame.new(-16288.6, 158.1, 1470.3),
                        CFrame.new(-16258.0, 156.7, 1461.4), CFrame.new(-16212.4, 158.1, 1466.3),
                        CFrame.new(-16335.0, 159.3, 1324.8), CFrame.new(-16286.0, 155.9, 1323.8),
                        CFrame.new(-16250.3, 159.3, 1316.3)
                    }


                    local pos = targetsty[VaseIndex]

                    if pos then
                        _tp(pos)

                        local char = plr.Character
                        if char and char:FindFirstChild("HumanoidRootPart") then

                            if (char.HumanoidRootPart.Position - pos.Position).Magnitude < 15 then
                                char.HumanoidRootPart.Anchored = true
                                UseAllCategorySkills()
                                task.wait(0.1)
                                char.HumanoidRootPart.Anchored = false


                                VaseIndex = VaseIndex + 1
                                if VaseIndex > #targetsty then
                                    VaseIndex = 1
                                end
                            end
                        end
                    end


                else
                    local TargetData = GetTargetByLevel()
                    local QuestUI = plr.PlayerGui.Main.Quest
                    local hasQuest = QuestUI.Visible


                    if _G.AcceptQuest and not hasQuest then
                        local char = plr.Character
                        if char and char:FindFirstChild("HumanoidRootPart") then
                            local distToNPC = (char.HumanoidRootPart.Position - TargetData.QuestPos.Position).Magnitude

                            if distToNPC <= 3 then
                                char.HumanoidRootPart.CFrame = TargetData.QuestPos
                                task.wait(0.1)
                                commF:InvokeServer(unpack(TargetData.QuestArgs))
                                task.wait(0.5)
                            else
                                _tp(TargetData.QuestPos)
                            end
                        end


                    else
                        local char = plr.Character or plr.CharacterAdded:Wait()
                        local hrp = char:WaitForChild("HumanoidRootPart", 1)

                        if hrp then
                            local closestEnemy = nil
                            local shortestDistance = math.huge

                            local AllMobs = {"Skull Slayer", "Serpent Hunter", "Isle Champion", "Sun-kissed Warrior", "Island Boy", "Isle Outlaw"}

                            for _, v in pairs(workspace.Enemies:GetChildren()) do
                                if table.find(AllMobs, v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                    local distance = (hrp.Position - v.HumanoidRootPart.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        closestEnemy = v
                                    end
                                end
                            end

                            if closestEnemy then
                                local enemyPos = closestEnemy.HumanoidRootPart.CFrame
                                _tp(enemyPos * CFrame.new(0, FarmHeight, 0))
                                EquipWeapon(_G.SelectWeapon)
                                G.Kill(closestEnemy, true)
                            else
                                _tp(TargetData.FarmPos)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.AutoFarm_Bone and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                local QuestUI = plr.PlayerGui.Main.Quest
                local MOBS = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"}
                local npcPos = CFrame.new(-9516.99, 172.01, 6078.46)


                if _G.AcceptQuest and not QuestUI.Visible then
                    local distToNPC = (npcPos.Position - hrp.Position).Magnitude

                    if distToNPC > 10 then
                        _tp(npcPos)
                    else

                        task.wait(0.1)
                        local quests = {
                            {"StartQuest","HauntedQuest1",1},
                            {"StartQuest","HauntedQuest1",2},
                            {"StartQuest","HauntedQuest2",1},
                            {"StartQuest","HauntedQuest2",2}
                        }

                        commF:InvokeServer(unpack(quests[math.random(1,#quests)]))
                        task.wait(1)
                    end


                else
                    local function GetClosestMob()
                        local closest, shortest = nil, math.huge
                        for _, mobName in pairs(MOBS) do
                            for _, mob in pairs(workspace.Enemies:GetChildren()) do
                                if mob.Name == mobName and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                    local dist = (mob.PrimaryPart.Position - hrp.Position).Magnitude
                                    if dist < shortest then
                                        shortest = dist
                                        closest = mob
                                    end
                                end
                            end
                        end
                        return closest
                    end

                    local mob = GetClosestMob()
                    if mob then

                        _tp(mob.PrimaryPart.CFrame)
                        EquipWeapon(_G.SelectWeapon)
                        G.Kill(mob, true)
                    else

                        _tp(CFrame.new(-9495.68, 453.58, 5977.34))
                    end
                end
            end)
        end
    end
end)

local CurrentMob = nil

local function GetNearestMob(TargetName)
    local plr = game.Players.LocalPlayer
    local Root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not Root then return nil end
    local Closest, Dist = nil, math.huge
    for _, Mob in pairs(workspace.Enemies:GetChildren()) do
        if G.Alive(Mob) and Mob.Name == TargetName and Mob:FindFirstChild("HumanoidRootPart") then
            local d = (Mob.HumanoidRootPart.Position - Root.Position).Magnitude
            if d < Dist then Dist = d Closest = Mob end
        end
    end
    return Closest
end

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.Level and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local Root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                if not Root then return end
                local QuestTitle = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                local Q = QuestNeta()
                if not string.find(QuestTitle, Q[5]) then commF:InvokeServer("AbandonQuest") end
                if not plr.PlayerGui.Main.Quest.Visible then
                    TeleportConditional(Root, Q[6], TELEPORT_DISTANCE_THRESHOLD)
                    if (Root.Position - Q[6].Position).Magnitude <= 50 then
                        task.wait(1.9)
                        commF:InvokeServer("StartQuest", Q[3], Q[2])
                    end
                    return
                end
                local Nearest = GetNearestMob(Q[1])
                if CurrentMob and G.Alive(CurrentMob) and CurrentMob.Parent then
                    G.Kill(CurrentMob, true)
                    return
                else CurrentMob = nil end
                if not Nearest then TeleportConditional(Root, Q[4], TELEPORT_DISTANCE_THRESHOLD) return end
                CurrentMob = Nearest
                if CurrentMob and CurrentMob:FindFirstChild("HumanoidRootPart") then _tp(CurrentMob.HumanoidRootPart.CFrame) end
                repeat task.wait() G.Kill(CurrentMob, true) until not _G.StartFarm or not _G.Level or not CurrentMob.Parent or CurrentMob.Humanoid.Health <= 0
                CurrentMob = nil
            end)
        end
    end
end)

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.AutoFarm_Cake and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                local enemies = workspace:FindFirstChild("Enemies")
                if not enemies then return end
                local CakePos = CFrame.new(-2091.91, 70.00, -12142.83)
                local PortalEntrance = CFrame.new(-2151.82, 149.32, -12404.91)
                local mirror = workspace.Map:FindFirstChild("CakeLoaf")
                mirror = mirror and mirror:FindFirstChild("BigMirror")
                local other = mirror and mirror:FindFirstChild("Other")
                local portalOpen = other and other.Transparency == 0
                local boss = enemies:FindFirstChild("Cake Prince") or enemies:FindFirstChild("Dough King")

                if not boss and not portalOpen and (hrp.Position - CakePos.Position).Magnitude > 300000 then
                    _tp(CakePos)
                    return
                end

                if boss or portalOpen then
                    if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 and boss.PrimaryPart then
                        local bossTarget = boss.PrimaryPart.CFrame * CFrame.new(0, 5, 0)
                        _tp(bossTarget)
                        local bossPos = boss.PrimaryPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                        _tp(bossPos)
                        G.Kill(boss, true)
                        return
                    end
                    if (hrp.Position - PortalEntrance.Position).Magnitude < 500000 then
                        TeleportConditional(hrp, PortalEntrance, TELEPORT_DISTANCE_THRESHOLD)
                    end
                    return
                end

                local CAKE_MOBS = {"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}
                if _G.AcceptQuest and not plr.PlayerGui.Main.Quest.Visible then
                    local questPos = CFrame.new(-1927.92, 37.80, -12842.54)
                    TeleportConditional(hrp, questPos, TELEPORT_DISTANCE_THRESHOLD)
                    if (hrp.Position - questPos.Position).Magnitude <= 40 then
                        local q = {{"StartQuest", "CakeQuest2", 2}, {"StartQuest", "CakeQuest2", 1}, {"StartQuest", "CakeQuest1", 1}, {"StartQuest", "CakeQuest1", 2}}
                        commF:InvokeServer(unpack(q[math.random(1, 4)]))
                    end
                    return
                end

                local bestMob, bestDist = nil, math.huge
                for _, mob in ipairs(enemies:GetChildren()) do
                    if table.find(CAKE_MOBS, mob.Name) and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                        local dist = (mob.HumanoidRootPart.Position - hrp.Position).Magnitude
                        if dist < bestDist then bestDist = dist bestMob = mob end
                    end
                end
                if bestMob then
                    repeat task.wait()
                        if (workspace.Map.CakeLoaf.BigMirror.Other.Transparency == 0) or enemies:FindFirstChild("Cake Prince") then break end
                        if bestMob.Parent and bestMob.Humanoid.Health > 0 then
                            _tp(bestMob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) * CFrame.Angles(math.rad(-90), 0, 0))
                            G.Kill(bestMob, true)
                        else break end
                    until not _G.StartFarm or not _G.AutoFarm_Cake or not bestMob.Parent or bestMob.Humanoid.Health <= 0
                else
                    TeleportConditional(hrp, CFrame.new(-1927.92, 37.80, -12842.54), TELEPORT_DISTANCE_THRESHOLD)
                end
            end)
        end
    end
end)

Farm:AddSection({"Other"})

_G.MaxFarmDistance = 325

-- Players/ReplicatedStorage already declared at top scope (line 705)

Farm:AddToggle({
    Name = "Kill Mobs Nearest",
    Description = "Kill nearest mob",

    Default = GetSetting("AutoFarmNear_Save", false),
    Callback = function(I)
        _G.AutoFarmNear = I


        _G.SaveData["AutoFarmNear_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            if not _G.AutoFarmNear then return end

            local Plr = Players.LocalPlayer
            local Char = Plr.Character or Plr.CharacterAdded:Wait()
            local Root = Char:FindFirstChild("HumanoidRootPart")
            if not Root then return end

            local ClosestEnemy = nil
            local ShortestDistance = math.huge


            if workspace:FindFirstChild("Enemies") then
                for _, e in pairs(workspace.Enemies:GetChildren()) do
                    if e:FindFirstChild("Humanoid")
                    and e:FindFirstChild("HumanoidRootPart")
                    and e.Humanoid.Health > 0 then

                        local dist = (Root.Position - e.HumanoidRootPart.Position).Magnitude
                        if dist < ShortestDistance then
                            ShortestDistance = dist
                            ClosestEnemy = e
                        end
                    end
                end
            end


            if ReplicatedStorage:FindFirstChild("Enemies") then
                for _, e in pairs(ReplicatedStorage.Enemies:GetChildren()) do
                    if e:IsA("Model") and e:FindFirstChild("Humanoid") then

                        if not ClosestEnemy then
                            ClosestEnemy = e
                        end
                    end
                end
            end


            if ClosestEnemy and (not _G.MaxFarmDistance or ShortestDistance <= _G.MaxFarmDistance) then
                repeat
                    task.wait()
                    if G and G.Kill then
                        G.Kill(ClosestEnemy, _G.AutoFarmNear)
                    end
                until not _G.AutoFarmNear
                or not ClosestEnemy.Parent
                or (ClosestEnemy:FindFirstChild("Humanoid") and ClosestEnemy.Humanoid.Health <= 0)
                or not Root.Parent
            end
        end)
    end
end)

local Sec = 0.5

if World2 then
Farm:AddToggle({
    Name = "Auto Factory Raid",
    Description = "Auto farm factory",

    Default = GetSetting("AutoFactory_Save", false),
    Callback = function(Value)
        _G.AutoFactory = Value


        _G.SaveData["AutoFactory_Save"] = Value


        SaveSettings()
    end,
})

task.spawn(function()
    local FactoryPos = CFrame.new(448.46756, 199.356781, -441.389252)

    while task.wait(Sec) do
        pcall(function()
            if not _G.AutoFactory then return end


            local Core = GetConnectionEnemies("Core")

            if Core and Core:FindFirstChild("Humanoid") and Core.Humanoid.Health > 0 then

                repeat
                    task.wait()

                    if not _G.AutoFactory then break end
                    if not Core or not Core.Parent then break end
                    if Core.Humanoid.Health <= 0 then break end

                    if _G.SelectWeapon then
                        EquipWeapon(_G.SelectWeapon)
                    end

                    _tp(FactoryPos)

                until Core.Humanoid.Health <= 0 or _G.AutoFactory == false

            else

                _tp(FactoryPos)
            end
        end)
    end
end)
end
if World3 then
Farm:AddToggle({
    Name = "Auto Pirate Raid",
    Description = "Auto farm pirates",

    Default = GetSetting("AutoRaidCastle_Save", false),
    Callback = function(I)
        _G.AutoRaidCastle = I


        _G.SaveData["AutoRaidCastle_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(Sec) do
        if _G.AutoRaidCastle then
            pcall(function()
                local TargetCFrame = CFrame.new(-5496.17432, 313.768921, -2841.53027, .924894512, 7.37058015e-09, .380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, .924894512)
                local CheckCFrame = CFrame.new(-5539.3115234375, 313.80053710938, -2972.3723144531)

                if (CheckCFrame.Position - Root.Position).Magnitude <= 500 then
                    for _, e in pairs(workspace.Enemies:GetChildren()) do
                        if e:FindFirstChild("HumanoidRootPart") and e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then
                            if (e.HumanoidRootPart.Position - Root.Position).Magnitude <= 2000 then
                                repeat
                                    task.wait()
                                    G.Kill(e, _G.AutoRaidCastle)
                                until not _G.AutoRaidCastle or not e.Parent or e.Humanoid.Health <= 0 or not workspace.Enemies:FindFirstChild(e.Name)
                            end
                        end
                    end
                else
                    local EnemyList = {
                        "Galley Pirate",
                        "Galley Captain",
                        "Raider",
                        "Mercenary",
                        "Vampire",
                        "Zombie",
                        "Snow Trooper",
                        "Winter Warrior",
                        "Lab Subordinate",
                        "Horned Warrior",
                        "Magma Ninja",
                        "Lava Pirate",
                        "Ship Deckhand",
                        "Ship Engineer",
                        "Ship Steward",
                        "Ship Officer",
                        "Arctic Warrior",
                        "Snow Lurker",
                        "Sea Soldier",
                        "Water Fighter",
                    }

                    for _, enemyName in pairs(EnemyList) do
                        if replicated:FindFirstChild(enemyName) then
                            for _, n in pairs(replicated:GetChildren()) do
                                if table.find(EnemyList, n.Name) then
                                    _tp(TargetCFrame)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
end
Farm:AddSection({"Collect"})

Farm:AddToggle({
    Name = "Auto Collect Chest",
    Description = "Auto collect mirror",

    Default = GetSetting("AutoFarmChest_Save", false),
    Callback = function(I)
        _G.AutoFarmChest = I


        _G.SaveData["AutoFarmChest_Save"] = I


        SaveSettings()
    end,
})

Farm:AddToggle({
        Name = "Auto Collect Berry",
        Description = "Auto collect berry",

        Default = GetSetting("AutoBerry_Save", false),
        Callback = function(I)
                _G.AutoBerry = I


        _G.SaveData["AutoBerry_Save"] = I


        SaveSettings()
        end,
});

task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoBerry then
                        local I = game:GetService("CollectionService");
                        local e = game:GetService("Players");
                        local K = e.LocalPlayer;
                        local n = I:GetTagged("BerryBush");
                        local d, z = math.huge;
                        for I = 1, #n, 1 do
                                local e = n[I];
                                for I, K in pairs(e:GetAttributes()) do
                                        if not BerryArray or table.find(BerryArray, K) then
                                                _tp(e.Parent:GetPivot());
                                                for I = 1, #n, 1 do
                                                        local e = n[I];
                                                        for I, e in pairs(e:GetChildren()) do
                                                                if not BerryArray or table.find(BerryArray, e) then
                                                                        _tp(e.WorldPivot);
                                                                        fireproximityprompt(e.ProximityPrompt, math.huge);
                                                                end;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                end;
        end;
end);

task.spawn(function()
    while task.wait(Sec) do
        if _G.AutoFarmChest then
            pcall(function()
                local CollectionService = game:GetService("CollectionService")
                local Players = game:GetService("Players")
                local plrChar = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
                local d = plrChar:GetPivot().Position
                local Chests = CollectionService:GetTagged("_ChestTagged")
                local minDist, nearestChest = math.huge, nil
                for _, chest in pairs(Chests) do
                    local dist = (chest:GetPivot().Position - d).Magnitude
                    if not SelectedIsland or chest:IsDescendantOf(SelectedIsland) then
                        if not chest:GetAttribute("IsDisabled") and dist < minDist then
                            minDist = dist
                            nearestChest = chest
                        end
                    end
                end
                if nearestChest then
                    _tp(nearestChest:GetPivot())
                end
            end)
        end
    end
end)

if World3 then

_G.MaxFarmDistance = _G.MaxFarmDistance or 250
Farm:AddSlider({
    Name = "Distance Radius (Nearest Farm)",
    Description = "Max distance for nearest-mob auto-farm",
    Min = 50, Max = 500, Default = _G.MaxFarmDistance,
    Callback = function(v) _G.MaxFarmDistance = v end,
})

Farm:AddSection({"Bone"})

Farm:AddToggle({
    Name = "Auto Random Bone",
    Description = "Auto trade bones",
    Default = false,
    Callback = function(v)
        _G.Auto_Random_Bone = v
    end,
})

task.spawn(function()
    while task.wait(Sec) do
        if _G.Auto_Random_Bone then
            commF:InvokeServer("Bones","Buy",1,1)
        end
    end
end)

Farm:AddToggle({
    Name = "Auto Soul Reaper",
    Description = "Trade bones and farm boss",
    Default = false,
    Callback = function(v)
        _G.AutoHytHallow = v
    end,
})

task.spawn(function()
    while task.wait(Sec) do
        if _G.AutoHytHallow then
            pcall(function()

                local mob = GetConnectionEnemies("Soul Reaper")

                if mob then
                    repeat task.wait()
                        G.Kill(mob,_G.AutoHytHallow)
                    until mob.Humanoid.Health <= 0 or not _G.AutoHytHallow

                else
                    if not GetBP("Hallow Essence") then
                        repeat task.wait(.1)
                            commF:InvokeServer("Bones","Buy",1,1)
                        until not _G.AutoHytHallow or GetBP("Hallow Essence")
                    else
                        local pos = CFrame.new(-8932.32,146.83,6062.55)
                        repeat task.wait(.1)
                            _tp(pos)
                        until not _G.AutoHytHallow or plr.Character.HumanoidRootPart.CFrame == pos
                        EquipWeapon("Hallow Essence")
                    end
                end

            end)
        end
    end
end)
end

Farm:AddSection({"Material"})

Farm:AddDropdown({
        Name = "Select Material",
        Description = "Select material",
        Options = MaterialList,

        Default = GetSetting("SelectMaterial_Save", nil),
        Multi = false,
        Callback = function(I)
                (getgenv()).SelectMaterial = I


        _G.SaveData["SelectMaterial_Save"] = I
        SaveSettings()
        end,
})

Farm:AddToggle({
        Name = "Auto Farm",
        Description = "Start farm",

        Default = GetSetting("AutoMaterial_Save", false),
        Callback = function(I)
                (getgenv()).AutoMaterial = I


        _G.SaveData["AutoMaterial_Save"] = I
        SaveSettings()
        end,
})

task.spawn(function()
        local function I(I, e)
                if I:FindFirstChild("Humanoid") and (I:FindFirstChild("HumanoidRootPart") and I.Humanoid.Health > 0) then
                        if I.Name == e then
                                repeat
                                        task.wait();
                                        G.Kill(I, (getgenv()).AutoMaterial);
                                until not (getgenv()).AutoMaterial or not I.Parent or I.Humanoid.Health <= 0;
                        end;
                end;
        end;
        local function e()
                for I, e in pairs((game:GetService("Workspace"))._WorldOrigin.EnemySpawns:GetChildren()) do
                        for I, K in ipairs(MMon) do
                                if string.find(e.Name, K) then
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - e.Position).Magnitude >= 10 then
                                                _tp(e.CFrame * Pos);
                                        end;
                                end;
                        end;
                end;
        end;
        while task.wait() do
                if (getgenv()).AutoMaterial then
                        pcall(function()
                                if (getgenv()).SelectMaterial then
                                        MaterialMon((getgenv()).SelectMaterial);
                                        _tp(MPos);
                                end;
                                for e, K in ipairs(MMon) do
                                        for e, n in pairs(workspace.Enemies:GetChildren()) do
                                                I(n, K);
                                        end;
                                end;
                                e();
                        end);
                end;
        end;
end);

if World3 then
Farm:AddSection({"Dark Dragger + Valkyrie"})
Farm:AddToggle({
    Name = "Auto Kill Rip Indra",
    Description = "Auto farm rip indra",

    Default = GetSetting("AutoRipIndra_Save", false),
    Callback = function(I)
        _G.AutoRipIngay = I


        _G.SaveData["AutoRipIndra_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AutoRipIngay then
                                local I = GetConnectionEnemies("rip_indra");
                                if not GetWP("Dark Dagger") or not GetIn("Valkyrie") and I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.AutoRipIngay);
                                        until not _G.AutoRipIngay or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        commF:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899));
                                        task.wait(.1);
                                        _tp(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
                                end;
                        end;
                end);
        end;
end);
Farm:AddToggle({
    Name = "Auto Active Cores",
    Description = "Auto activate aura/color",

    Default = GetSetting("AutoActiveCores_Save", false),
    Callback = function(I)
        _G.AutoUnHaki = I


        _G.SaveData["AutoActiveCores_Save"] = I


        SaveSettings()
    end,
})

AuraSkin = function(I)
                local e = { [1] = { StorageName = I, Type = "AuraSkin", Context = "Equip" } };
                (((replicated:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer(unpack(e));
        end;
VaildColor = function(I)
                if I and I.BrickColor then
                        return tostring(I.BrickColor) == "Lime green";
                end;
        end;
HakiCalculate = function(I)
                local e = { ["Really red"] = "Pure Red", Oyster = "Snow White", ["Hot pink"] = "Winter Sky" };
                if I and I.BrickColor then
                        return e[tostring(I.BrickColor)];
                end;
        end;
task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoUnHaki then
                        pcall(function()
                                local I = workspace.Map["Boat Castle"]:FindFirstChild("Summoner");
                                if I and I:FindFirstChild("Circle") then
                                        for I, e in pairs((I:FindFirstChild("Circle")):GetChildren()) do
                                                if e.Name == "Part" then
                                                        local I = e:FindFirstChild("Part");
                                                        if VaildColor(I) == false then
                                                                AuraSkin(HakiCalculate(e));
                                                                repeat
                                                                        task.wait();
                                                                        _tp(e.CFrame);
                                                                until VaildColor(I) == true or not _G.AutoUnHaki;
                                                        end;
                                                end;
                                        end;
                                end;
                        end);
                end;
        end;
end);
end
Setting:AddSection({"Manual Save"})

Setting:AddButton({
    Name = "Salvar Config UI",
    Description = "",
    Callback = function()

        if SaveSettings then
            SaveSettings()


            game.StarterGui:SetCore("SendNotification", {
                Title = "Zythera-X",
                Text = "Done",
                Duration = 5
            })
        else
            warn("Erro!")
        end
    end
})

Setting:AddButton({
    Name = "Resetar Config UI",
    Description = "",
    Callback = function()

        if isfile and isfile(FullPath) then
            delfile(FullPath)
            _G.SaveData = {}


            game.StarterGui:SetCore("SendNotification", {
                Title = "Zythera-X",
                Text = "Done",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Zythera-X",
                Text = "Done",
                Duration = 3
            })
        end
    end
})
Setting:AddSection({"Setting Farm"})
Setting:AddButton({
    Name = "Stop Tween",
    Description = "Stop tween fly",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        if not char then return end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")


        shouldTween = false


        if hrp then
            hrp.Anchored = false


            for _, v in pairs(hrp:GetChildren()) do
                if v:IsA("BodyVelocity")
                or v:IsA("BodyPosition")
                or v:IsA("BodyGyro") then
                    v:Destroy()
                end
            end
        end

        if hum then
            hum.PlatformStand = false
            hum.Sit = false
            hum.WalkSpeed = 16
            hum.JumpPower = 50
            hum.AutoRotate = true
            hum:ChangeState(Enum.HumanoidStateType.Running)
        end


        getgenv().OnFarm = true


        task.wait()
        shouldTween = true
    end
})

Setting:AddToggle({
        Name = "Safe Mode",
        Description = "Enable to protect your health if low",

        Default = GetSetting("SafeMode_Save", false),
        Callback = function(I)
                _G.Safemode = I

        _G.SaveData["SafeMode_Save"] = I
        SaveSettings()
        end,
})

Setting:AddToggle({
        Name = "Auto Active Haki",
        Description = "Auto activate haki",

        Default = GetSetting("AutoHaki_Save", true),
        Callback = function(I)
                Boud = I

        _G.SaveData["AutoHaki_Save"] = I
        SaveSettings()
        end,
})
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if Boud then
                                local I = { "HasBuso", "Buso" };
                                if not plr.Character:FindFirstChild(I[1]) then
                                        commF:InvokeServer(I[2]);
                                end;
                        end;
                end);
        end;
end);
Setting:AddToggle({
        Name = "Auto Active V3",
        Description = "Auto use race v3",

        Default = GetSetting("AutoActiveV3_Save", false),
        Callback = function(I)
                _G.RaceClickAutov3 = I


        _G.SaveData["AutoActiveV3_Save"] = I


        SaveSettings()
        end,
})

Setting:AddToggle({
        Name = "Auto Active V4",
        Description = "Auto use race v4",

        Default = GetSetting("AutoActiveV4_Save", false),
        Callback = function(I)
                _G.RaceClickAutov4 = I


        _G.SaveData["AutoActiveV4_Save"] = I


        SaveSettings()
        end,
})

task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.RaceClickAutov3 then
                                repeat
                                        replicated.Remotes.CommE:FireServer("ActivateAbility");
                                        task.wait(30);
                                until not _G.RaceClickAutov3;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.RaceClickAutov4 then
                                if plr.Character:FindFirstChild("RaceEnergy") then
                                        if (plr.Character:FindFirstChild("RaceEnergy")).Value == 1 then
                                                Useskills("nil", "Y");
                                        end;
                                end;
                        end;
                end);
        end;
end);
Setting:AddToggle({
        Name = "Anti AFK",
        Description = "Anti-kick after 20 mins",
        Default = true,
        Callback = function(I)
                _G.AntiAFK = I;
        end,
});
plr.Idled:Connect(function()
        vim2:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
        task.wait(1);
        vim2:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
Setting:AddToggle({
        Name = "Disable Notify",
        Description = "Disable notifications",

        Default = GetSetting("DisableNotify_Save", false),
        Callback = function(I)
                RemoveDamage = I


        _G.SaveData["DisableNotify_Save"] = I


        SaveSettings()
        end,
})

task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if RemoveDamage then
                                replicated.Assets.GUI.DamageCounter.Enabled = false;
                                plr.PlayerGui.Notifications.Enabled = false;
                        else
                                replicated.Assets.GUI.DamageCounter.Enabled = true;
                                plr.PlayerGui.Notifications.Enabled = true;
                        end;
                end);
        end;
end);

Setting:AddSection({"Auto Hop"})

_G.ZX_AutoHopAdmin = GetSetting("ZX_AutoHopAdmin_Save", false)
_G.ZX_AutoHopServer = GetSetting("ZX_AutoHopServer_Save", false)
_G.ZX_HopDelay = 30 * 60

local ZX_AdminNames = {
    "red_game43", "rip_indra", "Axiore", "Polkster", "wenlocktoad",
    "Daigrock", "toilamvidamme", "oofficialnoobie", "Uzoth", "Azarth",
    "arlthmetic", "Death_King", "Lunoven", "TheGreateAced", "rip_fud",
    "drip_mama", "layandikit12", "Hingoi"
}

local function ZX_HopServer()
    pcall(function()
        local response = _ZX_HttpGet(string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", game.PlaceId))
        local data = game:GetService("HttpService"):JSONDecode(response)
        if data and data.data then
            for _, server in ipairs(data.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, plr)
                    return
                end
            end
        end
    end)
end

Setting:AddToggle({
    Name = "Auto Hop when Admin Joins",
    Description = "Auto hop server when a game admin joins",
    Default = _G.ZX_AutoHopAdmin,
    Callback = function(v)
        _G.ZX_AutoHopAdmin = v
        _G.SaveData["ZX_AutoHopAdmin_Save"] = v
        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(2) do
        if _G.ZX_AutoHopAdmin then
            pcall(function()
                for _, p in ipairs(ply:GetPlayers()) do
                    if p ~= plr and table.find(ZX_AdminNames, p.Name) then
                        ZX_HopServer()
                        break
                    end
                end
            end)
        end
    end
end)

Setting:AddToggle({
    Name = "Auto Hop Server",
    Description = "Auto hop every X minutes",
    Default = _G.ZX_AutoHopServer,
    Callback = function(v)
        _G.ZX_AutoHopServer = v
        _G.SaveData["ZX_AutoHopServer_Save"] = v
        _G.ZX_HopTimer = nil
        SaveSettings()
    end,
})

Setting:AddSlider({
    Name = "Hop Delay (Minutes)",
    Description = "Time between auto hops",
    Min = 5,
    Max = 120,
    Default = GetSetting("ZX_HopDelay_Save", 30),
    Increment = 1,
    Callback = function(v)
        _G.ZX_HopDelay = v * 60
        _G.SaveData["ZX_HopDelay_Save"] = v
        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(1) do
        if _G.ZX_AutoHopServer then
            pcall(function()
                if not _G.ZX_HopTimer then _G.ZX_HopTimer = tick() end
                if tick() - _G.ZX_HopTimer >= _G.ZX_HopDelay then
                    _G.ZX_HopTimer = tick()
                    ZX_HopServer()
                end
            end)
        else
            _G.ZX_HopTimer = nil
        end
    end
end)

Setting:AddSection({"Select"})

Setting:AddTextBox({
    Title = "Select Farm Height",
    Description = "Height above mob",
    PlaceHolder = "30",
    Default = tostring(_G.MobHeight),
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            _G.MobHeight = num
        end
    end
})

Setting:AddTextBox({
    Title = "Tween Speed",
    Description = "Tween speed",
    PlaceHolder = "370",
    Default = "370",
    Callback = function(I)
        if tonumber(I) then
            getgenv().TweenSpeedFar = tonumber(I)
        end
    end,
});
Fish:AddSection({"Fishing"})

-- Wrap entire fishing section in do...end to scope its locals
do
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local FishReplicated = RS:WaitForChild("FishReplicated")
local FishingRequest = FishReplicated:WaitForChild("FishingRequest")
local FishingClientConfig = require(FishReplicated:WaitForChild("FishingClient"):WaitForChild("Config"))
local GetWaterHeight = require(RS:WaitForChild("Util"):WaitForChild("GetWaterHeightAtLocation"))

local Net = RS:WaitForChild("Modules"):WaitForChild("Net")
local CraftRemote = Net:WaitForChild("RF/Craft")
local JobsRemote = Net:WaitForChild("RF/JobsRemoteFunction")
local ToolAbilities = Net:WaitForChild("RF/JobToolAbilities")

local LogoID = nil

local function NotifyNightMystic(texto)
    task.spawn(function()
        local guiName = "NightMysticNotify"
        local existingGui = CoreGui:FindFirstChild(guiName)
        if existingGui then existingGui:Destroy() end

        local sg = Instance.new("ScreenGui")
        sg.Name = guiName
        sg.Parent = CoreGui
        sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local frame = Instance.new("Frame")
        frame.Parent = sg
        frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        frame.Size = UDim2.new(0, 260, 0, 60)
        frame.Position = UDim2.new(1, 10, 0.85, 0)
        frame.BorderSizePixel = 0

        local stroke = Instance.new("UIStroke")
        stroke.Parent = frame
        stroke.Color = Color3.fromRGB(50, 50, 50)
        stroke.Thickness = 1

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = frame

        local icon = Instance.new("ImageLabel")
        icon.Parent = frame
        icon.BackgroundTransparency = 1
        icon.Position = UDim2.new(0, 10, 0, 10)
        icon.Size = UDim2.new(0, 40, 0, 40)
        icon.Image = ""
        icon.BackgroundTransparency = 0
        icon.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        local iconCorner = Instance.new("UICorner")
        iconCorner.CornerRadius = UDim.new(0, 6)
        iconCorner.Parent = icon
        local iconLabel = Instance.new("TextLabel")
        iconLabel.Parent = icon
        iconLabel.Size = UDim2.new(1, 0, 1, 0)
        iconLabel.BackgroundTransparency = 1
        iconLabel.Text = "ZX"
        iconLabel.TextColor3 = Color3.fromRGB(255, 30, 30)
        iconLabel.Font = Enum.Font.GothamBold
        iconLabel.TextSize = 16

        local title = Instance.new("TextLabel")
        title.Parent = frame
        title.BackgroundTransparency = 1
        title.Position = UDim2.new(0, 60, 0, 8)
        title.Size = UDim2.new(0, 190, 0, 20)
        title.Font = Enum.Font.GothamBold
        title.Text = "Auto Fish"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.TextSize = 14
        title.TextXAlignment = Enum.TextXAlignment.Left

        local msg = Instance.new("TextLabel")
        msg.Parent = frame
        msg.BackgroundTransparency = 1
        msg.Position = UDim2.new(0, 60, 0, 28)
        msg.Size = UDim2.new(0, 190, 0, 20)
        msg.Font = Enum.Font.Gotham
        msg.Text = texto
        msg.TextColor3 = Color3.fromRGB(180, 180, 180)
        msg.TextSize = 12
        msg.TextXAlignment = Enum.TextXAlignment.Left

        local targetPos = UDim2.new(1, -270, 0.85, 0)
        TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Position = targetPos}):Play()

        task.wait(3)

        TweenService:Create(frame, TweenInfo.new(0.5), {BackgroundTransparency = 1, Position = targetPos + UDim2.new(0,0,-0.1,0)}):Play()
        TweenService:Create(stroke, TweenInfo.new(0.5), {Transparency = 1}):Play()
        TweenService:Create(icon, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
        TweenService:Create(title, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
        TweenService:Create(msg, TweenInfo.new(0.5), {TextTransparency = 1}):Play()

        task.wait(0.5)
        sg:Destroy()
    end)
end

_G.SelectedRod = "Fishing Rod"
_G.SelectedBait = "Basic Bait"
_G.AutoBuyBait = false
_G.AutoFishing = false
_G.AutoFishingQuest = false
_G.AutoQuestComplete = false
_G.AutoSellFish = false
_G.AutoSkillZ = false

Fish:AddDropdown({
    Name = "Select Fishing Rod",
    Description = "Select fishing rod",
    Options = {
        "Fishing Rod",
        "Gold Rod",
        "Shark Rod",
        "Shell Rod",
        "Treasure Rod"
    },

    Default = GetSetting("Fish_SelectedRod", "Fishing Rod"),
    Callback = function(Value)
        _G.SelectedRod = Value

        _G.SaveData["Fish_SelectedRod"] = Value
        SaveSettings()
    end
})

Fish:AddDropdown({
    Name = "Select Bait",
    Description = "Select bait",
    Options = {
        "Basic Bait",
        "Kelp Bait",
        "Good Bait",
        "Abyssal Bait",
        "Frozen Bait",
        "Epic Bait",
        "Carnivore Bait"
    },

    Default = GetSetting("Fish_SelectedBait", "Basic Bait"),
    Callback = function(Value)
        _G.SelectedBait = Value

        _G.SaveData["Fish_SelectedBait"] = Value
        SaveSettings()

        if _G.AutoBuyBait then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
})

Fish:AddToggle({
    Name = "Auto Buy Bait",
    Description = "Auto buy bait",

    Default = GetSetting("Fish_AutoBuyBait", false),
    Callback = function(Value)
        _G.AutoBuyBait = Value

        _G.SaveData["Fish_AutoBuyBait"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
})

task.spawn(function()
    while task.wait(2) do
        if _G.AutoBuyBait and _G.SelectedBait then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
end)

Fish:AddToggle({
    Name = "Auto Fishing",
    Description = "Auto fish",

    Default = GetSetting("Fish_AutoFishing", false),
    Callback = function(Value)
        _G.AutoFishing = Value

        _G.SaveData["Fish_AutoFishing"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoFishing then
            pcall(function()
                local plr = Players.LocalPlayer
                local char = plr.Character or plr.CharacterAdded:Wait()
                local hrp = char:FindFirstChild("HumanoidRootPart")

                if not hrp then return end

                local equippedTool = char:FindFirstChildOfClass("Tool")


                if _G.SelectedRod and (not equippedTool or equippedTool.Name ~= _G.SelectedRod) then
                    local rodInBag = plr.Backpack:FindFirstChild(_G.SelectedRod)

                    if rodInBag then

                        char.Humanoid:EquipTool(rodInBag)
                        equippedTool = rodInBag
                    else

                        NotifyNightMystic("please equip:" .. tostring(_G.SelectedRod))
                        return
                    end
                end

                if equippedTool then
                    local maxLaunch = FishingClientConfig.Rod.MaxLaunchDistance
                    local waterHeight = GetWaterHeight(hrp.Position)

                    local rayOrigin = char.Head.Position
                    local rayDirection = hrp.CFrame.LookVector * maxLaunch

                    local ignoreList = {char, Workspace.Characters, Workspace.Enemies}
                    local _, hitPos = Workspace:FindPartOnRayWithIgnoreList(Ray.new(rayOrigin, rayDirection), ignoreList)

                    local targetPos = hitPos and Vector3.new(hitPos.X, math.max(hitPos.Y, waterHeight), hitPos.Z)

                    local state = equippedTool:GetAttribute("State")
                    local serverState = equippedTool:GetAttribute("ServerState")

                    if targetPos and (state == "ReeledIn" or serverState == "ReeledIn") then
                        FishingRequest:InvokeServer("StartCasting")
                        task.wait()
                        FishingRequest:InvokeServer("CastLineAtLocation", targetPos, 100, true)

                    elseif serverState == "Biting" then
                        FishingRequest:InvokeServer("Catching", true)
                        task.wait(0.1)
                        FishingRequest:InvokeServer("Catch", 1)


                        NotifyNightMystic("New item caught")
                    end
                end
            end)
        end
    end
end)

Fish:AddToggle({
    Name = "Auto Quest Fishing",
    Description = "Auto fishing quest",

    Default = GetSetting("Fish_AutoQuest", false),
    Callback = function(Value)
        _G.AutoFishingQuest = Value

        _G.SaveData["Fish_AutoQuest"] = Value
        SaveSettings()
    end
})

local function HasQuest()
    local playerGui = Players.LocalPlayer:FindFirstChild("PlayerGui")
    if playerGui then
        local questGui = playerGui:FindFirstChild("Quest") or playerGui:FindFirstChild("QuestGui")
        if questGui and questGui:FindFirstChild("Container") and questGui.Container:FindFirstChild("QuestTitle") then
            return true
        end
    end
    return false
end

task.spawn(function()
    while task.wait(1) do
        if _G.AutoFishingQuest then
            pcall(function()
                if not HasQuest() then
                    JobsRemote:InvokeServer("FishingNPC", "Angler", "AskQuest")
                end
            end)
        end
    end
end)

Fish:AddToggle({
    Name = "Auto Complete Quest",
    Description = "Auto complete quest",

    Default = GetSetting("Fish_AutoComplete", false),
    Callback = function(Value)
        _G.AutoQuestComplete = Value

        _G.SaveData["Fish_AutoComplete"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "FinishQuest")
            end)
        end
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoQuestComplete then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "FinishQuest")
            end)
        end
    end
end)

Fish:AddToggle({
    Name = "Auto Sell Fish",
    Description = "Auto sell fish",

    Default = GetSetting("Fish_AutoSell", false),
    Callback = function(Value)
        _G.AutoSellFish = Value

        _G.SaveData["Fish_AutoSell"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "SellFish")
            end)
        end
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoSellFish then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "SellFish")
            end)
        end
    end
end)

Fish:AddToggle({
    Name = "Auto use skill of the rod",
    Description = "Auto use fishing rod skills",

    Default = GetSetting("Fish_AutoSkillZ", false),
    Callback = function(Value)
        _G.AutoSkillZ = Value

        _G.SaveData["Fish_AutoSkillZ"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoSkillZ then
            pcall(function()
                ToolAbilities:InvokeServer("Z", true)
            end)
        end
    end
end)
local plr = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local WS = game:GetService("Workspace")

_G.AutoBoss = false
_G.FarmAllBoss = false
_G.AutoAcceptQuest = false
_G.CurrentTargetBoss = nil
_G.FindBoss = _G.FindBoss or (Boss and Boss[1])

local function EquipWeapon()
    local char = plr.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end

    if _G.SelectWeapon then
        local tool = plr.Backpack:FindFirstChild(_G.SelectWeapon)
            or char:FindFirstChild(_G.SelectWeapon)
        if tool and tool.Parent ~= char then
            hum:EquipTool(tool)
        end
    end
end

local function GoToBoss(targetBoss)
    local char = plr.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")

    if not targetBoss or not hrp or not hum then return end

    local bossHRP = targetBoss:FindFirstChild("HumanoidRootPart") or targetBoss:FindFirstChild("Torso")
    if not bossHRP then return end

    local safeHeight = 22
    local targetPos = bossHRP.Position + Vector3.new(0, safeHeight, 0)
    local targetCFrame = CFrame.new(targetPos)
    local distToSafeSpot = (hrp.Position - targetPos).Magnitude

    EquipWeapon()

    if distToSafeSpot <= 5 then
        hrp.CFrame = targetCFrame
        hrp.Velocity = Vector3.zero
        hrp.AssemblyLinearVelocity = Vector3.zero
        hum.AutoRotate = false


        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    else
        if _tp then _tp(targetCFrame) else hrp.CFrame = targetCFrame end
    end
end

end -- end of Fishing do...end block

Others:AddSection({"Boss Farm"})

local BossDropdown = Others:AddDropdown({
    Name = "Select Boss",
    Description = "Select boss",
    Options = Boss,
    Default = Boss[1],
    Callback = function(v) _G.FindBoss = v end
})

Others:AddButton({
    Name = "Refresh Boss List",
    Description = "Refresh boss",
    Callback = function()
        local LiveBosses = {}
        local FoundAny = false

        for _, obj in pairs(WS:GetDescendants()) do
            if obj:IsA("Model") and obj:GetAttribute("IsBoss") == true then
                if not table.find(LiveBosses, obj.Name) then
                    table.insert(LiveBosses, obj.Name)
                    FoundAny = true
                end
            end
        end
        for _, obj in pairs(RS:GetDescendants()) do
            if obj:IsA("Model") and obj:GetAttribute("IsBoss") == true then
                if not table.find(LiveBosses, obj.Name) then
                    table.insert(LiveBosses, obj.Name)
                    FoundAny = true
                end
            end
        end

        if FoundAny then
            table.sort(LiveBosses)
            BossDropdown:Refresh(LiveBosses, true)
        else
            BossDropdown:Refresh({"Nenhum Boss Encontrado"}, true)
        end
    end
})

Others:AddToggle({
    Name = "Auto Farm Boss Select",
    Description = "Auto farm selected boss",
    Default = false,
    Callback = function(v)
        _G.AutoBoss = v
        if v then _G.FarmAllBoss = false end
    end
})

 Others:AddToggle({
    Name = "Accept Quest Boss",
    Description = "Get boss quest",
    Default = false,
    Callback = function(v)
        _G.AutoAcceptQuest = v
    end
})

 Others:AddToggle({
    Name = "Farm All Bosses",
    Description = "Farm all available bosses",
    Default = false,
    Callback = function(v)
        _G.FarmAllBoss = v
        if v then _G.AutoBoss = false end
        _G.CurrentTargetBoss = nil
    end
})

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if not _G.FarmAllBoss then
            task.wait(0.5)
            do break end
        end

        if _G.CurrentTargetBoss and _G.CurrentTargetBoss.Parent and _G.CurrentTargetBoss:FindFirstChild("Humanoid") and _G.CurrentTargetBoss.Humanoid.Health > 0 then
            task.wait(0.2)
            do break end
        end

        local char = plr.Character
        local myHrp = char and char:FindFirstChild("HumanoidRootPart")
        if not myHrp then task.wait(0.5) do break end end

        local potentialBosses = {}
        local foundInWorkspace = false

        local function FastScan(container, isRS)
            for _, v in pairs(container:GetDescendants()) do
                if v:IsA("Model") and v:GetAttribute("IsBoss") == true then
                    if v.Name ~= "Cursed Skeleton Boss" then
                        local h = v:FindFirstChild("Humanoid")
                        local hrp = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")
                        if h and h.Health > 0 and hrp then
                            local dist = (myHrp.Position - hrp.Position).Magnitude
                            if isRS then
                                table.insert(potentialBosses, {Model = v, Distance = dist + 10000})
                            else
                                table.insert(potentialBosses, {Model = v, Distance = dist})
                                foundInWorkspace = true
                            end
                        end
                    end
                end
            end
        end

        FastScan(WS, false)
        if not foundInWorkspace then FastScan(RS, true) end

        if #potentialBosses > 0 then
            table.sort(potentialBosses, function(a, b) return a.Distance < b.Distance end)
            _G.CurrentTargetBoss = potentialBosses[1].Model
        else
            _G.CurrentTargetBoss = nil
        end
        task.wait(0.2)
    end
end)

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            if _G.AutoBoss and _G.FindBoss then
                if QuestB then QuestB() end

                local NeedQuest = false
                local char = plr.Character
                if not char or not char:FindFirstChild("HumanoidRootPart") then return end

                if _G.AutoAcceptQuest and Qname and Qdata and PosQBoss then
                    local playerGui = plr.PlayerGui:FindFirstChild("Main") and plr.PlayerGui.Main:FindFirstChild("Quest")
                    local hasQuest = playerGui and playerGui.Visible
                    if not hasQuest then NeedQuest = true end
                end

                if NeedQuest then
                    if (PosQBoss.Position - char.HumanoidRootPart.Position).Magnitude <= 5 then
                        RS.Remotes.CommF_:InvokeServer("StartQuest", Qname, Qdata)
                    else
                        if _tp then _tp(PosQBoss) else char.HumanoidRootPart.CFrame = PosQBoss end
                    end
                    return
                end

                local specificBoss = WS:FindFirstChild("Enemies") and WS.Enemies:FindFirstChild(_G.FindBoss) or WS:FindFirstChild(_G.FindBoss)
                if specificBoss and specificBoss:FindFirstChild("Humanoid") and specificBoss.Humanoid.Health > 0 then
                    GoToBoss(specificBoss)
                elseif PosB then
                    if _tp then _tp(PosB) else char.HumanoidRootPart.CFrame = PosB end
                end

            elseif _G.FarmAllBoss then
                if _G.CurrentTargetBoss then
                    GoToBoss(_G.CurrentTargetBoss)
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(0.5) do
        if plr.Backpack and _G.ChooseWP then
            for _, e in pairs(plr.Backpack:GetChildren()) do
                if e.ToolTip == _G.ChooseWP then _G.SelectWeapon = e.Name end
            end
        end
    end
end)
Quests:AddSection({"Quests"})
 Quests:AddToggle({
    Name = "Auto Farm Observation",
    Description = "Auto farm observation haki",

    Default = GetSetting("AutoObsFarm_Save", false),
    Callback = function(I)
        _G.obsFarm = I


        _G.SaveData["AutoObsFarm_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.obsFarm then
                                replicated.Remotes.CommE:FireServer("Ken", true);
                                if plr:GetAttribute("KenDodgesLeft") == 0 then
                                        KenTest = false;
                                elseif plr:GetAttribute("KenDodgesLeft") > 0 then
                                        replicated.Remotes.CommE:FireServer("Ken", true);
                                        KenTest = true;
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.obsFarm then
                                if World1 then
                                        if workspace.Enemies:FindFirstChild("Galley Captain") then
                                                if KenTest then
                                                        repeat
                                                                task.wait();
                                                                plr.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
                                                        until _G.obsFarm == false or KenTest == false;
                                                else
                                                        repeat
                                                                task.wait();
                                                                plr.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
                                                        until _G.obsFarm == false or KenTest;
                                                end;
                                        else
                                                _tp(CFrame.new(5533.29785, 88.1079102, 4852.3916));
                                        end;
                                elseif World2 then
                                        if workspace.Enemies:FindFirstChild("Lava Pirate") then
                                                if KenTest then
                                                        repeat
                                                                task.wait();
                                                                plr.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
                                                        until _G.obsFarm == false or KenTest == false;
                                                else
                                                        repeat
                                                                task.wait();
                                                                plr.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
                                                        until _G.obsFarm == false or KenTest;
                                                end;
                                        else
                                                _tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
                                        end;
                                elseif World3 then
                                        if workspace.Enemies:FindFirstChild("Venomous Assailant") then
                                                if KenTest then
                                                        repeat
                                                                task.wait();
                                                                _tp((workspace.Enemies:FindFirstChild("Venomous Assailant")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0));
                                                        until _G.obsFarm == false or KenTest == false;
                                                else
                                                        repeat
                                                                task.wait();
                                                                _tp((workspace.Enemies:FindFirstChild("Venomous Assailant")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0));
                                                        until _G.obsFarm == false or KenTest;
                                                end;
                                        else
                                                _tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
                                        end;
                                end;
                        end;
                end);
        end;
end);
if World3 then
Quests:AddToggle({
        Name = "Auto Observation V2",
        Description = "Auto get observation v2",

        Default = GetSetting("AutoKenV2_Save", false),
        Callback = function(I)
                _G.AutoKenVTWO = I


        _G.SaveData["AutoKenV2_Save"] = I


        SaveSettings()
        end,
});

task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoKenVTWO then
                        pcall(function()
                                local I = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625);
                                local e = "Kuy";
                                local K = CFrame.new(-10920.125, 624.20275878906, -10266.995117188);
                                local n = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625);
                                local d = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875);
                                if plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                                        local I = GetConnectionEnemies("Forest Pirate");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.AutoKenVTWO);
                                                until not _G.AutoKenVTWO or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                                        else
                                                _tp(n);
                                        end;
                                elseif plr.PlayerGui.Main.Quest.Visible == true then
                                        local I = GetConnectionEnemies("Captain Elephant");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.AutoKenVTWO);
                                                until not _G.AutoKenVTWO or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                                        else
                                                _tp(d);
                                        end;
                                elseif plr.PlayerGui.Main.Quest.Visible == false then
                                        commF:InvokeServer("CitizenQuestProgress", "Citizen");
                                        task.wait(.1);
                                        commF:InvokeServer("StartQuest", "CitizenQuest", 1);
                                end;
                                if commF:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                                        _tp(CFrame.new(-12513.51953125, 340.11373901367, -9873.048828125));
                                end;
                                if not plr.Backpack:FindFirstChild("Fruit Bowl") or not plr.Character:FindFirstChild("Fruit Bowl") then
                                        if not GetBP("Fruit Bowl") then
                                                if not GetBP("Apple") then
                                                        commF:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
                                                        for I, e in pairs(workspace:GetDescendants()) do
                                                                if e.Name == "Apple" then
                                                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                                                        task.wait();
                                                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                                                        task.wait();
                                                                end;
                                                        end;
                                                elseif not GetBP("Banana") then
                                                        _tp(CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312));
                                                        for I, e in pairs(workspace:GetDescendants()) do
                                                                if e.Name == "Banana" then
                                                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                                                        task.wait();
                                                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                                                        task.wait();
                                                                end;
                                                        end;
                                                elseif not GetBP("Pineapple") then
                                                        _tp(CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625));
                                                        for I, e in pairs(workspace:GetDescendants()) do
                                                                if e.Name == "Pineapple" then
                                                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                                                        task.wait();
                                                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                                                        task.wait();
                                                                end;
                                                        end;
                                                end;
                                        end;
                                        if plr.Backpack:FindFirstChild("Banana") and (plr.Backpack:FindFirstChild("Apple") and plr.Backpack:FindFirstChild("Pineapple")) or plr:FindFirstChild("Banana") and (plr:FindFirstChild("Apple") and plr:FindFirstChild("Pineapple")) then
                                                repeat
                                                        task.wait();
                                                        _tp(I);
                                                until _G.AutoKenVTWO or plr.Character.HumanoidRootPart.CFrame == I;
                                                commF:InvokeServer("CitizenQuestProgress", "Citizen");
                                        end;
                                        if plr.Backpack:FindFirstChild("Fruit Bowl") or plr.Character:FindFirstChild("Fruit Bowl") then
                                                if plr.Character.HumanoidRootPart.CFrame ~= K then
                                                        _tp(K);
                                                elseif plr.Character.HumanoidRootPart.CFrame == K then
                                                        commF:InvokeServer("KenTalk2", "Start");
                                                        task.wait(.1);
                                                        commF:InvokeServer("KenTalk2", "Buy");
                                                end;
                                        end;
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
        Name = "Auto Citizen Quest",
        Description = "Citizen quest",
        Default = false,
        Callback = function(I)
                _G.CitizenQuest = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.CitizenQuest then
                                if Lv >= 1800 and (commF:InvokeServer("CitizenQuestProgress")).KilledBandits == false then
                                        if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and (string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and plr.PlayerGui.Main.Quest.Visible == true) then
                                                local I = GetConnectionEnemies("Forest Pirate");
                                                if I then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(I, _G.CitizenQuest);
                                                        until _G.CitizenQuest == false or not I.Parent or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                                                else
                                                        _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
                                                end;
                                        else
                                                _tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                                                if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - plr.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                                        task.wait(1.5);
                                                        commF:InvokeServer("StartQuest", "CitizenQuest", 1);
                                                end;
                                        end;
                                elseif Lv >= 1800 and (commF:InvokeServer("CitizenQuestProgress")).KilledBoss == false then
                                        local I = GetConnectionEnemies("Captain Elephant");
                                        if plr.PlayerGui.Main.Quest.Visible and (string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and plr.PlayerGui.Main.Quest.Visible == true) then
                                                if I then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(I, _G.CitizenQuest);
                                                        until _G.CitizenQuest == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                                                else
                                                        _tp(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
                                                end;
                                        else
                                                _tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                                                if ((CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                                        task.wait(1.5);
                                                        commF:InvokeServer("CitizenQuestProgress", "Citizen");
                                                end;
                                        end;
                                elseif Lv >= 1800 and commF:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                                        _tp(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
                                end;
                        end;
                end);
        end;
end);
Quests:AddSection({"Cursed Swords"});
local r = Quests:AddParagraph({ Title = "Elites Process ", Content = "" });
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        r:SetDesc("Elite Procress :  " .. commF:InvokeServer("EliteHunter", "Progress"));
                end);
        end;
end);
Quests:AddToggle({
        Name = "Auto Elite Quest",
        Description = "Do elite hunter quest",

        Default = GetSetting("AutoEliteQuest_Save", false),
        Callback = function(I)
                _G.FarmEliteHunt = I


        _G.SaveData["AutoEliteQuest_Save"] = I


        SaveSettings()
        end,
})
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.FarmEliteHunt then
                                if plr.PlayerGui.Main.Quest.Visible == true then
                                        if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
                                                for I, e in pairs(replicated:GetChildren()) do
                                                        if string.find(e.Name, "Diablo") or string.find(e.Name, "Urban") or string.find(e.Name, "Deandre") then
                                                                _tp(e.HumanoidRootPart.CFrame);
                                                        end;
                                                end;
                                                for I, e in pairs(Enemies:GetChildren()) do
                                                        if (string.find(e.Name, "Diablo") or string.find(e.Name, "Urban") or string.find(e.Name, "Deandre")) and G.Alive(e) then
                                                                repeat
                                                                        task.wait();
                                                                        G.Kill(e, _G.FarmEliteHunt);
                                                                until not _G.FarmEliteHunt or plr.PlayerGui.Main.Quest.Visible == false or not e.Parent or e.Humanoid.Health <= 0;
                                                        end;
                                                end;
                                        end;
                                else
                                        commF:InvokeServer("EliteHunter");
                                end;
                        end;
                end);
        end;
end);
 Quests:AddToggle({
    Name = "Stop when got God's Chalice",
    Description = "Stop when got God's Chalice",

    Default = GetSetting("StopChalice_Save", true),
    Callback = function(I)
        _G.StopWhenChalice = I


        _G.SaveData["StopChalice_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(.2) do
                if _G.StopWhenChalice and _G.FarmEliteHunt then
                        pcall(function()
                                if GetBP("God\'s Chalice") or GetBP("Sweet Chalice") or GetBP("Fist of Darkness") then
                                        _G.FarmEliteHunt = false;
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
        Name = "Auto Tushita Sword",
        Description = "Auto get Tushita sword",
        Default = false,
        Callback = function(I)
                _G.Auto_Tushita = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Tushita then
                                if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
                                        if not GetBP("Holy Torch") then
                                                _tp(CFrame.new(5148.03613, 162.352493, 910.548218));
                                                task.wait(.7);
                                        else
                                                EquipWeapon("Holy Torch");
                                                task.wait(1);
                                                repeat
                                                        task.wait();
                                                        _tp(CFrame.new(-10752, 417, -9366));
                                                until not _G.Auto_Tushita or ((CFrame.new(-10752, 417, -9366)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                                                task.wait(.7);
                                                repeat
                                                        task.wait();
                                                        _tp(CFrame.new(-11672, 334, -9474));
                                                until not _G.Auto_Tushita or ((CFrame.new(-11672, 334, -9474)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                                                task.wait(.7);
                                                repeat
                                                        task.wait();
                                                        _tp(CFrame.new(-12132, 521, -10655));
                                                until not _G.Auto_Tushita or ((CFrame.new(-12132, 521, -10655)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                                                task.wait(.7);
                                                repeat
                                                        task.wait();
                                                        _tp(CFrame.new(-13336, 486, -6985));
                                                until not _G.Auto_Tushita or ((CFrame.new(-13336, 486, -6985)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                                                task.wait(.7);
                                                repeat
                                                        task.wait();
                                                        _tp(CFrame.new(-13489, 332, -7925));
                                                until not _G.Auto_Tushita or ((CFrame.new(-13489, 332, -7925)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                                        end;
                                else
                                        local I = GetConnectionEnemies("Longma");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.Auto_Tushita);
                                                until I.Humanoid.Health <= 0 or not _G.Auto_Tushita or not I.Parent;
                                        else
                                                if replicated:FindFirstChild("Longma") then
                                                        _tp((replicated:FindFirstChild("Longma")).HumanoidRootPart.CFrame * CFrame.new(0, 40, 0));
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);

 Quests:AddToggle({
    Name = "Auto Yama Sword",
    Description = "Auto get Yama sword",

    Default = GetSetting("AutoYama_Save", false),
    Callback = function(I)
        _G.Auto_Yama = I


        _G.SaveData["AutoYama_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Auto_Yama then
                if commF:InvokeServer("EliteHunter", "Progress") < 30 then
                    _G.FarmEliteHunt = true;
                elseif commF:InvokeServer("EliteHunter", "Progress") > 30 then
                    _G.FarmEliteHunt = false;
                    if (workspace.Map.Waterfall.SealedKatana.Handle.Position - plr.Character.HumanoidRootPart.Position).Magnitude >= 20 then
                        _tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame);
                        local I = GetConnectionEnemies("Ghost");
                        if I then
                            repeat
                                task.wait();
                                G.Kill(I, _G.Auto_Yama);
                            until I.Humanoid.Health <= 0 or not I.Parent or not _G.Auto_Yama;
                            fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector);
                        end;
                    end;
                end;
            end;
        end);
    end;
end);
end
if World2 or World3 then

Quests:AddSection({"Buso/Aura Colours"});

 Quests:AddToggle({
    Name = "Teleport Barista Haki",
    Description = "Teleport to haki NPC",

    Default = GetSetting("TpBarista_Save", false),
    Callback = function(I)
        _G.Tp_MasterA = I


        _G.SaveData["TpBarista_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.Tp_MasterA then
            pcall(function()
                for _, e in pairs(replicated.NPCs:GetChildren()) do
                    if e.Name == "Barista Cousin" then
                        _tp(e.HumanoidRootPart.CFrame);
                    end;
                end;
            end);
        end;
    end;
end);

 Quests:AddButton({
    Name = "Buy Buso Colors",
    Description = "Buy Buso color",
    Callback = function()
        commF:InvokeServer("ColorsDealer", "2");
    end
});
end
if World3 then
 Quests:AddToggle({
    Name = "Auto Rainbow Haki",
    Description = "Auto get rainbow haki",

    Default = GetSetting("AutoRainbowHaki_Save", false),
    Callback = function(I)
        _G.Auto_Rainbow_Haki = I


        _G.SaveData["AutoRainbowHaki_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    pcall(function()
        while task.wait(Sec) do
            if _G.Auto_Rainbow_Haki then
                if plr.PlayerGui.Main.Quest.Visible == false then
                    if _G.GetQFast then
                        if plr.PlayerGui.Main.Quest.Visible == false then
                            commF:InvokeServer("HornedMan", "Bet");
                        end;
                    else
                        Rainbow1 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875);
                        if plr.Character.HumanoidRootPart.CFrame ~= Rainbow1 then
                            _tp(Rainbow1);
                        elseif plr.Character.HumanoidRootPart.CFrame == Rainbow1 then
                            task.wait(1);
                            commF:InvokeServer("HornedMan", "Bet");
                        end;
                    end;
                elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    local I = GetConnectionEnemies("Stone");
                    if I then
                        repeat
                            task.wait();
                            G.Kill(I, _G.Auto_Rainbow_Haki);
                        until _G.Auto_Rainbow_Haki == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                    else
                        _tp(CFrame.new(-1086.11621, 38.8425903, 6768.71436, .0231462717, -0.592676699, .805107772, 2.03251839e-05, .805323839, .592835128, -0.999732077, -0.0137055516, .0186523199));
                    end;
                elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader") then
                    local I = GetConnectionEnemies("Hydra Leader");
                    if I then
                        repeat
                            task.wait();
                            G.Kill(I, _G.Auto_Rainbow_Haki);
                        until _G.Auto_Rainbow_Haki == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                    else
                        commF:InvokeServer("requestEntrance", Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625));
                        local I = Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625);
                        local e = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
                        if plr.Character.HumanoidRootPart.CFrame.Position == I then
                            _tp(e);
                        end;
                    end;
                elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    local I = GetConnectionEnemies("Kilo Admiral");
                    if I then
                        repeat
                            task.wait();
                            G.Kill(I, _G.Auto_Rainbow_Haki);
                        until _G.Auto_Rainbow_Haki == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                    else
                        _tp(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, 0, -0.143904909, 0, 1.00000012, 0, .143904924, 0, -0.989591479));
                    end;
                elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    local I = GetConnectionEnemies("Captain Elephant");
                    if I then
                        repeat
                            task.wait();
                            G.Kill(I, _G.Auto_Rainbow_Haki);
                        until _G.Auto_Rainbow_Haki == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                    else
                        local I = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375);
                        local e = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
                        if plr.Character.HumanoidRootPart.CFrame.Position ~= I then
                            commF:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
                        elseif plr.Character.HumanoidRootPart.CFrame.Position == I then
                            _tp(e);
                        end;
                    end;
                elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    local I = GetConnectionEnemies("Captain Elephant");
                    if I then
                        repeat
                            task.wait();
                            G.Kill(I, _G.Auto_Rainbow_Haki);
                        until _G.Auto_Rainbow_Haki == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                    else
                        commF:InvokeServer("requestEntrance", Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918));
                    end;
                end;
            end;
        end;
    end);
end);
end

 Quests:AddToggle({
    Name = "Accept Quest Bypass [Risk]",
    Description = "Chấp nhận bỏ qua nhiệm vụ [Rủi ro]",

    Default = GetSetting("BypassQuest_Save", false),
    Callback = function(I)
        _G.GetQFast = I


        _G.SaveData["BypassQuest_Save"] = I


        SaveSettings()
    end,
})

Event:AddSection({"Sea Event / Setting Sail"})
local z5 = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "Beast Hunter",
    };

    Event:AddDropdown({
        Name = "Select Boats",
        Description = "Select boat",
        Options = z5,
        Default = "Guardian",
        Multi = false,
        Callback = function(I)
            _G.SelectedBoat = I;
        end,
    });

    if World3 then
        local H5 = {
            "Lv 1", "Lv 2", "Lv 3", "Lv 4", "Lv 5", "Lv 6", "Lv Infinite",
        };
        Event:AddDropdown({
            Name = "Select Level Sea",
            Description = "Select danger level to sail the sea",
            Options = H5,
            Default = "Lv 1",
            Multi = false,
            Callback = function(I)
                _G.DangerSc = I;
            end,
        });
    end

    Event:AddToggle({
        Name = "Auto Start farm",
        Description = "Buy boat and travel to sea area",
        Default = false,
        Callback = function(I)
            _G.SailBoats = I;
        end,
    });
task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.SailBoats then
            pcall(function()
                local I = CheckBoat();

                if not I then
                    local BoatDealerPos = CFrame.new(-16927.451, 9.086, 433.864);
                    TeleportToTarget(BoatDealerPos);
                    if (BoatDealerPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        commF:InvokeServer("BuyBoat", _G.SelectedBoat);
                    end;
                elseif I and (not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) and (not (CheckEnemiesBoat() and _G.FishBoat) and (not (CheckSeaBeast() and _G.SeaBeast1) and (not (_G.PGB and CheckPirateGrandBrigade()) and (not (_G.HCM and CheckHauntedCrew()) and not (_G.Leviathan1 and CheckLeviathan())))))) then
                    if plr.Character.Humanoid.Sit == false then
                        local e = I.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
                        _tp(e);
                    else
                        if _G.DangerSc == "Lv 1" then
                            CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143);
                        elseif _G.DangerSc == "Lv 2" then
                            CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032);
                        elseif _G.DangerSc == "Lv 3" then
                            CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774);
                        elseif _G.DangerSc == "Lv 4" then
                            CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012);
                        elseif _G.DangerSc == "Lv 5" then
                            CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023);
                        elseif _G.DangerSc == "Lv 6" then
                            CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584);
                        elseif _G.DangerSc == "Lv Infinite" then
                            CFrameSelectedZone = CFrame.new(-10000000, 31, 37016.25);
                        end;
                        repeat
                            task.wait();
                            if not _G.FishBoat and CheckEnemiesBoat() or not _G.PGB and CheckPirateGrandBrigade() or not _G.TerrorShark and CheckTerrorShark() then
                                _tp(CFrameSelectedZone * CFrame.new(0, 150, 0));
                            else
                                _tp(CFrameSelectedZone);
                            end;
                        until _G.SailBoats == false or CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha or CheckSeaBeast() and _G.SeaBeast1 or CheckEnemiesBoat() and _G.FishBoat or _G.Leviathan1 and CheckLeviathan() or _G.HCM and CheckHauntedCrew() or _G.PGB and CheckPirateGrandBrigade() or (plr.Character:WaitForChild("Humanoid")).Sit == false;
                        plr.Character.Humanoid.Sit = false;
                    end;
                end;
            end);
        end;
    end;
end);

task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            for I, e in pairs(workspace.Boats:GetChildren()) do
                for I, e in pairs(workspace.Boats[e.Name]:GetDescendants()) do
                    if e:IsA("BasePart") then
                        if _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.SailBoat_Hydra or _G.AutofindKitIs then
                            e.CanCollide = false;
                        else
                            e.CanCollide = true;
                        end;
                    end;
                end;
            end;
        end);
    end;
end);

_G.SetSpeedBoat = 300

Event:AddToggle({
        Name = "Activate Boat Speed",
        Description = "Allow customizing boat speed",
        Default = false,
        Callback = function(Value)
            _G.SpeedBoat = Value
        end
    })

    Event:AddTextBox({
        Title = "Boat Speed Value",
        Description = "Boat travel speed, recommended 300",
        PlaceHolder = "300",
        Default = "300",
        Callback = function(Value)
            local num = tonumber(Value)
            if num and num > 0 then
                _G.SetSpeedBoat = num
            end
        end
    })

task.spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.SpeedBoat then
            pcall(function()
                local plr = game.Players.LocalPlayer

                if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Sit then
                    for _, boat in pairs(workspace.Boats:GetChildren()) do
                        local seat = boat:FindFirstChildWhichIsA("VehicleSeat")
                        if seat then

                            seat.MaxSpeed = _G.SetSpeedBoat
                            seat.Torque = 0.2
                            seat.TurnSpeed = 5
                        end
                    end
                end
            end)
        end
    end)
end)

Event:AddSection({"Select what you will farm."})
    Event:AddToggle({
        Name = "Auto Attack Sea Beast",
        Description = "Auto farm sea beast (sets both SeaBeast1 & AutoAttackSeabeasts)",
        Default = false,
        Callback = function(I)
            _G.SeaBeast1 = I
            _G.AutoAttackSeabeasts = I
        end,
    });
Event:AddToggle({
    Name = "Auto Attack Pirate GrandBrigade",
    Description = "Auto attack pirate ships",
    Default = false,
    Callback = function(I)
        _G.PGB = I;
    end,
});

if World2 then
  Event:AddSection({"Go to Sea 3 for more options."})
end
if World1 then
  Event:AddSection({"Go to Sea 3 or Sea 2 for Farm maritime events"})
end
if game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
Event:AddToggle({
    Name = "Auto Shark",
    Description = "Farm sharks",
    Default = false,
    Callback = function(I)
        _G.Shark = I;
    end,
});
Event:AddToggle({
    Name = "Auto Piranha",
    Description = "Farm piranhas",
    Default = false,
    Callback = function(I)
        _G.Piranha = I;
    end,
});
Event:AddToggle({
    Name = "Auto Terror Shark",
    Description = "Farm terror sharks",
    Default = false,
    Callback = function(I)
        _G.TerrorShark = I;
    end,
});
Event:AddToggle({
    Name = "Auto Fish Crew Member",
    Description = "Farm fish crew",
    Default = false,
    Callback = function(I)
        _G.MobCrew = I;
    end,
});
Event:AddToggle({
    Name = "Auto Haunted Crew Member",
    Description = "Farm haunted crew",
    Default = false,
    Callback = function(I)
        _G.HCM = I;
    end,
});
Event:AddToggle({
    Name = "Auto Attack Fish Boat",
    Description = "Attack fishing boats",
    Default = false,
    Callback = function(I)
        _G.FishBoat = I;
    end,
});
end

_G.SelectedSkills = {
    ["Melee"] = {["Z"] = true, ["X"] = true, ["C"] = true},
    ["Sword"] = {["Z"] = true, ["X"] = true},
    ["Blox Fruit"] = {["Z"] = true, ["X"] = true, ["C"] = true, ["V"] = true, ["F"] = true},
    ["Gun"] = {["Z"] = true, ["X"] = true}
}

local function ExecuteSkills(category)
    if _G.SelectedSkills[category] then
        weaponSc(category)
        task.wait(0.2)

        local keys = {"Z", "X", "C", "V", "F"}
        for _, skill in ipairs(keys) do
            if _G.SelectedSkills[category][skill] then
                Useskills(category, skill)
                task.wait(0.35)
            end
        end
    end
end

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()


            local seaEnemies = {
                {Flag = _G.Shark, Name = "Shark", Check = CheckShark, KillType = "Normal"},
                {Flag = _G.TerrorShark, Name = "Terrorshark", Check = CheckTerrorShark, KillType = "Sea"},
                {Flag = _G.Piranha, Name = "Piranha", Check = CheckPiranha, KillType = "Normal"},
                {Flag = _G.MobCrew, Name = "Fish Crew Member", Check = CheckFishCrew, KillType = "Normal"},
                {Flag = _G.HCM, Name = "Haunted Crew Member", Check = CheckHauntedCrew, KillType = "Normal"}
            }

            for _, enemyData in ipairs(seaEnemies) do
                if enemyData.Flag and enemyData.Check() then
                    for _, K in pairs(workspace.Enemies:GetChildren()) do
                        if K.Name == enemyData.Name and G.Alive(K) then
                            repeat
                                task.wait()
                                if enemyData.KillType == "Sea" then
                                    G.KillSea(K, enemyData.Flag)
                                else
                                    G.Kill(K, enemyData.Flag)
                                end
                            until not enemyData.Flag or not K.Parent or K.Humanoid.Health <= 0
                        end
                    end
                end
            end


            if IsSeaBeastAttackEnabled() and workspace:FindFirstChild("SeaBeasts") then
                for _, e in pairs(workspace.SeaBeasts:GetChildren()) do
                    if IsLiveSeaBeast(e) and e.Name ~= "Leviathan" then
                        repeat
                            task.wait()
                            task.spawn(function()
                                local waterBase = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("WaterBase-Plane")
                                local targetY = waterBase and waterBase.Position.Y + 200 or e.HumanoidRootPart.Position.Y + 200
                                _tp(CFrame.new(e.HumanoidRootPart.Position.X, targetY, e.HumanoidRootPart.Position.Z))
                            end)

                            if plr:DistanceFromCharacter(e.HumanoidRootPart.CFrame.Position) <= 500 then
                                MousePos = e.HumanoidRootPart.Position
                                if CheckF() then
                                    ExecuteSkills("Melee")
                                else
                                    ExecuteSkills("Melee")
                                    ExecuteSkills("Sword")
                                    ExecuteSkills("Blox Fruit")
                                    ExecuteSkills("Gun")
                                end
                            end
                        until not IsSeaBeastAttackEnabled() or not IsLiveSeaBeast(e)
                    end
                end
            end


            if _G.Leviathan1 and workspace.SeaBeasts:FindFirstChild("Leviathan") then
                for _, e in pairs(workspace.SeaBeasts:GetChildren()) do
                    local segment = e:FindFirstChild("Leviathan Segment")
                    if e:FindFirstChild("HumanoidRootPart") and segment and (e:FindFirstChild("Health") and e.Health.Value > 0) then
                        repeat
                            task.wait()
                            task.spawn(function()
                                _tp(CFrame.new(e.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, e.HumanoidRootPart.Position.Z))
                            end)

                            if plr:DistanceFromCharacter(e.HumanoidRootPart.CFrame.Position) <= 500 then
                                MousePos = segment.Position
                                if CheckF() then
                                    ExecuteSkills("Melee")
                                else
                                    ExecuteSkills("Melee")
                                    ExecuteSkills("Sword")
                                    ExecuteSkills("Blox Fruit")
                                    ExecuteSkills("Gun")
                                end
                            end
                        until not _G.Leviathan1 or not e.Parent or e.Health.Value <= 0
                    end
                end
            end


            local boatConfigs = {
                {Flag = _G.FishBoat, Check = CheckEnemiesBoat, Name = "FishBoat", Dist = 150, Offset = CFrame.new(0, -50, -25)},
                {Flag = _G.PGB, Check = CheckPirateGrandBrigade, Name = "PirateBrigade", Dist = 150, Offset = CFrame.new(0, -30, -10)},
                {Flag = _G.PGB, Check = CheckPirateGrandBrigade, Name = "PirateGrandBrigade", Dist = 150, Offset = CFrame.new(0, -50, -50)}
            }

            for _, boat in ipairs(boatConfigs) do
                if boat.Flag and boat.Check() then
                    for _, e in pairs(workspace.Enemies:GetChildren()) do
                        if e.Name == boat.Name and e:FindFirstChild("VehicleSeat") and e.Health.Value > 0 then
                            repeat
                                task.wait()
                                task.spawn(function()
                                    _tp(e.Engine.CFrame * boat.Offset)
                                end)

                                if plr:DistanceFromCharacter(e.Engine.CFrame.Position) <= boat.Dist then
                                    MousePos = e.Engine.Position
                                    if CheckF() then
                                        ExecuteSkills("Blox Fruit")
                                    else
                                        ExecuteSkills("Melee")
                                        ExecuteSkills("Sword")
                                        ExecuteSkills("Blox Fruit")
                                        ExecuteSkills("Gun")
                                    end
                                end
                            until not boat.Flag or not e:FindFirstChild("VehicleSeat") or e.Health.Value <= 0
                        end
                    end
                end
            end

        end)
    end
end)
if game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
Event:AddSection({"Frozen Dimension"})
Event:AddButton({
        Name = "Buy Spy",
        Description = "Buy spy to search for Leviathan",
        Callback = function()
                commF:InvokeServer("InfoLeviathan", "2");
        end
});
Event:AddToggle({
    Name = "Teleport Frozen Dimension",
    Description = "Enable teleport to frozen dimension and start Leviathan portal.",

    Default = GetSetting("FrozenTP_Save", false),
    Callback = function(I)
        _G.FrozenTP = I


        _G.SaveData["FrozenTP_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(.1) do
                if _G.FrozenTP then
                        pcall(function()
                                if workspace.Map:FindFirstChild("LeviathanGate") then
                                        _tp(workspace.Map.LeviathanGate.CFrame);
                                        commF:InvokeServer("OpenLeviathanGate");
                                end;
                        end);
                end;
        end;
end);
Event:AddToggle({
        Name = "Auto Attack Leviathan",
        Description = "Farm leviathan",
        Default = false,
        Callback = function(I)
                _G.Leviathan1 = I;
        end,
});
Event:AddSection({"Kitsune Island / Event"});
Event:AddToggle({
    Name = "Auto Find Kitsune Island",
    Description = "Enable Kitsune island search and movement",

    Default = GetSetting("FindKitsune_Save", false),
    Callback = function(I)
        _G.AutofindKitIs = I


        _G.SaveData["FindKitsune_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if _G.AutofindKitIs then
                        pcall(function()
                                if not workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                                        local I = CheckBoat();
                                        if not I then
                                                local I = CFrame.new(-16927.451, 9.086, 433.864);
                                                TeleportToTarget(I);
                                                if (I.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                        commF:InvokeServer("BuyBoat", _G.SelectedBoat);
                                                end;
                                        else
                                                if plr.Character.Humanoid.Sit == false then
                                                        local e = I.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
                                                        _tp(e);
                                                else
                                                        local I = CFrame.new(-10000000, 31, 37016.25);
                                                        repeat
                                                                task.wait();
                                                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                                                        _tp(CFrame.new(-10000000, 150, 37016.25));
                                                                else
                                                                        _tp(CFrame.new(-10000000, 31, 37016.25));
                                                                end;
                                                        until not _G.AutofindKitIs or (I.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") or plr.Character.Humanoid.Sit == false;
                                                        plr.Character.Humanoid.Sit = false;
                                                end;
                                        end;
                                else
                                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0));
                                end;
                        end);
                end;
        end;
end);
Event:AddToggle({
        Name = "Auto Teleport to Shrine Actived",
        Description = "Teleport to activated Shrine",
        Default = false,
        Callback = function(I)
                _G.tweenShrine = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.tweenShrine then
                        pcall(function()
                                local I = workspace.Map:FindFirstChild("KitsuneIsland") or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island");
                                local e = I:FindFirstChild("ShrineActive");
                                if e then
                                        for e, K in next, e:GetDescendants() do
                                                if K:IsA("BasePart") and K.Name:find("NeonShrinePart") then
                                                        (replicated.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue")):FireServer();
                                                        repeat
                                                                task.wait();
                                                                _tp(K.CFrame * CFrame.new(0, 2, 0));
                                                        until _G.tweenShrine == false or not I;
                                                end;
                                        end;
                                else
                                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0));
                                end;
                        end);
                end;
        end;
end);
Event:AddToggle({
    Name = "Auto Collect Azure Ember",
    Description = "thu thập Azure Ember",

    Default = GetSetting("CollectAzureEmber_Save", false),
    Callback = function(I)
        _G.Collect_Ember = I


        _G.SaveData["CollectAzureEmber_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(.1) do
                if _G.Collect_Ember then
                        pcall(function()
                                if workspace:WaitForChild("AttachedAzureEmber") or workspace:WaitForChild("EmberTemplate") then
                                        notween(((workspace:WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame);
                                else
                                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0));
                                        replicated.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer();
                                end;
                        end);
                end;
        end;
end);
Event:AddToggle({
    Name = "Auto Trade Azure Ember",
    Description = "Trade Azure Ember",

    Default = GetSetting("TradeAzureEmber_Save", false),
    Callback = function(I)
        _G.Trade_Ember = I


        _G.SaveData["TradeAzureEmber_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(.1) do
                if _G.Trade_Ember then
                        pcall(function()
                                if workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                                        (replicated.Modules.Net:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer();
                                end;
                        end);
                end;
        end;
end);
Event:AddButton({ Name = "Trade Items Azure", Description = "", Callback = function()
                (replicated.Modules.Net:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer();
        end });
Event:AddButton({ Name = "Talk with kitsune statue", Description = "", Callback = function()
                (replicated.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue")):FireServer();
        end });
        Event:AddSection({"Mystic Island / Full Moon"});
Event:AddToggle({
        Name = "Auto Find Mirage Island",
    Description = "Enable mystery island search",

    Default = GetSetting("FindMirage_Save", false),
    Callback = function(I)
        _G.FindMirage = I


        _G.SaveData["FindMirage_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if _G.FindMirage then
                        pcall(function()
                                if not workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island", true) then
                                        local I = CheckBoat();
                                        if not I then
                                                local I = CFrame.new(-16927.451, 9.086, 433.864);
                                                TeleportToTarget(I);
                                                if (I.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                        commF:InvokeServer("BuyBoat", _G.SelectedBoat);
                                                end;
                                        else
                                                if plr.Character.Humanoid.Sit == false then
                                                        local e = I.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
                                                        _tp(e);
                                                else
                                                        repeat
                                                                task.wait();
                                                                local I = CFrame.new(-10000000, 31, 37016.25);
                                                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                                                        _tp(CFrame.new(-10000000, 150, 37016.25));
                                                                else
                                                                        _tp(CFrame.new(-10000000, 31, 37016.25));
                                                                end;
                                                        until not _G.FindMirage or (I.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") or plr.Character.Humanoid.Sit == false;
                                                        plr.Character.Humanoid.Sit = false;
                                                end;
                                        end;
                                else
                                        _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 300, 0));
                                end;
                        end);
                end;
        end;
end);
Event:AddToggle({
        Name = "Auto Tween To Highest Point",
    Description = "Fly to the highest point of Mirage (Ideal for moon viewing)",

    Default = GetSetting("HighestMirage_Save", false),
    Callback = function(I)
        _G.HighestMirage = I


        _G.SaveData["HighestMirage_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(1) do
        if _G.HighestMirage then
            pcall(function()

                if workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island", true) then

                    if _tp then
                        _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 400, 0))
                    end
                end
            end)
        end
    end
end)
Event:AddToggle({
        Name = "Auto Collect Gear",
    Description = "Coleta a engrenagem na Mirage (Blue Gear)",

    Default = GetSetting("AutoCollectGear_Save", false),
    Callback = function(I)
        _G.TPGEAR = I


        _G.SaveData["AutoCollectGear_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(0.1) do
        if _G.TPGEAR then
            pcall(function()
                local mystic = workspace.Map:FindFirstChild("MysticIsland")
                if mystic then
                    for _, e in pairs(mystic:GetChildren()) do

                        if e.Name == "Part" and e:IsA("MeshPart") then
                            if _tp then
                                _tp(e.CFrame)
                            end

                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - e.Position).Magnitude < 20 then
                                fireproximityprompt(e:FindFirstChildOfClass("ProximityPrompt"), 30)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Event:AddToggle({
        Name = "Change Transparency can see",
    Description = "Make Mirage obstacles transparent",

    Default = GetSetting("MirageTransparency_Save", false),
    Callback = function(I)
        _G.can = I


        _G.SaveData["MirageTransparency_Save"] = I


        SaveSettings()


        if not I then
            pcall(function()
                local mystic = workspace.Map:FindFirstChild("MysticIsland")
                if mystic then
                    for _, e in pairs(mystic:GetChildren()) do
                        if e:IsA("BasePart") then e.Transparency = 0 end
                    end
                end
            end)
        end
    end,
})

task.spawn(function()
    while task.wait(1) do
        if _G.can then
            pcall(function()
                local mystic = workspace.Map:FindFirstChild("MysticIsland")
                if mystic then
                    for _, e in pairs(mystic:GetChildren()) do
                        if e.Name == "Part" then
                            if e:IsA("MeshPart") then
                                e.Transparency = 0
                            else
                                e.Transparency = 1
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Event:AddToggle({
        Name = "Auto Tween Advanced Fruit Dealer",
    Description = "Fly to the advanced fruit dealer in Mirage",

    Default = GetSetting("AutoTweenAdvancedDealer_Save", false),
    Callback = function(I)
        _G.Addealer = I


        _G.SaveData["AutoTweenAdvancedDealer_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(1) do
        if _G.Addealer then
            pcall(function()


                local npcs = game:GetService("ReplicatedStorage"):FindFirstChild("NPCs")
                if npcs then
                    for _, e in pairs(npcs:GetChildren()) do
                        if e.Name == "Advanced Fruit Dealer" and e:FindFirstChild("HumanoidRootPart") then
                            if _tp then
                                _tp(e.HumanoidRootPart.CFrame)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Event:AddToggle({
        Name = "Auto Collect Mirage Chest",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.FarmChestM = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                if _G.FarmChestM then
                        pcall(function()
                                if workspace.Map.MysticIsland.Chests:FindFirstChild("DiamondChest") or workspace.Map.MysticIsland.Chests:FindFirstChild("FragChest") then
                                        local I = game:GetService("CollectionService");
                                        local e = game:GetService("Players");
                                        local K = e.LocalPlayer;
                                        local n = K.Character or K.CharacterAdded:Wait();
                                        if not n then
                                                return;
                                        end;
                                        local d = (n:GetPivot()).Position;
                                        local z = I:GetTagged("_ChestTagged");
                                        local H, F = math.huge, nil;
                                        for I = 1, #z, 1 do
                                                local e = z[I];
                                                local K = ((e:GetPivot()).Position - d).Magnitude;
                                                if not SelectedIsland or e:IsDescendantOf(SelectedIsland) then
                                                        if not e:GetAttribute("IsDisabled") and K < H then
                                                                H = K;
                                                                F = e;
                                                        end;
                                                end;
                                        end;
                                        if F then
                                                _tp(F:GetPivot());
                                        end;
                                end;
                        end);
                end;
        end;
end);
        Event:AddSection({"Volcanic Magnet"});

Event:AddToggle({
    Name = "Auto Craft Volcanic Magnet",
    Description = "turn on for auto farm material and craft volcanic magnet & stop when you have 1 volcanic magnet",
    Default = false,
    Callback = function(I)
        _G.CraftVM = I;
    end,
});

Event:AddButton({
    Name = "Craft Volcanic Magnet",
    Description = "",
    Callback = function()

        pcall(function()
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer("VolcanicMagnet")
    end)
    end
});

task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.CraftVM then

                if GetM("Volcanic Magnet") < 1 then


                    if GetM("Scrap Metal") >= 10 and GetM("Blaze Ember") >= 15 then
                        commF:FireServer("Notify", "<Color=Yellow>Crafted <Volcanic Magnet><Color=/>")


                    elseif GetM("Scrap Metal") < 10 then
                        local I = GetConnectionEnemies("Forest Pirate");
                        if I then
                            repeat
                                task.wait();
                                G.Kill(I, _G.CraftVM);
                            until not _G.CraftVM or not I.Parent or I.Humanoid.Health <= 0 or GetM("Scrap Metal") >= 10;
                        else

                            _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
                        end;


                    elseif GetM("Blaze Ember") < 15 then

                        local startTime = tick()
                        repeat
                            commF:InvokeServer("requestEntrance", Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625))
                            task.wait(0.1)
                        until (tick() - startTime) >= 1 or not _G.CraftVM


                        repeat
                            task.wait();
                            _G.FarmBlazeEM = true;
                        until not _G.CraftVM or GetM("Blaze Ember") >= 15;
                        _G.FarmBlazeEM = false;
                    end;
                end;
            end;
        end);
    end;
end);
Event:AddSection({"Prehistoric Island"});
Event:AddToggle({
    Name = "Auto Find Prehistoric Island",
    Description = "",

    Default = GetSetting("PrehistoricFinder_Save", false),
    Callback = function(I)
        _G.Prehis_Find = I


        _G.SaveData["PrehistoricFinder_Save"] = I
        SaveSettings()
    end,
})

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.Prehis_Find then
            pcall(function()

                if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then

                    local I = CheckBoat()


                    if I and I:FindFirstChild("VehicleSeat") and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        local dist = (plr.Character.HumanoidRootPart.Position - I.VehicleSeat.Position).Magnitude
                        if dist > 2500 then
                            I = nil
                        end
                    end


                    if not I then
                        local DealerPos = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(DealerPos)

                        if (DealerPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            commF:InvokeServer("BuyBoat", _G.SelectedBoat)
                        end
                    else

                        if plr.Character.Humanoid.Sit == false then
                            local seatCF = I.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(seatCF)
                        else

                            local TargetPos = CFrame.new(-10000000, 31, 37016.25)

                            if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                _tp(CFrame.new(-10000000, 150, 37016.25))
                            else
                                _tp(TargetPos)
                            end


                            if workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") or not _G.Prehis_Find then
                                plr.Character.Humanoid.Sit = false
                            end
                        end
                    end
                else

                    local Island = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")

                    if (Island.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        _tp(Island.CFrame)
                    end


                    if workspace.Map:FindFirstChild("PrehistoricIsland", true) or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
                        local promptPart = workspace.Map.PrehistoricIsland.Core:FindFirstChild("ActivationPrompt")
                        if promptPart and promptPart:FindFirstChild("ProximityPrompt") then
                            if plr:DistanceFromCharacter(promptPart.Position) <= 150 then
                                fireproximityprompt(promptPart.ProximityPrompt, math.huge)

                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                task.wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                            end
                            _tp(promptPart.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)
Event:AddToggle({
    Name = "Auto Event Prehistoric Island",
    Description = "",

    Default = GetSetting("AutoEventPrehistoric_Save", false),
    Callback = function(I)

        _G.PrehistoricEvent = I
        _G.Prehis_Skills = I


        _G.SaveData["AutoEventPrehistoric_Save"] = I
        SaveSettings()


        if I then
            local RunService = game:GetService("RunService")
            task.spawn(function()

                while _G.Prehis_Skills do
                    local char = game.Players.LocalPlayer.Character
                    if char then
                        for _, v in pairs(char:GetChildren()) do
                            if v:IsA("BasePart") and v.CanCollide then
                                v.CanCollide = false
                            end
                        end
                    end
                    RunService.Stepped:Wait()
                end
            end)
        end
    end,
})

task.spawn(function()
    while task.wait(1.5) do
        if _G.Prehis_Skills then
            pcall(function()

                local MapIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland")

                if MapIsland then

                    local core = MapIsland:FindFirstChild("Core")
                    if core and core:FindFirstChild("InteriorLava") then
                        core.InteriorLava:Destroy()
                    end


                    for _, obj in pairs(MapIsland:GetDescendants()) do

                        if (obj:IsA("Part") or obj:IsA("MeshPart")) then
                            if obj.Name == "Lava" or obj.Name == "LavaPart" or obj.Name:lower():find("magma") then
                                obj:Destroy()
                            end
                        end


                        if obj.Name == "TouchInterest" and obj.Parent then
                            if not obj.Parent.Name:find("TrialTeleport") then
                                obj.Parent:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        if _G.Prehis_Skills then
            pcall(function()
                local plr = game.Players.LocalPlayer



                if workspace.Enemies:FindFirstChild("Lava Golem") then
                    local enemy = nil


                    pcall(function()

                         if GetConnectionEnemies then
                            enemy = GetConnectionEnemies("Lava Golem")
                         else

                            enemy = workspace.Enemies["Lava Golem"]
                         end
                    end)

                    if enemy and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            if enemy:FindFirstChild("HumanoidRootPart") and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then

                                _tp(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                plr.Character.HumanoidRootPart.Velocity = Vector3.zero
                            end


                            if G and G.Kill then
                                G.Kill(enemy, _G.Prehis_Skills)
                            end
                        until not _G.Prehis_Skills or not enemy.Parent or enemy.Humanoid.Health <= 0
                    end
                end


                local core = game.Workspace.Map:FindFirstChild("PrehistoricIsland") and game.Workspace.Map.PrehistoricIsland:FindFirstChild("Core")

                if core and core:FindFirstChild("VolcanoRocks") then
                    for _, rock in pairs(core.VolcanoRocks:GetChildren()) do
                        if rock:FindFirstChild("VFXLayer") then
                            local layer = rock.VFXLayer
                            if layer:FindFirstChild("At0") and layer.At0:FindFirstChild("Glow") and layer.At0.Glow.Enabled == true then

                                repeat
                                    task.wait()

                                    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                        local safePosition = layer.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                                        _tp(safePosition)
                                        plr.Character.HumanoidRootPart.Velocity = Vector3.zero
                                    end

                                    if plr:DistanceFromCharacter(layer.CFrame.Position) <= 200 then
                                        MousePos = layer.CFrame.Position


                                        local VIM = game:GetService("VirtualInputManager")
                                        VIM:SendKeyEvent(true, "Z", false, game)
                                        VIM:SendKeyEvent(true, "X", false, game)
                                        VIM:SendKeyEvent(true, "C", false, game)

                                        if Useskills then
                                            Useskills("Melee", "Z")
                                            Useskills("Melee", "X")
                                            Useskills("Melee", "C")
                                            Useskills("Blox Fruit", "Z")
                                            Useskills("Blox Fruit", "X")
                                            Useskills("Blox Fruit", "C")
                                        end
                                    end

                                until not _G.Prehis_Skills or layer.At0.Glow.Enabled == false or not rock.Parent
                            end
                        end
                    end
                end
            end)
        else
            task.wait(1)
        end
    end
end)

Event:AddButton({
    Name = "Remove Lava",
    Description = "",
    Callback = function()

        for _, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Lava" then
                v:Destroy()
            end
        end


        for _, v in pairs(game.ReplicatedStorage:GetDescendants()) do
            if v.Name == "Lava" then
                v:Destroy()
            end
        end
    end
})

Event:AddToggle({
    Name = "Auto Collect Dino Bones",
    Description = "",
    Default = GetSetting("DinoBones_Save", false),
    Callback = function(I)
        _G.Prehis_DB = I
        _G.SaveData["DinoBones_Save"] = I
        SaveSettings()
    end,
})

Event:AddToggle({
    Name = "Auto Collect Dragon Eggs",
    Description = "",
    Default = GetSetting("DragonEggs_Save", false),
    Callback = function(I)
        _G.Prehis_DE = I
        _G.SaveData["DragonEggs_Save"] = I
        SaveSettings()
    end,
})

Event:AddToggle({
    Name = "Auto Reset When Complete Volcano",
    Description = "",
    Default = GetSetting("ResetVolcano_Save", false),
    Callback = function(I)
        _G.ResetPH = I
        _G.SaveData["ResetVolcano_Save"] = I
        SaveSettings()
    end,
})

task.spawn(function()
    task.wait(0.1)
    while task.wait() do
        pcall(function()
            local FoundTarget = false


            if _G.Prehis_DE then
                local MapIsland = workspace.Map:FindFirstChild("PrehistoricIsland")
                if MapIsland and MapIsland.Core:FindFirstChild("SpawnedDragonEggs") then
                    local Egg = MapIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg")
                    if Egg and Egg:FindFirstChild("Molten") then
                        FoundTarget = true
                        _G.Collecting = true
                        _tp(Egg.Molten.CFrame)
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Egg.Molten.Position).Magnitude <= 15 then
                            fireproximityprompt(Egg.Molten.ProximityPrompt, 30)
                        end
                    end
                end
            end


            if _G.Prehis_DB and not FoundTarget then
                local Bone = workspace:FindFirstChild("DinoBone")
                if Bone then
                    FoundTarget = true
                    _G.Collecting = true
                    _tp(Bone.CFrame)
                end
            end

            if not FoundTarget then
                _G.Collecting = false
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.ResetPH then
                local MapIsland = workspace.Map:FindFirstChild("PrehistoricIsland")
                local EventEnded = MapIsland and MapIsland:FindFirstChild("TrialTeleport") and MapIsland.TrialTeleport:FindFirstChild("TouchInterest")

                if EventEnded then
                    task.wait(4.5)


                    while true do
                        local ShouldWait = false

                        if _G.Prehis_DE and MapIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then
                            ShouldWait = true
                        end

                        if _G.Prehis_DB and workspace:FindFirstChild("DinoBone") then
                            ShouldWait = true
                        end

                        if _G.Collecting then
                            ShouldWait = true
                        end

                        if ShouldWait then
                            task.wait(0.5)
                        else
                            break
                        end
                    end

                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    task.wait(8)
                end
            end
        end)
    end
end)
end

_G.DangerSc = _G.DangerSc or "Lv 1"
CFrameSelectedZone = nil
Event:AddSection({"Sail Rough Sea (Auto)"})
Event:AddDropdown({
    Name = "Select Level Sea",
    Description = "Pick danger zone level",
    Options = {"Lv 1", "Lv 2", "Lv 3", "Lv 4", "Lv 5", "Lv 6", "Lv Infinite"},
    Default = _G.DangerSc,
    Multi = false,
    Callback = function(I)
        _G.DangerSc = I
    end,
})
Event:AddToggle({
    Name = "Auto Sail Rough Sea",
    Description = "Buy boat and sail to selected danger zone",
    Default = false,
    Callback = function(I)
        _G.SailBoats = I
    end,
})
task.spawn(function()
    while task.wait(0.2) do
        pcall(function()
            if _G.SailBoats then
                local boat = CheckBoat and CheckBoat() or nil
                if not boat then
                    local BoatDealerPos = CFrame.new(-16927.451, 9.086, 433.864)
                    TeleportToTarget(BoatDealerPos)
                    if (BoatDealerPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        commF:InvokeServer("BuyBoat", _G.SelectedBoat or "Beast Hunter")
                    end
                elseif boat then

                    if _G.DangerSc == "Lv 1" then
                        CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143)
                    elseif _G.DangerSc == "Lv 2" then
                        CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032)
                    elseif _G.DangerSc == "Lv 3" then
                        CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774)
                    elseif _G.DangerSc == "Lv 4" then
                        CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
                    elseif _G.DangerSc == "Lv 5" then
                        CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
                    elseif _G.DangerSc == "Lv 6" then
                        CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
                    elseif _G.DangerSc == "Lv Infinite" then
                        CFrameSelectedZone = CFrame.new(-1E7, 31, 37016.25)
                    end
                    if plr.Character.Humanoid.Sit == false then
                        _tp(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                    else
                        if CFrameSelectedZone then

                            local function hasThreat()
                                return (CheckEnemiesBoat and CheckEnemiesBoat())
                                    or (CheckTerrorShark and CheckTerrorShark())
                                    or (CheckPirateGrandBrigade and CheckPirateGrandBrigade())
                            end
                            if hasThreat() then
                                _tp(CFrameSelectedZone * CFrame.new(0, 150, 0))
                            else
                                _tp(CFrameSelectedZone)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            for _, boat in pairs(workspace.Boats:GetChildren()) do
                for _, part in pairs(boat:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.AutofindKitIs then
                            part.CanCollide = false
                        else
                            part.CanCollide = true
                        end
                    end
                end
            end
        end)
    end
end)

Event:AddSection({"Sea Stack Status"})

local SeaStackStatus = {
    Mirage = Event:AddParagraph({Title = "Mirage Status", Content = "N/A"}),
    Kitsune = Event:AddParagraph({Title = "Kitsune Status", Content = "N/A"}),
    Prehistoric = Event:AddParagraph({Title = "Prehistoric Status", Content = "N/A"}),
    Frozen = Event:AddParagraph({Title = "Frozen Status", Content = "N/A"}),
}

function SetSeaStackStatus(paragraph, isSpawned, spawnedText, missingText)
    if paragraph and paragraph.SetContent then
        paragraph:SetContent(isSpawned and spawnedText or missingText)
    end
end

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
            local map = workspace:FindFirstChild("Map")

            SetSeaStackStatus(SeaStackStatus.Mirage, map and map:FindFirstChild("MysticIsland"), "Mirage Island Spawning", "Mirage Island Not Spawn")
            SetSeaStackStatus(SeaStackStatus.Kitsune, locations and locations:FindFirstChild("Kitsune Island"), "Kitsune Island Spawning", "Kitsune Island Not Spawn")
            SetSeaStackStatus(SeaStackStatus.Prehistoric, locations and locations:FindFirstChild("Prehistoric Island"), "Prehistoric Island Spawning", "Prehistoric Island Not Spawn")
            SetSeaStackStatus(SeaStackStatus.Frozen, locations and locations:FindFirstChild("Frozen Dimension"), "Frozen Dimension Spawning", "Frozen Dimension Not Spawn")
        end)
    end
end)

function BuySelectedSeaBoat()
    local boat = CheckBoat()
    if boat then return boat end

    local boatDealer = CFrame.new(-16927.451, 9.086, 433.864)
    TeleportToTarget(boatDealer)
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and (boatDealer.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
        commF:InvokeServer("BuyBoat", _G.SelectedBoat or "Guardian")
    end
    return CheckBoat()
end

function SailToSeaStack(targetCFrame, enabledFlag, spawnedCheck)
    local boat = BuySelectedSeaBoat()
    if not boat or not boat:FindFirstChild("VehicleSeat") or not plr.Character or not plr.Character:FindFirstChild("Humanoid") then
        return
    end
    if not plr.Character.Humanoid.Sit then
        _tp(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
        return
    end

    repeat
        task.wait()
        if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
            _tp(targetCFrame * CFrame.new(0, 150, 0))
        else
            _tp(targetCFrame)
        end
    until not _G[enabledFlag] or spawnedCheck() or not plr.Character or not plr.Character:FindFirstChild("Humanoid") or not plr.Character.Humanoid.Sit
end

if World3 then
Event:AddSection({"Summon Sea Events"})

Event:AddToggle({
    Name = "Summon Prehistoric Island",
    Description = "Need Volcanic Magnet - sails to summon position",
    Default = false,
    Callback = function(I)
        _G.SummonPrehistoricIsland = I
    end,
})
Event:AddToggle({
    Name = "Summon Frozen Dimension",
    Description = "Sails to summon position",
    Default = false,
    Callback = function(I)
        _G.SummonForzenDimension = I
    end,
})
Event:AddToggle({
    Name = "Summon Kitsune Island",
    Description = "Sails to summon position",
    Default = false,
    Callback = function(I)
        _G.SummonKitsuneIsland = I
    end,
})

Event:AddSection({"Tween To Islands"})

Event:AddToggle({
    Name = "Tween To Prehistoric Island",
    Description = "Teleport when Prehistoric Island spawns",
    Default = false,
    Callback = function(I)
        _G.TweenToPrehistoricIsland = I
    end,
})
Event:AddToggle({
    Name = "Tween To Kitsune Island",
    Description = "Teleport to Kitsune Island when found",
    Default = false,
    Callback = function(I)
        _G.TweenToKitsuneIsland = I
        _G.tweenShrine = I
    end,
})
Event:AddToggle({
    Name = "Tween To Mirage Island",
    Description = "Teleport to Mirage Island when found",
    Default = false,
    Callback = function(I)
        _G.TweenToMirageIsland = I
        _G.FindMirage = I
    end,
})

Event:AddSection({"Island Features"})

Event:AddToggle({
    Name = "Auto Kill Lava Golem",
    Description = "Auto attack Lava Golem on Prehistoric Island",
    Default = false,
    Callback = function(I)
        _G.AutoKillLavaGolem = I
    end,
})
Event:AddToggle({
    Name = "Auto Collect Azure Ember",
    Description = "Collect Azure Ember on Kitsune Island",
    Default = false,
    Callback = function(I)
        _G.AutoCollectAzureEmber = I
        _G.Collect_Ember = I
    end,
})

task.spawn(function()
    while task.wait(0.2) do
        pcall(function()
            local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")

            if _G.SummonPrehistoricIsland and World3 then
                SailToSeaStack(CFrame.new(-148073.359, 8.99999523, 7721.05078), "SummonPrehistoricIsland", function()
                    return locations and locations:FindFirstChild("Prehistoric Island")
                end)
            end
            if _G.SummonForzenDimension and World3 then
                SailToSeaStack(CFrame.new(-148073.359, 8.99999523, 7721.05078), "SummonForzenDimension", function()
                    return locations and locations:FindFirstChild("Frozen Dimension")
                end)
            end
            if _G.SummonKitsuneIsland and World3 then
                SailToSeaStack(CFrame.new(-44541.7617, 30.0003204, -1244.8584), "SummonKitsuneIsland", function()
                    return locations and locations:FindFirstChild("Kitsune Island")
                end)
            end
            if _G.TweenToPrehistoricIsland and locations and locations:FindFirstChild("Prehistoric Island") then
                _tp(locations["Prehistoric Island"].CFrame)
            end
            if _G.TweenToFrozenDimension and locations and locations:FindFirstChild("Frozen Dimension") then
                _tp(locations["Frozen Dimension"].CFrame)
            end
            if _G.TweenToKitsuneIsland then
                local shrine = workspace.Map:FindFirstChild("KitsuneIsland") and workspace.Map.KitsuneIsland:FindFirstChild("ShrineActive") and workspace.Map.KitsuneIsland.ShrineActive:FindFirstChild("NeonShrinePart")
                if shrine then
                    _tp(shrine.CFrame * CFrame.new(0, 0, 10))
                elseif locations and locations:FindFirstChild("Kitsune Island") then
                    _tp(locations["Kitsune Island"].CFrame * CFrame.new(0, 100, 0))
                end
            end
            if _G.TweenToMirageIsland and workspace.Map:FindFirstChild("MysticIsland") then
                _tp(workspace.Map.MysticIsland.WorldPivot)
            end
            if _G.AutoCollectAzureEmber and workspace:FindFirstChild("EmberTemplate") and workspace.EmberTemplate:FindFirstChild("Part") then
                _tp(workspace.EmberTemplate.Part.CFrame)
            end
            if _G.AutoKillLavaGolem and workspace.Enemies:FindFirstChild("Lava Golem") then
                for _, mob in pairs(workspace.Enemies:GetChildren()) do
                    if mob.Name == "Lava Golem" and G.Alive(mob) then
                        G.Kill(mob, _G.AutoKillLavaGolem)
                    end
                end
            end
        end)
    end
end)

end

local Http = game:GetService("HttpService")
local ServerBrowser = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser")

function Hop()
    local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
    local success, data = pcall(function()
        return Http:JSONDecode(_ZX_HttpGet(url))
    end)

    if not success or not data or not data.data then
        warn("Failed to fetch servers")
        return
    end

    local target = nil
    for _, server in pairs(data.data) do
        if server and server.playing and server.maxPlayers then
            if server.playing < server.maxPlayers then
                target = server
                break
            end
        end
    end

    if not target then
        warn("No server found")
        return
    end

    for i = 1, 3 do
        task.spawn(function()
            pcall(function()
                ServerBrowser:InvokeServer("teleport", target.id)
            end)
        end)
    end
end

if World2 or World3 then
Event:AddSection({"configures skills for maritime events (Melee)"})

Event:AddToggle({
    Name = "Skill Z",
    Default = GetSetting("Skill_Melee_Z", true),
    Callback = function(I)
        _G.SelectedSkills["Melee"]["Z"] = I
        _G.SaveData["Skill_Melee_Z"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill X",
    Default = GetSetting("Skill_Melee_X", true),
    Callback = function(I)
        _G.SelectedSkills["Melee"]["X"] = I
        _G.SaveData["Skill_Melee_X"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill C",
    Default = GetSetting("Skill_Melee_C", true),
    Callback = function(I)
        _G.SelectedSkills["Melee"]["C"] = I
        _G.SaveData["Skill_Melee_C"] = I
        SaveSettings()
    end
})

Event:AddSection({"Sword"})

Event:AddToggle({
    Name = "Skill Z",
    Default = GetSetting("Skill_Sword_Z", true),
    Callback = function(I)
        _G.SelectedSkills["Sword"]["Z"] = I
        _G.SaveData["Skill_Sword_Z"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill X",
    Default = GetSetting("Skill_Sword_X", true),
    Callback = function(I)
        _G.SelectedSkills["Sword"]["X"] = I
        _G.SaveData["Skill_Sword_X"] = I
        SaveSettings()
    end
})

Event:AddSection({"Gun"})

Event:AddToggle({
    Name = "Skill Z",
    Default = GetSetting("Skill_Gun_Z", true),
    Callback = function(I)
        _G.SelectedSkills["Gun"]["Z"] = I
        _G.SaveData["Skill_Gun_Z"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill X",
    Default = GetSetting("Skill_Gun_X", true),
    Callback = function(I)
        _G.SelectedSkills["Gun"]["X"] = I
        _G.SaveData["Skill_Gun_X"] = I
        SaveSettings()
    end
})

Event:AddSection({"Blox Fruit"})

Event:AddToggle({
    Name = "Skill Z",
    Default = GetSetting("Skill_Fruit_Z", true),
    Callback = function(I)
        _G.SelectedSkills["Blox Fruit"]["Z"] = I
        _G.SaveData["Skill_Fruit_Z"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill X",
    Default = GetSetting("Skill_Fruit_X", true),
    Callback = function(I)
        _G.SelectedSkills["Blox Fruit"]["X"] = I
        _G.SaveData["Skill_Fruit_X"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill C",
    Default = GetSetting("Skill_Fruit_C", true),
    Callback = function(I)
        _G.SelectedSkills["Blox Fruit"]["C"] = I
        _G.SaveData["Skill_Fruit_C"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill V",
    Default = GetSetting("Skill_Fruit_V", true),
    Callback = function(I)
        _G.SelectedSkills["Blox Fruit"]["V"] = I
        _G.SaveData["Skill_Fruit_V"] = I
        SaveSettings()
    end
})

Event:AddToggle({
    Name = "Skill F",
    Default = GetSetting("Skill_Fruit_F", true),
    Callback = function(I)
        _G.SelectedSkills["Blox Fruit"]["F"] = I
        _G.SaveData["Skill_Fruit_F"] = I
        SaveSettings()
    end
})
end
Maestry:AddSection({"Mastery"})

local islands = { "Cake", "Bone" }
Maestry:AddDropdown({
    Name = "Select Method",
    Description = "",
    Options = islands,
    Default = "Cake",
    Callback = function(I)
        SelectIsland = I
    end
})

local function GetNearestMobFromList(list)
    local plr = game.Players.LocalPlayer
    local root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not root then return nil end

    local nearest, dist = nil, math.huge
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if table.find(list, mob.Name)
        and mob:FindFirstChild("HumanoidRootPart")
        and mob:FindFirstChild("Humanoid")
        and mob.Humanoid.Health > 0 then
            local d = (mob.HumanoidRootPart.Position - root.Position).Magnitude
            if d < dist then
                dist = d
                nearest = mob
            end
        end
    end
    return nearest
end

local function HasAliveMob(list)
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if table.find(list, mob.Name)
        and mob:FindFirstChild("Humanoid")
        and mob.Humanoid.Health > 0 then
            return true
        end
    end
    return false
end

Maestry:AddToggle({
    Name = "Auto Farm Mastery Fruit",
    Description = "",

    Default = GetSetting("FarmMastery_Dev", false),
    Callback = function(I)
        _G.FarmMastery_Dev = I


        _G.SaveData["FarmMastery_Dev"] = I
        SaveSettings()
    end
})
task.spawn(function()
    RunSer.RenderStepped:Connect(function()
        if _G.FarmMastery_Dev then
            pcall(function()
                for _, e in pairs(plr.PlayerGui.Notifications:GetChildren()) do
                    if e.Name == "NotificationTemplate" and string.find(e.Text, "Skill locked!") then
                        e:Destroy()
                    end
                end
            end)
        end
    end)
end)

task.spawn(function()
    while task.wait(Sec) do
        if _G.FarmMastery_Dev then
            pcall(function()

                local list = (SelectIsland == "Cake" and X or P)
                local mob = GetNearestMobFromList(list)

                if mob then
                    HealthM = mob.Humanoid.MaxHealth * 0.7

                    repeat
                        task.wait()

                        if not mob.Parent
                        or not mob:FindFirstChild("Humanoid")
                        or mob.Humanoid.Health <= 0
                        or not mob:FindFirstChild("HumanoidRootPart") then
                            mob = GetNearestMobFromList(list)
                            if not mob then break end
                        end

                        MousePos = mob.HumanoidRootPart.Position
                        G.Mas(mob, _G.FarmMastery_Dev)

                        if not HasAliveMob(list) then break end

                    until not _G.FarmMastery_Dev

                else
                    if SelectIsland == "Cake" then
                        _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                    else
                        _tp(CFrame.new(-9495.6806, 453.5862, 5977.3486))
                    end
                end

            end)
        end
    end
end)

Maestry:AddToggle({
    Name = "Auto Farm Mastery Gun",
    Description = "",
    Default = false,
    Callback = function(I)
        _G.FarmMastery_G = I
    end
})

task.spawn(function()
    while task.wait(Sec) do
        if _G.FarmMastery_G then
            pcall(function()

                local list = (SelectIsland == "Cake" and X or P)
                local mob = GetNearestMobFromList(list)

                if mob then
                    HealthM = mob.Humanoid.MaxHealth * 0.7

                    repeat
                        task.wait()

                        if not mob.Parent
                        or not mob:FindFirstChild("Humanoid")
                        or mob.Humanoid.Health <= 0
                        or not mob:FindFirstChild("HumanoidRootPart") then
                            mob = GetNearestMobFromList(list)
                            if not mob then break end
                        end

                        MousePos = mob.HumanoidRootPart.Position
                        G.Masgun(mob, _G.FarmMastery_G)

                        local modules = replicated:FindFirstChild("Modules")
                        local K = modules:FindFirstChild("Net")
                        local shoot = K:FindFirstChild("RE/ShootGunEvent")
                        local tool = plr.Character:FindFirstChildOfClass("Tool")

                        if tool and tool.Name == "Skull Guitar" then
                            SoulGuitar = true
                            tool.RemoteEvent:FireServer("TAP", MousePos)
                        elseif tool then
                            SoulGuitar = false
                            shoot:FireServer(MousePos, { mob.HumanoidRootPart })
                        end

                        if not HasAliveMob(list) then break end

                    until not _G.FarmMastery_G

                    SoulGuitar = false

                else
                    if SelectIsland == "Cake" then
                        _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                    else
                        _tp(CFrame.new(-9495.6806, 453.5862, 5977.3486))
                    end
                end

            end)
        end
    end
end)

Maestry:AddToggle({
    Name = "Fruit Skill Z",
    Default = false,
    Callback = function(v)
        _G.FruitSkills.Z = v
    end,
})

Maestry:AddToggle({
    Name = "Fruit Skill X",
    Default = false,
    Callback = function(v)
        _G.FruitSkills.X = v
    end,
})

Maestry:AddToggle({
    Name = "Fruit Skill C",
    Default = false,
    Callback = function(v)
        _G.FruitSkills.C = v
    end,
})

Maestry:AddToggle({
    Name = "Fruit Skill V",
    Default = false,
    Callback = function(v)
        _G.FruitSkills.V = v
    end,
})

Maestry:AddToggle({
    Name = "Fruit Skill F",
    Default = false,
    Callback = function(v)
        _G.FruitSkills.F = v
    end,
})

Maestry:AddSection({"Use Fruit Skills (During Farm)"})
Maestry:AddToggle({ Name = "Use Skill Z (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.Z = v end })
Maestry:AddToggle({ Name = "Use Skill X (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.X = v end })
Maestry:AddToggle({ Name = "Use Skill C (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.C = v end })
Maestry:AddToggle({ Name = "Use Skill V (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.V = v end })
Maestry:AddToggle({ Name = "Use Skill F (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.F = v end })

if World2 then
Race:AddSection({"Upgrade Races"});
Race:AddToggle({
    Name = "Auto Mink V2/V3",
    Description = "",
    Default = false,
    Callback = function(I)
        G.Auto_Mink = I;
    end,
});
task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if G.Auto_Mink then
                if commF:InvokeServer("Alchemist", "1") ~= 2 then
                    if commF:InvokeServer("Alchemist", "1") == 0 then
                        commF:InvokeServer("Alchemist", "2");
                    elseif commF:InvokeServer("Alchemist", "1") == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            tp(workspace.Flower1.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            tp(workspace.Flower2.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local I = GetConnectionEnemies("Swan Pirate");
                            if I then
                                repeat task.wait();
                                    G.Kill(I, G.Auto_Mink);
                                until GetBP("Flower 3") or not I.Parent or I.Humanoid.Health <= 0 or G.Auto_Mink == false;
                            else
                                tp(CFrame.new(980,121,1287));
                            end;
                        end;
                    elseif commF:InvokeServer("Alchemist", "1") == 2 then
                        commF:InvokeServer("Alchemist", "3");
                    end;
                elseif commF:InvokeServer("Wenlocktoad", "1") == 0 then
                    commF:InvokeServer("Wenlocktoad", "2");
                elseif commF:InvokeServer("Wenlocktoad", "1") == 1 then
                    G.AutoFarmChest = true;
                else
                    G.AutoFarmChest = false;
                end;
            end;
        end);
    end;
end);
Race:AddToggle({
    Name = "Auto Human V2/V3",
    Description = "",
    Default = false,
    Callback = function(I)
        G.Auto_Human = I;
    end,
});
task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if G.Auto_Human then
                if commF:InvokeServer("Alchemist", "1") ~= -2 then
                    if commF:InvokeServer("Alchemist", "1") == 0 then
                        commF:InvokeServer("Alchemist", "2");
                    elseif commF:InvokeServer("Alchemist", "1") == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            tp(workspace.Flower1.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            tp(workspace.Flower2.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local I = GetConnectionEnemies("Swan Pirate");
                            if I then
                                repeat task.wait();
                                    G.Kill(I, G.Auto_Human);
                                until plr.Backpack:FindFirstChild("Flower 3") or not I.Parent or I.Humanoid.Health <= 0 or G.Auto_Human == false;
                            else
                                tp(CFrame.new(980,121,1287));
                            end;
                        end;
                    elseif commF:InvokeServer("Alchemist", "1") == 2 then
                        commF:InvokeServer("Alchemist", "3");
                    end;
                elseif commF:InvokeServer("Wenlocktoad", "1") == 0 then
                    commF:InvokeServer("Wenlocktoad", "2");
                elseif commF:InvokeServer("Wenlocktoad", "1") == 1 then
                    local I = GetConnectionEnemies(F[1]);
                    if I then
                        repeat task.wait();
                            G.Kill(I, _G.Auto_Human);
                        until I.Humanoid.Health <= 0 or not I.Parent or not _G.Auto_Human;
                    else
                        _tp(CFrame.new(-2172,103,-4015));
                    end;

                    local e = GetConnectionEnemies(F[2]);
                    if e then
                        repeat task.wait();
                            G.Kill(e, _G.Auto_Human);
                        until e.Humanoid.Health <= 0 or not e.Parent or not _G.Auto_Human;
                    else
                        _tp(CFrame.new(2006,448,853));
                    end;

                    local K = GetConnectionEnemies(F[3]);
                    if K then
                        repeat task.wait();
                            G.Kill(K, _G.Auto_Human);
                        until K.Humanoid.Health <= 0 or not K.Parent or not G.Auto_Human;
                    else
                        tp(CFrame.new(-1576,198,13));
                    end;
                end;
            end;
        end);
    end;
end);

Race:AddToggle({
    Name = "Auto Angel V2/V3",
    Description = "",
    Default = false,
    Callback = function(I)
        G.Auto_Skypiea = I;
    end,
});
task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if G.Auto_Skypiea then
                if commF:InvokeServer("Alchemist", "1") ~= -2 then
                    if commF:InvokeServer("Alchemist", "1") == 0 then
                        commF:InvokeServer("Alchemist", "2");
                    elseif commF:InvokeServer("Alchemist", "1") == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            tp(workspace.Flower1.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            tp(workspace.Flower2.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local I = GetConnectionEnemies("Swan Pirate");
                            if I then
                                repeat task.wait();
                                    G.Kill(I, G.Auto_Skypiea);
                                until plr.Backpack:FindFirstChild("Flower 3") or not I.Parent or I.Humanoid.Health <= 0 or G.Auto_Skypiea == false;
                            else
                                tp(CFrame.new(980,121,1287));
                            end;
                        end;
                    elseif commF:InvokeServer("Alchemist", "1") == 2 then
                        commF:InvokeServer("Alchemist", "3");
                    end;
                elseif commF:InvokeServer("Wenlocktoad", "1") == 0 then
                    commF:InvokeServer("Wenlocktoad", "2");
                elseif commF:InvokeServer("Wenlocktoad", "1") == 1 then
                    for I, e in pairs(game.Players:GetChildren()) do
                        if e.Name ~= plr.Name and tostring(e.Data.Race.Value) == "Skypiea" then
                            repeat task.wait();
                                tp((e.HumanoidRootPart.CFrame * CFrame.new(0, 8, 0)) * CFrame.Angles(math.rad(-45), 0, 0));
                            until e.Humanoid.Health <= 0 or G.Auto_Skypiea == false;
                        end;
                    end;
                end;
            end;
        end);
    end;
end);

Race:AddToggle({
    Name = "Auto Shark V2/V3",
    Description = "",
    Default = false,
    Callback = function(I)
        G.Auto_Fish = I;
    end,
});
task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if G.Auto_Fish then
                if commF:InvokeServer("Alchemist", "1") ~= -2 then
                    if commF:InvokeServer("Alchemist", "1") == 0 then
                        commF:InvokeServer("Alchemist", "2");
                    elseif commF:InvokeServer("Alchemist", "1") == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            tp(workspace.Flower1.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            tp(workspace.Flower2.CFrame);
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local I = GetConnectionEnemies("Swan Pirate");
                            if I then
                                repeat task.wait();
                                    G.Kill(I, G.Auto_Fish);
                                until plr.Backpack:FindFirstChild("Flower 3") or not I.Parent or I.Humanoid.Health <= 0 or G.Auto_Fish == false;
                            else
                                tp(CFrame.new(980,121,1287));
                            end;
                        end;
                    elseif commF:InvokeServer("Alchemist", "1") == 2 then
                        commF:InvokeServer("Alchemist", "3");
                    end;
                elseif commF:InvokeServer("Wenlocktoad", "1") == 0 then
                    commF:InvokeServer("Wenlocktoad", "2");
                elseif commF:InvokeServer("Wenlocktoad", "1") == 1 then
                    warn("Sea Beast Soon");
                end;
            end;
        end);
    end;
end)
Race:AddSection({"Race upgrade v4 only in Sea 3"});
end
if World1 then
Race:AddSection({"only in Sea 2 or 3 to upgrade to Race"});
end
if World3 then
Race:AddSection({"Trials Quests / Misc V4"});
local K5 = Race:AddParagraph({ Title = " Tiers V4 Status ", Content = "" });
task.spawn(function()
        pcall(function()
                while task.wait(.2) do
                        K5:SetDesc(" Tiers - V4  :" .. (" " .. plr.Data.Race.C.Value));
                end;
        end);
end);
Race:AddToggle({
        Name = "Auto Look At Moon",
        Description = "",
        Default = false,
        Callback = function(I)
                LookM = I;
        end,
});

function MoveCamtoMoon()
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Lighting:GetMoonDirection() + workspace.CurrentCamera.CFrame.Position);
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position, Lighting:GetMoonDirection() + plr.Character.HumanoidRootPart.CFrame.Position);
end;
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if LookM then
                        MoveCamtoMoon();
                        task.wait(.1);
                        replicated.Remotes.CommE:FireServer("ActivateAbility");
                end;
        end;
end);
Race:AddToggle({
        Name = "Auto Pull Lever",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Lver = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.Lver then
                        pcall(function()
                                for I, e in pairs(workspace.Map["Temple of Time"]:GetDescendants()) do
                                        if e.Name == "ProximityPrompt" then
                                                fireproximityprompt(e, math.huge);
                                        end;
                                end;
                        end);
                end;
        end;
end);
Race:AddToggle({
        Name = "Auto Train V4",
        Description = "turn on for farm tier + auto upgrade your tier level",
        Default = false,
        Callback = function(I)
                _G.AcientOne = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AcientOne then
                                local I = {
                                                "Reborn Skeleton",
                                                "Living Zombie",
                                                "Demonic Soul",
                                                "Posessed Mummy",
                                        };
                                for e = 1, #I, 1 do
                                        if (plr.Character:FindFirstChild("RaceEnergy")).Value == 1 then
                                                vim1:SendKeyEvent(true, "Y", false, game);
                                                commF:InvokeServer("UpgradeRace", "Buy");
                                                _tp(CFrame.new(-8987.041015625, 215.86206054688, 5886.7104492188));
                                        elseif (plr.Character:FindFirstChild("RaceTransformed")).Value == false then
                                                local e = GetConnectionEnemies(I);
                                                if e then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(e, _G.AcientOne);
                                                        until _G.AcientOne == false or e.Humanoid.Health <= 0 or not e.Parent;
                                                else
                                                        _tp(CFrame.new(-9495.6806640625, 453.58624267578, 5977.3486328125));
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
Race:AddButton({ Name = "Teleport to Temple of Time", Description = "", Callback = function()
                commF:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.301757812, 102.62469482422));
        end });
Race:AddButton({ Name = "Teleport to Ancient One", Description = "", Callback = function()
                notween(CFrame.new(28981.552734375, 14888.426757812, -120.24584960938));
        end });
Race:AddButton({ Name = "Teleport to Ancient Clock", Description = "", Callback = function()
                notween(CFrame.new(29549, 15069, -88));
        end });
Race:AddToggle({
        Name = "Auto Teleport to Race Doors",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.TPDoor = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.TPDoor then
                                if tostring(plr.Data.Race.Value) == "Mink" then
                                        _tp(CFrame.new(29020.66015625, 14889.426757812, -379.2682800293));
                                elseif tostring(plr.Data.Race.Value) == "Fishman" then
                                        _tp(CFrame.new(28224.056640625, 14889.426757812, -210.58720397949));
                                elseif tostring(plr.Data.Race.Value) == "Cyborg" then
                                        _tp(CFrame.new(28492.4140625, 14894.426757812, -422.11001586914));
                                elseif tostring(plr.Data.Race.Value) == "Skypiea" then
                                        _tp(CFrame.new(28967.408203125, 14918.075195312, 234.31198120117));
                                elseif tostring(plr.Data.Race.Value) == "Ghoul" then
                                        _tp(CFrame.new(28672.720703125, 14889.127929688, 454.59616088867));
                                elseif tostring(plr.Data.Race.Value) == "Human" then
                                        _tp(CFrame.new(29237.294921875, 14889.426757812, -206.94955444336));
                                end;
                        end;
                end);
        end;
end);
Race:AddToggle({
        Name = "Auto Complete Trial Race",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Complete_Trials = I;
        end,
});
GetSeaBeastTrial = function()
                if not workspace.Map:FindFirstChild("FishmanTrial") then
                        return nil;
                end;
                if workspace._WorldOrigin.Locations:FindFirstChild("Trial of Water") then
                        FishmanTrial = workspace._WorldOrigin.Locations:FindFirstChild("Trial of Water");
                end;
                if FishmanTrial then
                        for I, e in next, workspace.SeaBeasts:GetChildren() do
                                if e:FindFirstChild("HumanoidRootPart") and (e.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
                                        if e.Health.Value > 0 then
                                                return e;
                                        end;
                                end;
                        end;
                end;
        end;
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Complete_Trials then
                                if tostring(plr.Data.Race.Value) == "Mink" then
                                        notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -20, 0));
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Complete_Trials then
                                if tostring(plr.Data.Race.Value) == "Fishman" then
                                        if GetSeaBeastTrial() then
                                                repeat
                                                        task.wait();
                                                        task.spawn(function()
                                                                _tp(CFrame.new((GetSeaBeastTrial()).HumanoidRootPart.Position.X, (game:GetService("Workspace")).Map["WaterBase-Plane"].Position.Y + 300, (GetSeaBeastTrial()).HumanoidRootPart.Position.Z));
                                                        end);
                                                        MousePos = (GetSeaBeastTrial()).HumanoidRootPart.Position;
                                                        Useskills("Melee", "Z");
                                                        Useskills("Melee", "X");
                                                        Useskills("Melee", "C");
                                                        task.wait(.1);
                                                        Useskills("Sword", "Z");
                                                        Useskills("Sword", "X");
                                                        task.wait(.1);
                                                        Useskills("Blox Fruit", "Z");
                                                        Useskills("Blox Fruit", "X");
                                                        Useskills("Blox Fruit", "C");
                                                        task.wait(.1);
                                                        Useskills("Gun", "Z");
                                                        Useskills("Gun", "X");
                                                until _G.Complete_Trials == false or not GetSeaBeastTrial();
                                        end;
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Complete_Trials then
                                if tostring(plr.Data.Race.Value) == "Cyborg" then
                                        _tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0, 500, 0));
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Complete_Trials then
                                if tostring(plr.Data.Race.Value) == "Skypiea" then
                                        notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame);
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(.1) do
                pcall(function()
                        if _G.Complete_Trials then
                                if tostring(plr.Data.Race.Value) == "Human" or tostring(plr.Data.Race.Value) == "Ghoul" then
                                        local I = { "Ancient Vampire", "Ancient Zombie" };
                                        local e = GetConnectionEnemies(I);
                                        if e then
                                                repeat
                                                        task.wait();
                                                        G.Kill(e, _G.Complete_Trials);
                                                until _G.Complete_Trials == false or not e.Parent or e.Humanoid.Health <= 0;
                                        end;
                                end;
                        end;
                end);
        end;
end);
Race:AddToggle({
        Name = "Auto Kill Player After Trial",
        Description = "turn on for kill player after the race trials",
        Default = false,
        Callback = function(I)
                _G.Defeating = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Defeating then
                                for I, e in pairs(workspace.Characters:GetChildren()) do
                                        if e.Name ~= plr.Name then
                                                if e.Humanoid.Health > 0 and (e:FindFirstChild("HumanoidRootPart") and (e.Parent and (Root.Position - e.HumanoidRootPart.Position).Magnitude <= 250)) then
                                                        repeat
                                                                task.wait();
                                                                EquipWeapon(_G.SelectWeapon);
                                                                _tp(e.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15));
                                                                sethiddenproperty(plr, "SimulationRadius", math.huge);
                                                        until _G.Defeating == false or e.Humanoid.Health <= 0 or not e.Parent or not e:FindFirstChild("HumanoidRootPart") or not e:FindFirstChild("Humanoid");
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
end
if World3 then
Dojo:AddSection({"Dojo Quest & Drago Race"});
Dojo:AddToggle({
        Name = "Auto Dojo Trainer",
        Description = "turn on for do dojo belt quest white to black",
        Default = false,
        Callback = function(I)
                _G.Dojoo = I;
        end,
});
function printBeltName(I)
        if type(I) == "table" and I.Quest.BeltName then
                return I.Quest.BeltName;
        end;
end;
task.spawn(function()
        while task.wait(Sec) do
                if _G.Dojoo then
                        pcall(function()
                                local I = { [1] = { NPC = "Dojo Trainer", Command = "RequestQuest" } };
                                local e = (replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(I));
                                local K = printBeltName(e);
                                if debug == false and (not e and not K) then
                                        _tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875));
                                        debug = true;
                                elseif debug == true and ((CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        if K == "White" then
                                                local I = GetConnectionEnemies("Skull Slayer");
                                                if I then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(I, _G.Dojoo);
                                                        until not e or not _G.Dojoo or not G.Alive(I);
                                                else
                                                        _tp(CFrame.new(-16759.58984375, 71.283767700195, 1595.3399658203));
                                                end;
                                        elseif K == "Yellow" then
                                                repeat
                                                        task.wait();
                                                        _G.SeaBeast1 = true;
                                                        _G.TerrorShark = true;
                                                        _G.Shark = true;
                                                        _G.Piranha = true;
                                                        _G.MobCrew = true;
                                                        _G.FishBoat = true;
                                                        _G.SailBoats = true;
                                                until not _G.Dojoo or not e;
                                                _G.SeaBeast1 = false;
                                                _G.TerrorShark = false;
                                                _G.Shark = false;
                                                _G.Piranha = false;
                                                _G.MobCrew = false;
                                                _G.FishBoat = false;
                                                _G.SailBoats = false;
                                        elseif K == "Green" then
                                                repeat
                                                        task.wait();
                                                        _G.SailBoats = true;
                                                until not _G.Dojoo or not e;
                                                _G.SailBoats = false;
                                        elseif K == "Purple" then
                                                repeat
                                                        task.wait();
                                                        _G.FarmEliteHunt = true;
                                                until not _G.Dojoo or not e;
                                                _G.FarmEliteHunt = false;
                                        elseif K == "Red" then
                                                repeat
                                                        task.wait();
                                                        _G.SailBoats = true;
                                                        _G.FishBoat = true;
                                                until not _G.Dojoo or not e;
                                                _G.SailBoats = false;
                                                _G.FishBoat = false;
                                        elseif K == "Black" then
                                                repeat
                                                        task.wait();
                                                        if workspace.Map:FindFirstChild("PrehistoricIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                                                                _G.Prehis_Find = true;
                                                                if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
                                                                        _G.Prehis_Skills = false;
                                                                        _G.Prehis_Find = true;
                                                                else
                                                                        _G.Prehis_Skills = true;
                                                                        _G.Prehis_Find = false;
                                                                end;
                                                        else
                                                                _G.Prehis_Find = true;
                                                                _G.Prehis_Skills = false;
                                                        end;
                                                until not _G.Dojoo or not e;
                                                _G.Prehis_Find = false;
                                                _G.Prehis_Skills = false;
                                        elseif K == "Orange" or K == "Blue" then
                                                return nil;
                                        end;
                                end;
                                if not e then
                                        debug = false;
                                        local I = { [1] = { NPC = "Dojo Trainer", Command = "ClaimQuest" } };
                                        (replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(I));
                                end;
                        end);
                end;
        end;
end);
Dojo:AddToggle({
        Name = "Auto Dragon Hunter",
        Description = "turn on for farm blaze ember + auto collect blaze ember",
        Default = false,
        Callback = function(I)
                _G.FarmBlazeEM = I;
        end,
});
checkQuesta = function()
                local I = { [1] = { Context = "Check" } };
                local e = nil;
                pcall(function()
                        local I = { [1] = { Context = "RequestQuest" } };
                        ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(I));
                end);
                local K, n = pcall(function()
                                e = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(I));
                        end);
                local d = false;
                local z;
                local H;
                local F;
                if e then
                        if e.Text then
                                d = true;
                                local I = e.Text;
                                if string.find(tostring(I), "Defeat") then
                                        F = 1;
                                        z = string.sub(tostring(I), 8, 9);
                                        z = tonumber(z);
                                        local e = { "Hydra Enforcer", "Venomous Assailant" };
                                        for e, K in pairs(e) do
                                                if string.find(I, K) then
                                                        H = K;
                                                        break;
                                                end;
                                        end;
                                elseif string.find(tostring(I), "Destroy") then
                                        z = 10;
                                        F = 2;
                                        H = nil;
                                end;
                        end;
                end;
                return d, H, z, F;
        end;
BackTODoJo = function()
                for I, e in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if e.Name == "NotificationTemplate" then
                                if string.find(e.Text, "Head back to the Dojo to complete more tasks") then
                                        return true;
                                end;
                        end;
                end;
                return false;
        end;
DragonMobClear = function(I, e, K)
                if workspace.Enemies:FindFirstChild(e) then
                        for K, n in pairs(workspace.Enemies:GetChildren()) do
                                if n.Name == e and G.Alive(n) then
                                        if I then
                                                G.Kill(n, I);
                                        end;
                                end;
                        end;
                else
                        _tp(K);
                end;
        end;
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if _G.FarmBlazeEM then
                        pcall(function()
                                local I, e, K, n = checkQuesta();
                                if I == true and not BackTODoJo() then
                                        if n == 1 then
                                                if e == "Hydra Enforcer" or e == "Venomous Assailant" then
                                                        repeat
                                                                task.wait();
                                                                DragonMobClear(true, e, CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492));
                                                        until not _G.FarmBlazeEM or not I or BackTODoJo();
                                                end;
                                        elseif n == 2 then
                                                if workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true) then
                                                        repeat
                                                                task.wait();
                                                                task.spawn(function()
                                                                        _tp((workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).CFrame * CFrame.new(4, 0, 0));
                                                                end);
                                                                if ((workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).Position - Root.Position).Magnitude <= 200 then
                                                                        MousePos = (workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).Position;
                                                                        Useskills("Melee", "Z");
                                                                        Useskills("Melee", "X");
                                                                        Useskills("Melee", "C");
                                                                        task.wait(.5);
                                                                        Useskills("Sword", "Z");
                                                                        Useskills("Sword", "X");
                                                                        task.wait(.5);
                                                                        Useskills("Blox Fruit", "Z");
                                                                        Useskills("Blox Fruit", "X");
                                                                        Useskills("Blox Fruit", "C");
                                                                        task.wait(.5);
                                                                        Useskills("Gun", "Z");
                                                                        Useskills("Gun", "X");
                                                                end;
                                                        until not _G.FarmBlazeEM or not I or BackTODoJo();
                                                end;
                                        end;
                                else
                                        _tp(CFrame.new(5813, 1208, 884));
                                        DragonMobClear(false, nil, nil);
                                end;
                        end);
                end;
        end;
end);
task.spawn(function()
        while task.wait(.1) do
                if _G.FarmBlazeEM then
                        pcall(function()
                                if workspace.EmberTemplate:FindFirstChild("Part") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame;
                                end;
                        end);
                end;
        end;
end);
Dojo:AddSection({"Draco Trial"});
GetQuestDracoLevel = function()
                local I = { [1] = { NPC = "Dragon Wizard", Command = "Upgrade" } };
                return (replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(I));
        end;
Dojo:AddToggle({
        Name = "Tween To Upgrade Draco Trial",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.UPGDrago = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.UPGDrago then
                                if GetQuestDracoLevel() == false then
                                        return nil;
                                elseif GetQuestDracoLevel() == true then
                                        if ((CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609)).Position - Root.Position).Magnitude >= 300 then
                                                _tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609));
                                        else
                                                _tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609));
                                                local I = { [1] = { NPC = "Dragon Wizard", Command = "Upgrade" } };
                                                (replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(I));
                                        end;
                                end;
                        end;
                end);
        end;
end);
Dojo:AddToggle({
        Name = "Auto race draco (V1)",
        Description = "turn on for auto quest1 auto prehistoric event + collect dragon eggs",
        Default = false,
        Callback = function(I)
                _G.DragoV1 = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.DragoV1 then
                                if GetM("Dragon Egg") <= 0 then
                                        repeat
                                                task.wait();
                                                _G.Prehis_Find = true;
                                                _G.Prehis_Skills = true;
                                                _G.Prehis_DE = true;
                                        until not _G.DragoV1 or GetM("Dragon Egg") >= 1;
                                        _G.Prehis_Find = false;
                                        _G.Prehis_Skills = false;
                                        _G.Prehis_DE = false;
                                end;
                        end;
                end);
        end;
end);
Dojo:AddToggle({
        Name = "Auto race draco (V2)",
        Description = "turn on for auto kill Forest Pirate & Collect fireflower",
        Default = false,
        Callback = function(I)
                _G.AutoFireFlowers = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoFireFlowers then
                        local I = workspace:FindFirstChild("FireFlowers");
                        local e = GetConnectionEnemies("Forest Pirate");
                        if e then
                                repeat
                                        task.wait();
                                        G.Kill(e, _G.AutoFireFlowers);
                                until not _G.AutoFireFlowers or not e.Parent or e.Humanoid.Health <= 0 or I;
                        else
                                _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
                        end;
                        if I then
                                for I, e in pairs(I:GetChildren()) do
                                        if e:IsA("Model") and e.PrimaryPart then
                                                local I = e.PrimaryPart.Position;
                                                local K = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                                                local n = (I - K).Magnitude;
                                                if n <= 100 then
                                                        vim1:SendKeyEvent(true, "E", false, game);
                                                        task.wait(1.5);
                                                        vim1:SendKeyEvent(false, "E", false, game);
                                                else
                                                        _tp(CFrame.new(I));
                                                end;
                                        end;
                                end;
                        end;
                end;
        end;
end);
Dojo:AddToggle({
        Name = "Auto race draco (V3)",
        Description = "turn on for sea event kill terror shark",
        Default = false,
        Callback = function(I)
                _G.DragoV3 = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.DragoV3 then
                                repeat
                                        task.wait();
                                        _G.DangerSc = "Lv Infinite";
                                        _G.SailBoats = true;
                                        _G.TerrorShark = true;
                                until not _G.DragoV3;
                                _G.DangerSc = "Lv 1";
                                _G.SailBoats = false;
                                _G.TerrorShark = false;
                        end;
                end);
        end;
end);
Dojo:AddToggle({
        Name = "Auto Relic Draco Trial [Beta]",
        Description = "turn on for auto trial v4 you have to COLLECT RELIC by your self",
        Default = false,
        Callback = function(I)
                _G.Relic123 = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.Relic123 then
                        pcall(function()
                                if workspace.Map:FindFirstChild("DracoTrial") then
                                        replicated.Remotes.DracoTrial:InvokeServer();
                                        task.wait(.5);
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-39934.9765625, 10685.359375, 22999.34375)).Position;
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625)).Position;
                                        task.wait(2.5);
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-39914.65625, 10685.384765625, 23000.177734375)).Position;
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375)).Position;
                                        task.wait(2.5);
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-39908.5, 10685.405273438, 22990.04296875));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-39908.5, 10685.405273438, 22990.04296875)).Position;
                                        repeat
                                                task.wait();
                                                _tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975));
                                        until not _G.Relic123 or Root.Position == (CFrame.new(-39609.5, 9376.400390625, 23472.94335975)).Position;
                                else
                                        local I = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
                                        if I and I:IsA("Part") then
                                                _tp(CFrame.new(I.Position));
                                        end;
                                end;
                        end);
                end;
        end;
end);
Dojo:AddToggle({
        Name = "Auto to train race draco",
        Description = "turn on for training Drago race v4 + auto upgrade tier",
        Default = false,
        Callback = function(I)
                _G.TrainDrago = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.TrainDrago then
                                local I = { "Venomous Assailant", "Hydra Enforcer" };
                                for e = 1, #I, 1 do
                                        if (plr.Character:FindFirstChild("RaceEnergy")).Value == 1 then
                                                vim1:SendKeyEvent(true, "Y", false, game);
                                                commF:InvokeServer("UpgradeRace", "Buy", 2);
                                                _tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492));
                                        elseif (plr.Character:FindFirstChild("RaceTransformed")).Value == false then
                                                local e = GetConnectionEnemies(I);
                                                if e then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(e, _G.TrainDrago);
                                                        until _G.TrainDrago == false or e.Humanoid.Health <= 0 or not e.Parent;
                                                else
                                                        _tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492));
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);

Dojo:AddToggle({
        Name = "Fly",
        Description = "Fly controlled by joystick (Auto Ascent)",
        Default = false,
        Callback = function(v)
                _G.Fly = v
        end,
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local flying = false

local speed = 63
local yForce = 35

local flyStartTime = 0
local flyPaused = false
local PAUSE_INTERVAL = 8
local PAUSE_DURATION = 0.4

local bodyGyro, bodyVelocity
local flyConn

local function startFly()
        local char = player.Character or player.CharacterAdded:Wait()
        local hum = char:WaitForChild("Humanoid")
        local root = char:WaitForChild("HumanoidRootPart")


        if bodyGyro then bodyGyro:Destroy() end
        if bodyVelocity then bodyVelocity:Destroy() end

        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.P = 9e4
        bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bodyGyro.CFrame = root.CFrame
        bodyGyro.Parent = root

        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bodyVelocity.Velocity = Vector3.zero
        bodyVelocity.Parent = root

        flying = true
        flyStartTime = tick()
        flyPaused = false

        flyConn = RunService.Heartbeat:Connect(function()
                if not _G.Fly or not flying then return end


                if not flyPaused then
                        local elapsed = tick() - flyStartTime
                        if elapsed >= PAUSE_INTERVAL then
                                flyPaused = true
                                if bodyVelocity then
                                        bodyVelocity.Velocity = Vector3.zero
                                end
                                task.delay(PAUSE_DURATION, function()
                                        flyPaused = false
                                        flyStartTime = tick()
                                end)
                                return
                        end
                else
                        if bodyVelocity then
                                bodyVelocity.Velocity = Vector3.zero
                        end
                        return
                end

                local moveDir = hum.MoveDirection
                local velX, velZ = 0, 0

                if moveDir.Magnitude > 0 then
                        velX = moveDir.Unit.X * speed
                        velZ = moveDir.Unit.Z * speed

                        bodyGyro.CFrame = CFrame.new(
                                root.Position,
                                root.Position + Vector3.new(moveDir.X, 0, moveDir.Z)
                        )
                end

                bodyVelocity.Velocity = Vector3.new(
                        velX,
                        yForce,
                        velZ
                )
        end)
end

local function stopFly()
        flying = false

        if flyConn then
                flyConn:Disconnect()
                flyConn = nil
        end

        if bodyGyro then
                bodyGyro:Destroy()
                bodyGyro = nil
        end

        if bodyVelocity then
                bodyVelocity:Destroy()
                bodyVelocity = nil
        end
end

task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if _G.Fly and not flying then
                        startFly()
                elseif not _G.Fly and flying then
                        stopFly()
                end
        end
end)
Dojo:AddToggle({
        Name = "Tween to Draco Trials",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.TpDrago_Prehis = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.TpDrago_Prehis then
                        local I = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
                        if I and I:IsA("Part") then
                                _tp(CFrame.new(I.Position));
                        end;
                end;
        end;
end);
Dojo:AddToggle({
        Name = "Swap Draco Race",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.BuyDrago = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.BuyDrago then
                        pcall(function()
                                _tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609));
                        task.wait(1)
                        do
                                        local I = { [1] = { NPC = "Dragon Wizard", Command = "DragonRace" } };
                                        (replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(I));
                                end;
                        end);
                end;
        end;
end);
Dojo:AddToggle({
        Name = "Upgrade Dragon Talon With Uzoth",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.DT_Uzoth = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.DT_Uzoth then
                        local I = CFrame.new(5661.89014, 1211.31909, 864.836731, .811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, .584473014, -6.23161966e-08, .811413169);
                        _tp(I);
                        if (I.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 25 then
                                local I = { NPC = "Uzoth", Command = "Upgrade" };
                                replicated.Modules.Net["RF/InteractDragonQuest"]:InvokeServer(I);
                        end;
                end;
        end;
end);
end
if World1 or World2 then
Dojo:AddSection({"⚠️ Dragon Race & Drago Trials require Sea 3"})
end
function isnil(I)
        return I == nil;
end;
local function G5(I)
        return math.floor(tonumber(I) + .5);
end;
Number = math.random(1, 1000000);

EspPly = function()
    for I, e in next, game.Players:GetChildren() do
        pcall(function()
            if not isnil(e.Character) then
                if PlayerEsp then
                    if not isnil(e.Character.Head) and not e.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        local I = Instance.new("BillboardGui", e.Character.Head);
                        I.Name = "NameEsp" .. Number;
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = e.Character.Head;
                        I.AlwaysOnTop = true;
                        local K = Instance.new("TextLabel", I);
                        K.Font = Enum.Font.Code;
                        K.FontSize = "Size14";
                        K.TextWrapped = true;
                        K.Text = e.Name .. " | Lv. " .. (e.Data.Level.Value);
                        K.Size = UDim2.new(1, 0, 1, 0);
                        K.TextYAlignment = "Top";
                        K.BackgroundTransparency = 1;
                        K.TextStrokeTransparency = .5;
                        K.TextColor3 = Color3.new(1, 1, 1);
                    else
                        e.Character.Head["NameEsp" .. Number].TextLabel.Text = e.Name .. " | Lv. " .. (e.Data.Level.Value);
                    end;
                else
                    if e.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        (e.Character.Head:FindFirstChild("NameEsp" .. Number)):Destroy();
                    end;
                end;
            end;
        end);
    end;
end;

DevEsp = function()
    for I, e in next, workspace:GetChildren() do
        pcall(function()
            if DevilFruitESP then
                if string.find(e.Name, "Fruit") then
                    if not e.Handle:FindFirstChild("NameEsp" .. Number) then
                        local I = Instance.new("BillboardGui", e.Handle);
                        I.Name = "NameEsp" .. Number;
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = e.Handle;
                        I.AlwaysOnTop = true;
                        local K = Instance.new("TextLabel", I);
                        K.Font = Enum.Font.Code;
                        K.FontSize = "Size14";
                        K.TextWrapped = true;
                        K.Size = UDim2.new(1, 0, 1, 0);
                        K.TextYAlignment = "Top";
                        K.BackgroundTransparency = 1;
                        K.TextStrokeTransparency = .5;
                        K.TextColor3 = Color3.fromRGB(255, 255, 255);
                        K.Text = e.Name .. (" \n" .. (G5(((game:GetService("Players")).LocalPlayer.Character.Head.Position - e.Handle.Position).Magnitude / 3) .. " M"));
                    else
                        e.Handle["NameEsp" .. Number].TextLabel.Text = "[" .. (e.Name .. ("]" .. ("   \n" .. (G5(((game:GetService("Players")).LocalPlayer.Character.Head.Position - e.Handle.Position).Magnitude / 3) .. " M"))));
                    end;
                end;
            else
                pcall(function()
                    if e:FindFirstChild("Handle") and e.Handle:FindFirstChild("NameEsp" .. Number) then
                        (e.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
                    end
                end)
            end;
        end);
    end;
end;

flowerEsp = function()
    for I, e in pairs(workspace:GetChildren()) do
        pcall(function()
            if e.Name == "Flower2" or e.Name == "Flower1" then
                if FlowerESP then
                    if not e:FindFirstChild("NameEsp" .. Number) then
                        local I = Instance.new("BillboardGui", e);
                        I.Name = "NameEsp" .. Number;
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = e;
                        I.AlwaysOnTop = true;
                        local K = Instance.new("TextLabel", I);
                        K.Font = Enum.Font.Code;
                        K.FontSize = "Size14";
                        K.TextWrapped = true;
                        K.Size = UDim2.new(1, 0, 1, 0);
                        K.TextYAlignment = "Top";
                        K.BackgroundTransparency = 1;
                        K.TextStrokeTransparency = .5;
                        K.TextColor3 = Color3.fromRGB(255, 255, 255);
                        if e.Name == "Flower1" then
                            K.Text = "Blue Flower" .. (" \n" .. (G5(((game:GetService("Players")).LocalPlayer.Character.Head.Position - e.Position).Magnitude / 3) .. " M"));
                        end;
                        if e.Name == "Flower2" then
                            K.Text = "Red Flower" .. (" \n" .. (G5(((game:GetService("Players")).LocalPlayer.Character.Head.Position - e.Position).Magnitude / 3) .. " M"));
                        end;
                    else
                        e["NameEsp" .. Number].TextLabel.Text = e.Name .. ("   \n" .. (G5(((game:GetService("Players")).LocalPlayer.Character.Head.Position - e.Position).Magnitude / 3) .. " M"));
                    end;
                else
                    if e:FindFirstChild("NameEsp" .. Number) then
                        (e:FindFirstChild("NameEsp" .. Number)):Destroy();
                    end;
                end;
            end;
        end);
    end;
end;

gearEsp = function()
    for I, e in pairs(workspace.Map.MysticIsland:GetDescendants()) do
        pcall(function()
            if ESPGear then
                if e.Name == "Part" and e.Material == Enum.Material.Neon then
                    if not e:FindFirstChild("NameEsp") then
                        local I = Instance.new("BillboardGui", e);
                        I.Name = "NameEsp";
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = e;
                        I.AlwaysOnTop = true;
                        local K = Instance.new("TextLabel", I);
                        K.Font = "Code";
                        K.FontSize = "Size14";
                        K.TextWrapped = true;
                        K.Size = UDim2.new(1, 0, 1, 0);
                        K.TextYAlignment = "Top";
                        K.BackgroundTransparency = 1;
                        K.TextStrokeTransparency = .5;
                        K.TextColor3 = Color3.fromRGB(255, 255, 255);
                    else
                        e.NameEsp.TextLabel.Text = "Gear" .. ("   \n" .. (G5((plr.Character.Head.Position - e.Position).Magnitude / 3) .. " M"));
                    end;
                end;
            else
                if e:FindFirstChild("NameEsp") then
                    (e:FindFirstChild("NameEsp")):Destroy();
                end;
            end;
        end);
    end;
end;

AdvanFruitEsp = function()
    if advanEsp == true then
        for I, e in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
            if e.Name == "Advanced Fruit Dealer" then
                local Adv = workspace:FindFirstChild("Adv")
                if not Adv then
                    Adv = Instance.new("Part");
                    Adv.Name = "Adv";
                    Adv.Transparency = 1;
                    Adv.Size = Vector3.new(1, 1, 1);
                    Adv.Anchored = true;
                    Adv.CanCollide = false;
                    Adv.Parent = workspace;
                    Adv.CFrame = e.HumanoidRootPart.CFrame;
                end

                if Adv then
                    if not Adv:FindFirstChild("NameEsp") then
                        local I = Instance.new("BillboardGui", Adv);
                        I.Name = "NameEsp";
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = Adv;
                        I.AlwaysOnTop = true;
                        local txt = Instance.new("TextLabel", I);
                        txt.Font = "Code";
                        txt.FontSize = "Size14";
                        txt.TextWrapped = true;
                        txt.Size = UDim2.new(1, 0, 1, 0);
                        txt.TextYAlignment = "Top";
                        txt.BackgroundTransparency = 1;
                        txt.TextStrokeTransparency = .5;
                        txt.TextColor3 = Color3.fromRGB(255, 255, 255);
                    else
                        Adv.NameEsp.TextLabel.Text = e.Name .. ("   \n" .. (G5((game.Players.LocalPlayer.Character.Head.Position - e.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
                    end;
                end;
            end;
        end;
    else
        if workspace:FindFirstChild("Adv") then
            workspace.Adv:Destroy();
        end;
    end;
end;

HakiClorEsp = function()
    if ColorEsp == true then
        for I, e in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
            if e.Name == "Barista Cousin" then
                local Gay = workspace:FindFirstChild("Gay")
                if not Gay then
                    Gay = Instance.new("Part");
                    Gay.Name = "Gay";
                    Gay.Transparency = 1;
                    Gay.Size = Vector3.new(1, 1, 1);
                    Gay.Anchored = true;
                    Gay.CanCollide = false;
                    Gay.Parent = workspace;
                    Gay.CFrame = e.HumanoidRootPart.CFrame;
                end

                if Gay then
                    if not Gay:FindFirstChild("NameEsp") then
                        local I = Instance.new("BillboardGui", Gay);
                        I.Name = "NameEsp";
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = Gay;
                        I.AlwaysOnTop = true;
                        local txt = Instance.new("TextLabel", I);
                        txt.Font = "Code";
                        txt.FontSize = "Size14";
                        txt.TextWrapped = true;
                        txt.Size = UDim2.new(1, 0, 1, 0);
                        txt.TextYAlignment = "Top";
                        txt.BackgroundTransparency = 1;
                        txt.TextStrokeTransparency = .5;
                        txt.TextColor3 = Color3.fromRGB(255, 255, 255);
                    else
                        Gay.NameEsp.TextLabel.Text = e.Name .. ("   \n" .. (G5((game.Players.LocalPlayer.Character.Head.Position - e.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
                    end;
                end;
            end;
        end;
    else
        if workspace:FindFirstChild("Gay") then
            workspace.Gay:Destroy();
        end;
    end;
end;

LegenSword = function()
    if LegenS == true then
        for I, e in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
            if e.Name == "Legendary Sword Dealer " then
                if not workspace:FindFirstChild("Lgd") then
                    Lgd = Instance.new("Part");
                    Lgd.Name = "Lgd";
                    Lgd.Transparency = 1;
                    Lgd.Size = Vector3.new(1, 1, 1);
                    Lgd.Anchored = true;
                    Lgd.CanCollide = false;
                    Lgd.Parent = workspace;
                    Lgd.CFrame = e.HumanoidRootPart.CFrame;
                elseif workspace:FindFirstChild("Lgd") then
                    if not Lgd:FindFirstChild("NameEsp") then
                        local I = Instance.new("BillboardGui", Lgd);
                        I.Name = "NameEsp";
                        I.ExtentsOffset = Vector3.new(0, 1, 0);
                        I.Size = UDim2.new(1, 200, 1, 30);
                        I.Adornee = Lgd;
                        I.AlwaysOnTop = true;
                        local txt = Instance.new("TextLabel", I);
                        txt.Font = "Code";
                        txt.FontSize = "Size14";
                        txt.TextWrapped = true;
                        txt.Size = UDim2.new(1, 0, 1, 0);
                        txt.TextYAlignment = "Top";
                        txt.BackgroundTransparency = 1;
                        txt.TextStrokeTransparency = .5;
                        txt.TextColor3 = Color3.fromRGB(255, 255, 255);
                    else
                        Lgd.NameEsp.TextLabel.Text = e.Name .. ("   \n" .. (G5((game.Players.LocalPlayer.Character.Head.Position - e.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
                    end;
                end;
            end;
        end;
    else
        if workspace:FindFirstChild("Lgd") then
            (workspace:FindFirstChild("Lgd")):Destroy();
        end;
    end;
end;

ChestEsp = function()
    if ChestESP then
        local I = game:GetService("CollectionService");
        local z = I:GetTagged("_ChestTagged");
        for _, e in ipairs(z) do
            pcall(function()
                local H = (e:GetPivot().Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude;
                local Q = e:FindFirstChild("ChestEspAttachment");
                if not Q then
                    local att = Instance.new("Attachment", e);
                    att.Name = "ChestEspAttachment";
                    att.Position = Vector3.new(0, 3, 0);
                    local gui = Instance.new("BillboardGui", att);
                    gui.Name = "NameEsp";
                    gui.Size = UDim2.new(0, 200, 0, 30);
                    gui.AlwaysOnTop = true;
                    local txt = Instance.new("TextLabel", gui);
                    txt.Font = Enum.Font.Code;
                    txt.TextSize = 14;
                    txt.BackgroundTransparency = 1;
                    txt.TextColor3 = Color3.new(1, 1, 1);
                    txt.Size = UDim2.new(1, 0, 1, 0);
                end;
                local X = e.ChestEspAttachment:FindFirstChild("NameEsp");
                if X then
                    X.TextLabel.Text = string.format("[%s] %d M", e.Name:gsub("Label", ""), math.floor(H / 3));
                end;
            end)
        end;
    else
        for _, e in ipairs((game:GetService("CollectionService")):GetTagged("_ChestTagged")) do
            if e:FindFirstChild("ChestEspAttachment") then e.ChestEspAttachment:Destroy(); end;
        end;
    end;
end;

berriesEsp = function()
    if BerryEsp then
        local I = game:GetService("CollectionService");
        local n = I:GetTagged("BerryBush");
        for _, e in ipairs(n) do
            local pos = (e.Parent:GetPivot()).Position;
            for _, attr in pairs(e:GetAttributes()) do
                local name = "BerryEspPart_" .. tostring(pos);
                local d = workspace:FindFirstChild(name);
                if not d then
                    d = Instance.new("Part", workspace);
                    d.Name = name;
                    d.Transparency = 1;
                    d.Anchored = true;
                    d.CanCollide = false;
                    d.CFrame = CFrame.new(pos);
                end;
                if not d:FindFirstChild("NameEsp") then
                    local gui = Instance.new("BillboardGui", d);
                    gui.Name = "NameEsp";
                    gui.Size = UDim2.new(0, 200, 0, 30);
                    gui.AlwaysOnTop = true;
                    local txt = Instance.new("TextLabel", gui);
                    txt.Font = Enum.Font.Code;
                    txt.TextColor3 = Color3.new(1, 1, 1);
                    txt.BackgroundTransparency = 1;
                    txt.Size = UDim2.new(1, 0, 1, 0);
                end;
                local dist = (game.Players.LocalPlayer.Character.Head.Position - pos).Magnitude / 3;
                d.NameEsp.TextLabel.Text = "[" .. attr .. "] " .. math.round(dist) .. " M";
            end;
        end;
    else
        for _, e in ipairs(workspace:GetChildren()) do
            if e.Name:match("BerryEspPart_") then e:Destroy(); end;
        end;
    end;
end;

_G.ESPColor = Color3.fromRGB(255, 255, 255)
function IslandESP_Func()
        for _, island in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                pcall(function()
                        if island.Name ~= "Sea" then
                if _G.IslandESP then
                    if not island:FindFirstChild("IslandESP") then
                        local billboard = Instance.new("BillboardGui", island)
                        billboard.Name = "IslandESP"
                        billboard.Size = UDim2.new(0, 150, 0, 35)
                        billboard.StudsOffset = Vector3.new(0, 35, 0)
                        billboard.AlwaysOnTop = true
                        local text = Instance.new("TextLabel", billboard)
                        text.Size = UDim2.new(1, 0, 1, 0)
                        text.BackgroundTransparency = 1
                        text.Text = island.Name
                        text.TextColor3 = _G.ESPColor
                        text.TextStrokeTransparency = 0
                        text.TextScaled = true
                        text.Font = Enum.Font.Cartoon
                    end
                else
                    if island:FindFirstChild("IslandESP") then island.IslandESP:Destroy() end
                end
                        end
                end)
        end
end

Esp:AddSection({"Esp Items / Entity / Island"});

Esp:AddToggle({Name = "Esp Berries", Default = false, Callback = function(I)
    BerryEsp = I;
    task.spawn(function() while BerryEsp do task.wait(1); berriesEsp(); end; end);
end});

Esp:AddToggle({Name = "Esp Players", Default = false, Callback = function(I)
    PlayerEsp = I;
    task.spawn(function() while PlayerEsp do task.wait(0.1); EspPly(); end; end);
end});

Esp:AddToggle({Name = "Esp Chests", Default = false, Callback = function(I)
    ChestESP = I;
    task.spawn(function() while ChestESP do task.wait(1); ChestEsp(); end; end);
end});

Esp:AddToggle({Name = "Esp Fruits", Default = false, Callback = function(I)
    DevilFruitESP = I
    task.spawn(function() while DevilFruitESP do task.wait(1); pcall(DevEsp) end end)
end})

Esp:AddToggle({Name = "Esp Island", Default = false, Callback = function(I)
    _G.IslandESP = I;
    task.spawn(function() while _G.IslandESP do IslandESP_Func(); task.wait(2) end; IslandESP_Func() end)
end});

if World2 then
    Esp:AddToggle({Name = "Esp Flower", Default = false, Callback = function(I)
        FlowerESP = I
        task.spawn(function() while FlowerESP do pcall(flowerEsp); task.wait(1) end end)
    end})
    Esp:AddToggle({Name = "Esp Legendary Sword", Default = false, Callback = function(I)
        LegenS = I
        task.spawn(function() while LegenS do pcall(LegenSword); task.wait(1) end end)
    end})
end

if World2 or World3 then
    Esp:AddToggle({Name = "Esp Aura Colour Dealers", Default = false, Callback = function(I)
        ColorEsp = I
        task.spawn(function() while ColorEsp do pcall(HakiClorEsp); task.wait(1) end; pcall(HakiClorEsp) end)
    end})
end

if World3 then
    Esp:AddToggle({Name = "Esp Gears", Default = false, Callback = function(I)
        ESPGear = I
        task.spawn(function() while ESPGear do pcall(gearEsp); task.wait(1) end end)
    end})
    Esp:AddToggle({Name = "Esp Advanced Fruits Dealer", Default = false, Callback = function(I)
        advanEsp = I
        task.spawn(function() while advanEsp do pcall(AdvanFruitEsp); task.wait(1) end; pcall(AdvanFruitEsp) end)
    end})
end

Esp:AddSection({"Fontes"});

local currentFont = Enum.Font.Arial

local function ApplyGlobalFont(fontEnum)
    currentFont = fontEnum


    for _, obj in ipairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
            obj.Font = fontEnum
        end
    end
end

game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        obj.Font = currentFont
    end
end)

Esp:AddButton({
    Name = "Fonte: Amatic SC",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.AmaticSC)
    end
})

Esp:AddButton({
    Name = "Fonte: Antique",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Antique)
    end
})

Esp:AddButton({
    Name = "Fonte: Arcade",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Arcade)
    end
})

Esp:AddButton({
    Name = "Fonte: Arial",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Arial)
    end
})

Esp:AddButton({
    Name = "Fonte: Arial Bold",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.ArialBold)
    end
})

Esp:AddButton({
    Name = "Fonte: Bangers",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Bangers)
    end
})

Esp:AddButton({
    Name = "Fonte: Bodoni",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Bodoni)
    end
})

Esp:AddButton({
    Name = "Fonte: Cartoon",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Cartoon)
    end
})

Esp:AddButton({
    Name = "Fonte: Code",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Code)
    end
})

Esp:AddButton({
    Name = "Fonte: Creepster",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Creepster)
    end
})

Esp:AddButton({
    Name = "Fonte: Denk One",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.DenkOne)
    end
})

Esp:AddButton({
    Name = "Fonte: Fondamento",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Fondamento)
    end
})

Esp:AddButton({
    Name = "Fonte: Fredoka One",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.FredokaOne)
    end
})

Esp:AddButton({
    Name = "Fonte: Garamond",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Garamond)
    end
})

Esp:AddButton({
    Name = "Fonte: Gotham",
    Description = "",
    Callback = function()
        ApplyGlobalFont(Enum.Font.Gotham)
    end
})
Esp:AddSection({"Stats"});

Esp:AddToggle({
    Name = "Add Points Melee",
    Description = "Gasta pontos automaticamente em Melee",
    Default = GetSetting("AutoMelee_Save", false),
    Callback = function(I)
        _G.Auto_Melee = I
        _G.SaveData["AutoMelee_Save"] = I
        SaveSettings()
    end,
})

Esp:AddToggle({
    Name = "Add Points Sword",
    Description = "Gasta pontos automaticamente em Sword",
    Default = GetSetting("AutoSword_Save", false),
    Callback = function(I)
        _G.Auto_Sword = I
        _G.SaveData["AutoSword_Save"] = I
        SaveSettings()
    end,
})

Esp:AddToggle({
    Name = "Add Points Gun",
    Description = "Gasta pontos automaticamente em Gun",
    Default = GetSetting("AutoGun_Save", false),
    Callback = function(I)
        _G.Auto_Gun = I
        _G.SaveData["AutoGun_Save"] = I
        SaveSettings()
    end,
})

Esp:AddToggle({
    Name = "Add Points Fruit",
    Description = "Gasta pontos automaticamente em Fruit",
    Default = GetSetting("AutoFruit_Save", false),
    Callback = function(I)
        _G.Auto_Blox = I
        _G.SaveData["AutoFruit_Save"] = I
        SaveSettings()
    end,
})

Esp:AddToggle({
    Name = "Add Points Defense",
    Description = "Gasta pontos automaticamente em Defense",
    Default = GetSetting("AutoDefense_Save", false),
    Callback = function(I)
        _G.Auto_Defense = I
        _G.SaveData["AutoDefense_Save"] = I
        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local remote = commF
            if _G.Auto_Melee then remote:InvokeServer("AddPoint", "Melee", 3) end
            if _G.Auto_Sword then remote:InvokeServer("AddPoint", "Sword", 3) end
            if _G.Auto_Gun then remote:InvokeServer("AddPoint", "Gun", 3) end
            if _G.Auto_Blox then remote:InvokeServer("AddPoint", "Demon Fruit", 3) end
            if _G.Auto_Defense then remote:InvokeServer("AddPoint", "Defense", 3) end
        end)
    end
end)

local AllAvailablePoints = 9999999;

task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Melee then
                                statsSetings("Melee", AllAvailablePoints);
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Sword then
                                statsSetings("Sword", AllAvailablePoints);
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Gun then
                                statsSetings("Gun", AllAvailablePoints);
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()

                        if _G.Auto_Blox then
                                statsSetings("Devil", AllAvailablePoints);
                        end;
                end);
        end;
end);
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Defense then
                                statsSetings("Defense", AllAvailablePoints);
                        end;
                end);
        end;
end);
Player:AddSection({"Pvp, aimbot, movement"})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local O5 = {}

for _, p in pairs(Players:GetPlayers()) do
    if p.Name ~= LocalPlayer.Name then
        table.insert(O5, p.Name)
    end
end

local PlayerDropdown = Player:AddDropdown({
    Name = "Select Players",
    Description = "",
    Options = O5,
    Default = nil,
    Multi = false,
    Callback = function(I)
        _G.PlayersList = I
    end,
})

Player:AddButton({
    Name = "Refresh Player List",
    Description = "",
    Callback = function()
        local NewPlayers = {}


        for _, p in pairs(Players:GetPlayers()) do
            if p.Name ~= LocalPlayer.Name then
                table.insert(NewPlayers, p.Name)
            end
        end


        PlayerDropdown:Refresh(NewPlayers, true)
    end
})

Player:AddToggle({
        Name = "Teleport to Player",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.TpPly = I;
        end,
});
task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.TpPly and _G.PlayersList then
                local target = game:GetService("Players"):FindFirstChild(_G.PlayersList)
                if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                    _tp(target.Character.HumanoidRootPart.CFrame)
                end
            end
        end)
    end
end)
Player:AddToggle({
        Name = "Spectate Choose Players",
        Description = "",
        Default = false,
        Callback = function(I)
                SpectatePlys = I;
                if not I then
                    pcall(function() workspace.Camera.CameraSubject = plr.Character.Humanoid end)
                end
        end,
});

task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if SpectatePlys and _G.PlayersList then
                local target = game:GetService("Players"):FindFirstChild(_G.PlayersList)
                if target and target.Character and target.Character:FindFirstChild("Humanoid") then
                    workspace.Camera.CameraSubject = target.Character.Humanoid
                end
            end
        end)
    end
end)
Player:AddSection({"Aimbot"});

Player:AddToggle({
        Name = "Aimbot Cam Lock",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AimCam = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AimCam then
                                local I = workspace.CurrentCamera;
                                closestplayer = function()
                                                local I = math.huge;
                                                local e = nil;
                                                for K, n in next, ply:GetPlayers() do
                                                        if n ~= plr then
                                                                if n.Character and (n.Character:FindFirstChild("Head") and (_G.AimCam and n.Character.Humanoid.Health > 0)) then
                                                                        local K = (n.Character.Head.Position - plr.Character.Head.Position).Magnitude;
                                                                        if K < I then
                                                                                I = K;
                                                                                e = n;
                                                                        end;
                                                                end;
                                                        end;
                                                end;
                                                return e;
                                        end;
                                repeat
                                        task.wait();
                                        I.CFrame = CFrame.new(I.CFrame.Position, (closestplayer()).Character.HumanoidRootPart.Position);
                                until not _G.AimCam;
                        end;
                end);
        end;
end);

local SilentAim_Enabled = false

Player:AddToggle({
        Name = "Aimbot Skills",
        Description = "",
        Default = false,
        Callback = function(state)
                SilentAim_Enabled = state
        end
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local RS = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local PredictionEnabled = true
local PredictionAmount = 0.1
local maxRange = 1000

local renderConnection = nil
local currentTool = nil
local PlayersPosition = nil
local Selectedplayer = nil
local characterConnections = {}

local function getHRP(model)
        return model and model:FindFirstChild("HumanoidRootPart")
end

local function clearConnections()
        for _, c in ipairs(characterConnections) do
                pcall(function() c:Disconnect() end)
        end
        characterConnections = {}
end

local function isEnemy(plr)
        if not plr or plr == player then return false end
        if not player.Team or not plr.Team then return true end
        return player.Team ~= plr.Team
end

local function getPredictedPosition(hrp)
        if not hrp then return nil end
        local hum = hrp.Parent:FindFirstChildWhichIsA("Humanoid")
        if not hum or not PredictionEnabled or hum.WalkSpeed < 5 then
                return hrp.Position
        end
        return hrp.Position + (hrp.Velocity * PredictionAmount)
end

local function getClosestPlayer(lpHRP)
        local closest, dist = nil, math.huge
        for _, plr in ipairs(Players:GetPlayers()) do
                if isEnemy(plr) and plr.Character then
                        local hum = plr.Character:FindFirstChildWhichIsA("Humanoid")
                        local hrp = getHRP(plr.Character)
                        if hum and hum.Health > 0 and hrp then
                                local d = (hrp.Position - lpHRP.Position).Magnitude
                                if d < dist and d <= maxRange then
                                        dist = d
                                        closest = plr
                                end
                        end
                end
        end
        return closest
end

local function isSkillReadyForTool(toolName)
        if not toolName then return false end
        local gui = player:FindFirstChild("PlayerGui")
        if not gui then return false end

        local skills = gui:FindFirstChild("Main") and gui.Main:FindFirstChild("Skills")
        if not skills then return false end

        local tool = skills:FindFirstChild(toolName)
        if not tool then return false end

        for _, key in ipairs({"Z","X","C","V"}) do
                local skill = tool:FindFirstChild(key)
                if skill and skill:FindFirstChild("Cooldown") then
                        if skill.Cooldown.Size.X.Scale == 1 then
                                return true
                        end
                end
        end
        return false
end

local function startRender()
        if renderConnection then return end

        renderConnection = RunService.RenderStepped:Connect(function()
                if not SilentAim_Enabled then return end

                local char = player.Character
                local hrp = char and getHRP(char)
                if not hrp then return end

                local target = Selectedplayer or getClosestPlayer(hrp)
                if not (target and target.Character) then
                        PlayersPosition = nil
                        return
                end

                local thrp = getHRP(target.Character)
                if not thrp then return end

                PlayersPosition = getPredictedPosition(thrp)

                if currentTool and isSkillReadyForTool(currentTool.Name) then
                        local look = (Vector3.new(
                                PlayersPosition.X,
                                hrp.Position.Y,
                                PlayersPosition.Z
                        ) - hrp.Position).Unit

                        hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + look)
                end
        end)
end

local function stopRender()
        if renderConnection then
                renderConnection:Disconnect()
                renderConnection = nil
        end
end

local function trackCharacter(char)
        clearConnections()

        for _, obj in ipairs(char:GetChildren()) do
                if obj:IsA("Tool") then
                        currentTool = obj
                end
        end
        table.insert(characterConnections,
                char.ChildAdded:Connect(function(obj)
                        if obj:IsA("Tool") then
                                currentTool = obj
                        end
                end)
        )
        table.insert(characterConnections,
                char.ChildRemoved:Connect(function(obj)
                        if obj:IsA("Tool") and currentTool == obj then
                                currentTool = nil
                        end
                end)
        )
end

player.CharacterAdded:Connect(trackCharacter)

if player.Character then
        trackCharacter(player.Character)
end

pcall(function()
        local mt = getrawmetatable(game)
        setreadonly(mt, false)

        local old = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
                local method = getnamecallmethod()
                local args = {...}

                if (method == "FireServer" or method == "InvokeServer")
                        and SilentAim_Enabled
                        and PlayersPosition
                        and typeof(args[1]) == "Vector3" then

                        args[1] = PlayersPosition
                        return old(self, unpack(args))
                end

                return old(self, ...)
        end)

        setreadonly(mt, true)
end)

RunService.RenderStepped:Connect(function()
        if SilentAim_Enabled then
                startRender()
        else
                stopRender()
        end
end)

Player:AddSection({"Speed/Jump"});
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local plr = Players.LocalPlayer
local humanoid = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") or nil

plr.CharacterAdded:Connect(function(char)
    humanoid = char:WaitForChild("Humanoid")
end)

local SpeedEnabled = false
local JumpEnabled = false

local desiredSpeed = 16
local desiredJump = 50

local function protectSpeed()
    if humanoid then
        humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if SpeedEnabled and humanoid.WalkSpeed ~= desiredSpeed then
                humanoid.WalkSpeed = desiredSpeed
            end
        end)
    end
end

local function applyStats()
    if humanoid then
        if SpeedEnabled then humanoid.WalkSpeed = desiredSpeed end
        if JumpEnabled then humanoid.JumpPower = desiredJump end
    end
end

RunService.Heartbeat:Connect(function()
    if humanoid then
        if SpeedEnabled and humanoid.WalkSpeed ~= desiredSpeed then
            humanoid.WalkSpeed = desiredSpeed
        end
        if JumpEnabled and humanoid.JumpPower ~= desiredJump then
            humanoid.JumpPower = desiredJump
        end
    end
end)

plr.CharacterAdded:Connect(function(char)
    humanoid = char:WaitForChild("Humanoid")
    protectSpeed()
end)

protectSpeed()

Player:AddToggle({
        Name  = "Set WalkSpeed",
    Description = "Enable custom WalkSpeed",
    Default = false,
    Callback = function(Value)
        SpeedEnabled = Value
        applyStats()
    end
})

Player:AddTextBox({
    Name = "WalkSpeed Value",
    Description = "Digite a velocidade desejada",
    PlaceHolder = "16",
    Default = tostring(desiredSpeed),
    Callback = function(Value)
        local num = tonumber(Value)
        if num then
            desiredSpeed = num
            applyStats()
        end
    end
})

Player:AddToggle({
        Name  = "Set JumpPower",
    Description = "Enable custom JumpPower",
    Default = false,
    Callback = function(Value)
        JumpEnabled = Value
        applyStats()
    end
})
Player:AddTextBox({
    Name = "JumpPower Value",
    Description = "Digite o JumpPower desejado",
    PlaceHolder = "50",
    Default = tostring(desiredJump),
    Callback = function(Value)
        local num = tonumber(Value)
        if num then
            desiredJump = num
            applyStats()
        end
    end
})
Player:AddSection({"LocalPlayer Settings / Misc"});
Player:AddToggle({
        Name = "Instance Mink V3 [ INF ]",
        Description = "turn on for make mink v3 infinity",
        Default = false,
        Callback = function(I)
                InfAblities = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if InfAblities then
                                if not plr.Character.HumanoidRootPart:FindFirstChild("Agility") then
                                        local I = replicated.FX.Agility:Clone();
                                        I.Name = "Agility";
                                        I.Parent = plr.Character.HumanoidRootPart;
                                end;
                        else
                                plr.Character.HumanoidRootPart.Agility:Destroy();
                        end;
                end);
        end;
end);
Player:AddToggle({
        Name = "Instance Energy [ INF ]",
        Description = "turn on for make energy infinity",
        Default = false,
        Callback = function(I)
                infEnergy = I;
                if I then
                        getInfinity_Ability("Energy", infEnergy);
                end;
        end,
});
Player:AddToggle({
        Name = "Instance Soru [ INF ]",
        Description = "turn on for make soru infinity",
        Default = false,
        Callback = function(I)
                _G.InfSoru = I;
                if I then
                        getInfinity_Ability("Soru", _G.InfSoru);
                end;
        end,
});
Player:AddToggle({
        Name = "Instance Observation Range [ INF ]",
        Description = "turn on for make observation range infinity",
        Default = false,
        Callback = function(I)
                _G.InfiniteObRange = I;
                if I then
                        getInfinity_Ability("Observation", _G.InfiniteObRange);
                end;
        end,
});
Player:AddSection({"Settings Combat / Aimbot Settings"});
Player:AddToggle({
        Name = "Ignore Same Teams",
        Description = "turn on for ignore not aimbot same team",
        Default = false,
        Callback = function(I)
                _G.NoAimTeam = I;
        end,
});
Player:AddToggle({
        Name = "Accept Allies",
        Description = "turn on for auto accept ally",
        Default = false,
        Callback = function(I)
                _G.AcceptAlly = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.AcceptAlly then
                        pcall(function()
                                for I, e in pairs(ply:GetChildren()) do
                                        if e.Name ~= plr.Name and (e:FindFirstChild("Humanoid") and e:FindFirstChild("HumanoidRootPart")) then
                                                ((replicated:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("AcceptAlly", e.Name);
                                        end;
                                end;
                        end);
                end;
        end;
end);

Player:AddSection({"Kill Aura"});

_G.ZX_KillAura = GetSetting("ZX_KillAura_Save", false)

Player:AddToggle({
    Name = "Kill Aura",
    Description = "Automatically kills all enemies within range",
    Default = _G.ZX_KillAura,
    Callback = function(Value)
        _G.ZX_KillAura = Value
        _G.SaveData["ZX_KillAura_Save"] = Value
        SaveSettings()
    end,
});

local ZX_KillAuraCounter = 0
local ZX_KillAuraDisplay = Player:AddParagraph({
    Title = "Kill Aura Stats",
    Desc = "Killed: 0 | Disabled"
});

task.spawn(function()
    while task.wait(1) do
        if _G.ZX_KillAura then
            ZX_KillAuraDisplay:SetDesc("Killed: " .. ZX_KillAuraCounter .. " | Active ✅")
        else
            ZX_KillAuraDisplay:SetDesc("Killed: 0 | Disabled ❌")
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        if _G.ZX_KillAura then
            pcall(function()
                local char = plr.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                pcall(function()
                    sethiddenproperty(plr, "SimulationRadius", math.huge)
                end)

                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    local hum = enemy:FindFirstChild("Humanoid")
                    local root = enemy:FindFirstChild("HumanoidRootPart")
                    if hum and root and hum.Health > 0 then
                        local dist = (root.Position - hrp.Position).Magnitude
                        if dist <= 1000 then
                            hum.Health = 0
                            root.CanCollide = false
                            pcall(function() enemy:BreakJoints() end)
                            ZX_KillAuraCounter = ZX_KillAuraCounter + 1
                        end
                    end
                end
            end)
        end
    end
end)

Player:AddButton({
    Name = "Reset Kill Counter",
    Description = "Reset Kill Aura counter to zero",
    Callback = function()
        ZX_KillAuraCounter = 0
    end,
});

Teleport:AddSection({"Travel - Worlds"});
Teleport:AddButton({ Name = "Teleport Sea 1", Description = "", Callback = function()
                commF:InvokeServer("TravelMain");
        end });
Teleport:AddButton({ Name = "Teleport Sea 2", Description = "", Callback = function()
                commF:InvokeServer("TravelDressrosa");
        end });
Teleport:AddButton({ Name = "Teleport Sea 3", Description = "", Callback = function()
                commF:InvokeServer("TravelZou");
        end });
Teleport:AddSection({"Travel - Island"})

Location = {}
for _, e in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
        table.insert(Location, e.Name)
end

Teleport:AddDropdown({
        Name = "Select Travelling",
        Description = "",
        Options = Location,
        Default = false,
        Multi = false,
        Callback = function(I)
                _G.Island = I
        end,
})

Teleport:AddToggle({
    Name = "Auto Travel",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Teleport = Value

        if Value then

            local targetIsland = workspace._WorldOrigin.Locations:FindFirstChild(_G.Island)

            if targetIsland then
                task.spawn(function()

                    Root.CFrame = Root.CFrame * CFrame.new(0, 80, 0)
                    task.wait(0.1)


                    local destination = targetIsland.CFrame * CFrame.new(0, 80, 0)
                    local savedFar  = getgenv().TweenSpeedFar
                    local savedNear = getgenv().TweenSpeedNear
                    getgenv().TweenSpeedFar  = getgenv().TweenSpeedTravel or 120
                    getgenv().TweenSpeedNear = getgenv().TweenSpeedTravel or 120

                    repeat
                        task.wait()
                        _tp(destination)
                    until not _G.Teleport or (Root.Position - destination.p).Magnitude < 10


                    getgenv().TweenSpeedFar  = savedFar
                    getgenv().TweenSpeedNear = savedNear


                    if _G.Teleport then
                        Root.CFrame = targetIsland.CFrame * CFrame.new(0, 3, 0)
                    end


                    _G.Teleport = false



                end)
            else
                print("Selecione uma ilha primeiro!")
                _G.Teleport = false
            end
        end
    end,
})

Teleport:AddSection({"Travel - Portal"});
if World1 then
        Location_Portal = { "Sky", "UnderWater" };
elseif World2 then
        Location_Portal = { "SwanRoom", "Cursed Ship" };
elseif World3 then
        Location_Portal = {
                        "Castle On The Sea",
                        "Mansion Cafe",
                        "Hydra Teleport",
                        "Canvendish Room",
                        "Temple of Time",
                };
end;
Teleport:AddDropdown({
        Title = "Select Portal",
        Description = "",
        Options = Location_Portal,
        Default = false,
        Multi = false,
        Callback = function(I)
                _G.Island_PT = I;
        end,
});
Teleport:AddButton({ Name = "requestEntrance", Description = "", Callback = function()
                if _G.Island_PT == "Sky" then
                        commF:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380));
                elseif _G.Island_PT == "UnderWater" then
                        commF:InvokeServer("requestEntrance", Vector3.new(61163, 11, 1819));
                elseif _G.Island_PT == "SwanRoom" then
                        commF:InvokeServer("requestEntrance", Vector3.new(2285, 15, 905));
                elseif _G.Island_PT == "Cursed Ship" then
                        commF:InvokeServer("requestEntrance", Vector3.new(923, 126, 32852));
                elseif _G.Island_PT == "Castle On The Sea" then
                        commF:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899));
                elseif _G.Island_PT == "Mansion Cafe" then
                        commF:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
                elseif _G.Island_PT == "Hydra Teleport" then
                        commF:InvokeServer("requestEntrance", Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625));
                elseif _G.Island_PT == "Canvendish Room" then
                        commF:InvokeServer("requestEntrance", Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918));
                elseif _G.Island_PT == "Temple of Time" then
                        commF:InvokeServer("requestEntrance", Vector3.new(28310.0234, 14895.1123, 109.456741, -0.469690144, -2.85620132e-08, -0.882831335, -3.23509219e-08, 1, -1.51411736e-08, .882831335, 2.14487486e-08, -0.469690144));
                end;
        end });
Teleport:AddSection("Travel - NPCs");
for I, e in pairs(replicated.NPCs:GetChildren()) do
        table.insert(NPCList, e.Name);
end;
Teleport:AddDropdown({
        Name = "Select NPCs",
        Description = "",
        Options = NPCList,
        Default = false,
        Multi = false,
        Callback = function(I)
                NPClist = I;
        end,
});
Teleport:AddToggle({
        Name = "Auto Tween to NPCs",
        Description = "Automatic teleport to pos Npcs",
        Default = false,
        Callback = function(I)
                _G.TPNpc = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.TPNpc then
                        pcall(function()
                                for I, e in pairs(replicated.NPCs:GetChildren()) do
                                        if e.Name == NPClist then
                                                _tp(e.HumanoidRootPart.CFrame);
                                        end;
                                end;
                        end);
                end;
        end;
end);
if World3 then
Quests:AddSection({"Skull Guitar"});
Quests:AddToggle({
        Name = "Auto Skull Guitar",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_Soul_Guitar = I;
        end,
});
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                if _G.Auto_Soul_Guitar then
                        pcall(function()
                                local I = GetConnectionEnemies("Living Zombie");
                                if I then
                                        I.HumanoidRootPart.CFrame = CFrame.new(-10138.397460938, 138.65246582031, 5902.8920898438);
                                        I.Head.CanCollide = false;
                                        I.Humanoid.Sit = false;
                                        I.HumanoidRootPart.CanCollide = false;
                                        I.Humanoid.JumpPower = 0;
                                        I.Humanoid.WalkSpeed = 0;
                                        if I.Humanoid:FindFirstChild("Animator") then
                                                (I.Humanoid:FindFirstChild("Animator")):Destroy();
                                        end;
                                end;
                        end);
                end;
        end;
end);
function getT(I)
        local e;
        if I == 1 then
                e = workspace.Map["Haunted Castle"].Tablet.Segment1.Line.Rotation;
        elseif I == 3 then
                e = workspace.Map["Haunted Castle"].Tablet.Segment3.Line.Rotation;
        elseif I == 4 then
                e = workspace.Map["Haunted Castle"].Tablet.Segment4.Line.Rotation;
        elseif I == 7 then
                e = workspace.Map["Haunted Castle"].Tablet.Segment7.Line.Rotation;
        elseif I == 10 then
                e = workspace.Map["Haunted Castle"].Tablet.Segment10.Line.Rotation;
        end;
        if e then
                return e.Z;
        end;
end;
function getRT(I)
        local e = workspace.Map["Haunted Castle"].Trophies.Quest;
        local K;
        for e, n in pairs(e:GetChildren()) do
                if I == 1 and (n.Name == "Trophy1" and n:FindFirstChild("Handle")) then
                        K = n.Handle.Rotation;
                elseif I == 2 and (n.Name == "Trophy2" and n:FindFirstChild("Handle")) then
                        K = n.Handle.Rotation;
                elseif I == 3 and (n.Name == "Trophy3" and n:FindFirstChild("Handle")) then
                        K = n.Handle.Rotation;
                elseif I == 4 and (n.Name == "Trophy4" and n:FindFirstChild("Handle")) then
                        K = n.Handle.Rotation;
                elseif I == 5 and (n.Name == "Trophy5" and n:FindFirstChild("Handle")) then
                        K = n.Handle.Rotation;
                end;
                if K then
                        return K.Z;
                end;
        end;
end;
GetFirePlacard = function(I, e)
                if tostring(workspace.Map["Haunted Castle"]["Placard" .. I][e].Indicator.BrickColor) ~= "Pearl" then
                        fireclickdetector(workspace.Map["Haunted Castle"]["Placard" .. I][e].ClickDetector);
                end;
        end;
task.spawn(function()
        repeat
                task.wait();
        until _G.Auto_Soul_Guitar;
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Soul_Guitar then
                                if World3 then
                                        commF:InvokeServer("gravestoneEvent", 2);
                                        commF:InvokeServer("gravestoneEvent", 2, true);
                                        if commF:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
                                                _tp(CFrame.new(-8655.0166015625, 141.31669616699, 6160.0224609375));
                                                commF:InvokeServer("gravestoneEvent", 2);
                                                commF:InvokeServer("gravestoneEvent", 2, true);
                                        elseif (commF:InvokeServer("GuitarPuzzleProgress", "Check")).Swamp == false then
                                                Quest1 = true;
                                                Quest2 = false;
                                                Quest3 = false;
                                                Quest4 = false;
                                                local I = GetConnectionEnemies("Living Zombie");
                                                if I then
                                                        repeat
                                                                task.wait();
                                                                G.Kill(I, _G.Auto_Soul_Guitar);
                                                        until not _G.Auto_Soul_Guitar or I.Humanoid.Health <= 0 or not I.Parent or workspace.Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0);
                                                else
                                                        _tp(CFrame.new(-10170.727539062, 138.65246582031, 5934.2651367188));
                                                end;
                                        elseif (commF:InvokeServer("GuitarPuzzleProgress", "Check")).Gravestones == false then
                                                Quest1 = false;
                                                Quest2 = true;
                                                Quest3 = false;
                                                Quest4 = false;
                                                GetFirePlacard("7", "Left");
                                                GetFirePlacard("6", "Left");
                                                GetFirePlacard("5", "Left");
                                                GetFirePlacard("4", "Right");
                                                GetFirePlacard("3", "Left");
                                                GetFirePlacard("2", "Right");
                                                GetFirePlacard("1", "Right");
                                        elseif (commF:InvokeServer("GuitarPuzzleProgress", "Check")).Ghost == false then
                                                commF:InvokeServer("GuitarPuzzleProgress", "Ghost");
                                                commF:InvokeServer("GuitarPuzzleProgress", "Ghost", true);
                                        elseif (commF:InvokeServer("GuitarPuzzleProgress", "Check")).Trophies == false then
                                                Quest1 = false;
                                                Quest2 = false;
                                                Quest3 = true;
                                                Quest4 = false;
                                                _tp(CFrame.new(-9532.8232421875, 6.471667766571, 6078.068359375));
                                                repeat
                                                        task.wait();
                                                        local I = getRT(1);
                                                        local e = getT(1);
                                                        if I and e then
                                                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"));
                                                        end;
                                                until I == e;
                                                repeat
                                                        task.wait();
                                                        local I = getRT(2);
                                                        local e = getT(3);
                                                        if I and e then
                                                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"));
                                                        end;
                                                until I == e;
                                                repeat
                                                        task.wait();
                                                        local I = getRT(3);
                                                        local e = getT(4);
                                                        if I and e then
                                                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"));
                                                        end;
                                                until I == e;
                                                repeat
                                                        task.wait();
                                                        local I = getRT(4);
                                                        local e = getT(7);
                                                        if I and e then
                                                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"));
                                                        end;
                                                until I == e;
                                                repeat
                                                        task.wait();
                                                        local I = getRT(5);
                                                        local e = getT(10);
                                                        if I and e then
                                                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"));
                                                        end;
                                                until I == e;
                                                repeat
                                                        task.wait();
                                                        fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"));
                                                        fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"));
                                                        fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"));
                                                        fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"));
                                                        fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"));
                                                until workspace.Map["Haunted Castle"].Tablet.Segment2.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment5.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment6.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment8.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment9.Line.Rotation.Z == 0;
                                        elseif (commF:InvokeServer("GuitarPuzzleProgress", "Check")).Pipes == false then
                                                Quest1 = false;
                                                Quest2 = false;
                                                Quest3 = false;
                                                Quest4 = true;
                                                _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector);
                                                _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                                _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
                                                _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector);
                                                _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                                fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                        end;
                                end;
                        end;
                end);
        end;
end);
end
if World2 or World3 then
Quests:AddToggle({
        Name = "Auto Farm Material Skull Guitar",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoMatSoul = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AutoMatSoul and GetWP("Skull Guitar") == false then
                                if GetM("Bones") >= 500 and (GetM("Ectoplasm") >= 250 and GetM("Dark Fragment") >= 1) then
                                        commF:InvokeServer("soulGuitarBuy", true);
                                else
                                        if GetM("Ectoplasm") <= 250 then
                                                if _G.AutoMatSoul and World2 then
                                                        local I = {
                                                                        "Ship Deckhand",
                                                                        "Ship Engineer",
                                                                        "Ship Steward",
                                                                        "Ship Officer",
                                                                        "Arctic Warrior",
                                                                };
                                                        local e = GetConnectionEnemies(I);
                                                        if e then
                                                                repeat
                                                                        task.wait();
                                                                        G.Kill(e, _G.AutoMatSoul);
                                                                until not _G.AutoMatSoul or not e.Parent or e.Humanoid.Health <= 0;
                                                        else
                                                                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
                                                        end;
                                                else
                                                        commF:InvokeServer("TravelDressrosa");
                                                end;
                                        elseif GetM("Dark Fragment") < 1 then
                                                if _G.AutoMatSoul and World2 then
                                                        local I = GetConnectionEnemies("Darkbeard");
                                                        if I then
                                                                repeat
                                                                        task.wait();
                                                                        G.Kill(I, _G.AutoMatSoul);
                                                                until not _G.AutoMatSoul or I.Humanoid.Health <= 0;
                                                        else
                                                                _tp(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625));
                                                        end;
                                                else
                                                        commF:InvokeServer("TravelDressrosa");
                                                end;
                                                if not GetConnectionEnemies("Darkbeard") then
                                                        Hop();
                                                end;
                                        elseif GetM("Bones") <= 500 then
                                                if _G.AutoMatSoul and World3 then
                                                        local I = {
                                                                        "Reborn Skeleton",
                                                                        "Living Zombie",
                                                                        "Demonic Soul",
                                                                        "Posessed Mummy",
                                                                };
                                                        local e = GetConnectionEnemies(I);
                                                        if e then
                                                                repeat
                                                                        task.wait();
                                                                        G.Kill(e, _G.AutoMatSoul);
                                                                until not _G.AutoMatSoul or e.Humanoid.Health <= 0 or not e.Parent or e.Humanoid.Health <= 0;
                                                        else
                                                                _tp(CFrame.new(-9504.8564453125, 172.14292907715, 6057.259765625));
                                                        end;
                                                else
                                                        commF:InvokeServer("TravelZou");
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
end
Quests:AddSection({"Farm Mastery"});

local TargetMobs = {
        "Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy"
}

local FarmPos = CFrame.new(
        -9513.63867, 164.010269, 5786.66895,
        -0.0950724334, 9.31791888e-08, 0.995470345,
        7.18874515e-09, 1, -9.29166148e-08,
        -0.995470345, -1.67762626e-09, -0.0950724334
)

local function GetClosestMob()
        local closestDist = math.huge
        local target = nil
        local hrp = game.Players.LocalPlayer.Character
                and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if not hrp then return nil end
        local playerPos = hrp.Position

        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                local isTarget = false
                for _, name in pairs(TargetMobs) do
                        if v.Name == name then
                                isTarget = true
                                break
                        end
                end

                if isTarget
                        and v:FindFirstChild("Humanoid")
                        and v.Humanoid.Health > 0
                        and v:FindFirstChild("HumanoidRootPart") then

                        local dist = (v.HumanoidRootPart.Position - playerPos).Magnitude
                        if dist < closestDist then
                                closestDist = dist
                                target = v
                        end
                end
        end
        return target
end

Quests:AddToggle({
        Name = "Auto Farm 600 In Swords",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.FarmMastery_S = I
        end,
})

task.spawn(function()
        while task.wait(0.1) do
                if _G.FarmMastery_S then
                        pcall(function()
                                local character = game.Players.LocalPlayer.Character
                                if not character or not character:FindFirstChild("HumanoidRootPart") then return end




                                local Target = GetClosestMob()


                                if not Target then
                                        local distToArea = (character.HumanoidRootPart.Position - FarmPos.Position).Magnitude
                                        if distToArea > 150 then
                                                _tp(FarmPos)
                                                task.wait(0.5)
                                        end
                                end


                                for _, e in next, commF:InvokeServer("getInventory") do
                                        if type(e) == "table" and e.Type == "Sword" then
                                                local SwordName = e.Name
                                                local Mastery = tonumber(e.Mastery) or 0

                                                if Mastery < 600 then
                                                        if GetBP(SwordName) then
                                                                if Target then
                                                                        repeat
                                                                                task.wait()
                                                                                if _G.FarmMastery_S
                                                                                        and Target
                                                                                        and Target:FindFirstChild("HumanoidRootPart")
                                                                                        and Target.Humanoid.Health > 0 then

                                                                                        G.Sword(Target, _G.FarmMastery_S)
                                                                                end
                                                                        until not _G.FarmMastery_S
                                                                                or not Target.Parent
                                                                                or Target.Humanoid.Health <= 0
                                                                end
                                                        else
                                                                commF:InvokeServer("LoadItem", SwordName)
                                                        end
                                                        break
                                                end
                                        end
                                end
                        end)
                end
        end
end)
if World3 then
Quests:AddSection({"Cursed Dual Katana"});
local I5 = Get:AddParagraph({ Title = " Number Cursed dual katana quests ", Content = "Quest Numbers :" });
task.spawn(function()
        while task.wait(.2) do
                if QuestYama_1 == true then
                        I5:SetDesc(" Quest Numbers : yama quest 1");
                elseif QuestYama_2 == true then
                        I5:SetDesc(" Quest Numbers : yama quest 2");
                elseif QuestYama_3 == true then
                        I5:SetDesc(" Quest Numbers : yama quest 3");
                elseif QuestTushita_1 == true then
                        I5:SetDesc(" Quest Numbers : tushita quest 1");
                elseif QuestTushita_2 == true then
                        I5:SetDesc(" Quest Numbers : tushita quest 2");
                elseif QuestTushita_1 == true then
                        I5:SetDesc(" Quest Numbers: tushita quest 2");
                elseif GetWP("Cursed Dual Katana") then
                        I5:SetDesc(" Quest Numbers: CDK done!!");
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Get CDK [ Last Quest ]",
    Description = "",

    Default = GetSetting("AutoCDK_Save", false),
    Callback = function(I)
        _G.CDK = I


        _G.SaveData["AutoCDK_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.CDK then
                                commF:InvokeServer("CDKQuest", "Progress", "Good");
                                commF:InvokeServer("CDKQuest", "Progress", "Evil");
                                commF:InvokeServer("CDKQuest", "StartTrial", "Boss");
                                local I = GetConnectionEnemies("Cursed Skeleton Boss");
                                if I then
                                        repeat
                                                task.wait();
                                                if plr.Character:FindFirstChild("Yama") or plr.Backpack:FindFirstChild("Yama") then
                                                        EquipWeapon("Yama");
                                                elseif plr.Character:FindFirstChild("Tushita") or plr.Backpack:FindFirstChild("Tushita") then
                                                        EquipWeapon("Tushita");
                                                end;
                                                _tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
                                        until not _G.CDK or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(-12318.193359375, 601.95184326172, -6538.662109375));
                                        task.wait(.5);
                                        _tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame);
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Yama CDK",
    Description = "",

    Default = GetSetting("AutoYamaCDK_Save", false),
    Callback = function(I)
        _G.CDK_YM = I


        _G.SaveData["AutoYamaCDK_Save"] = I


        SaveSettings()
    end,
})

task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                pcall(function()
                        if _G.CDK_YM then
                                if tostring(commF:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                                        commF:InvokeServer("CDKQuest", "OpenDoor");
                                        commF:InvokeServer("CDKQuest", "OpenDoor", true);
                                else
                                        if (commF:InvokeServer("CDKQuest", "Progress")).Finished == nil then
                                                commF:InvokeServer("CDKQuest", "StartTrial", "Evil");
                                                commF:InvokeServer("CDKQuest", "StartTrial", "Evil");
                                        elseif (commF:InvokeServer("CDKQuest", "Progress")).Finished == false then
                                                if tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == -3 then
                                                        QuestYama_1 = true;
                                                        QuestYama_2 = false;
                                                        QuestYama_3 = false;
                                                        repeat
                                                                task.wait();
                                                                if not workspace.Enemies:FindFirstChild("Forest Pirate") then
                                                                        _tp(CFrame.new(-13223.521484375, 428.19381713867, -7766.0678710938));
                                                                else
                                                                        local I = GetConnectionEnemies("Forest Pirate");
                                                                        if I then
                                                                                _tp((workspace.Enemies:FindFirstChild("Forest Pirate")).HumanoidRootPart.CFrame);
                                                                        end;
                                                                end;
                                                        until tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 1 or not _G.CDK_YM;
                                                elseif tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == -4 then
                                                        QuestYama_1 = false;
                                                        QuestYama_2 = true;
                                                        QuestYama_3 = false;
                                                        for I, e in pairs((game:GetService("Players")).LocalPlayer.QuestHaze:GetChildren()) do
                                                                for I, K in pairs(w) do
                                                                        if string.find(I, e.Name) and e.Value > 0 then
                                                                                if (K.Position - Root.Position).Magnitude <= 1000 and workspace.Enemies:FindFirstChild(I) then
                                                                                        for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                                                if e:FindFirstChild("HumanoidRootPart") and (e:FindFirstChild("Humanoid") and ((e:FindFirstChild("Humanoid")).Health > 0 and e:FindFirstChild("HazeESP"))) then
                                                                                                        repeat
                                                                                                                task.wait();
                                                                                                                G.Kill(e, _G.CDK_YM);
                                                                                                        until not _G.CDK_YM or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 2 or not e:FindFirstChild("HazeESP") or e.Humanoid.Health <= 0;
                                                                                                end;
                                                                                        end;
                                                                                else
                                                                                        _tp(K);
                                                                                end;
                                                                        end;
                                                                end;
                                                        end;
                                                elseif tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == -5 then
                                                        QuestYama_1 = false;
                                                        QuestYama_2 = false;
                                                        QuestYama_3 = true;
                                                        if workspace.Map:FindFirstChild("HellDimension") then
                                                                if (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                                                        for I, e in pairs(workspace.Map.HellDimension.Exit:GetChildren()) do
                                                                                if tonumber(I) == 2 then
                                                                                        repeat
                                                                                                task.wait();
                                                                                                Root.CFrame = workspace.Map.HellDimension.Exit.CFrame;
                                                                                        until not _G.CDK_YM or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
                                                                                end;
                                                                        end;
                                                                        EquipWeapon(_G.SelectWeapon);
                                                                        if tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) ~= 3 then
                                                                                repeat
                                                                                        task.wait();
                                                                                        repeat
                                                                                                task.wait();
                                                                                                _tp(workspace.Map.HellDimension.Torch1.Particles.CFrame);
                                                                                                for I, e in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                                                                        if e:IsA("ProximityPrompt") then
                                                                                                                fireproximityprompt(e);
                                                                                                        end;
                                                                                                end;
                                                                                        until (workspace.Map.HellDimension.Torch1.Particles.Position - Root.Position).Magnitude < 5;
                                                                                        task.wait(2);
                                                                                        _G.T1Yama = true;
                                                                                until not _G.CDK_YM or _G.T1Yama or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
                                                                                repeat
                                                                                        task.wait();
                                                                                        repeat
                                                                                                task.wait();
                                                                                                _tp(workspace.Map.HellDimension.Torch2.Particles.CFrame);
                                                                                                for I, e in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                                                                        if e:IsA("ProximityPrompt") then
                                                                                                                fireproximityprompt(e);
                                                                                                        end;
                                                                                                end;
                                                                                        until (workspace.Map.HellDimension.Torch2.Particles.Position - Root.Position).Magnitude < 5;
                                                                                        task.wait(2);
                                                                                        _G.T2Yama = true;
                                                                                until _G.T2Yama or _G.CDK_YM == false or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
                                                                                repeat
                                                                                        task.wait();
                                                                                        repeat
                                                                                                task.wait();
                                                                                                _tp(workspace.Map.HellDimension.Torch3.Particles.CFrame);
                                                                                                for I, e in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                                                                        if e:IsA("ProximityPrompt") then
                                                                                                                fireproximityprompt(e);
                                                                                                        end;
                                                                                                end;
                                                                                        until (workspace.Map.HellDimension.Torch3.Particles.Position - Root.Position).Magnitude < 5;
                                                                                        task.wait(2);
                                                                                        _G.T3Yama = true;
                                                                                until _G.T3Yama or _G.CDK_YM == false or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
                                                                        end;
                                                                        for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                                if ((e:FindFirstChild("HumanoidRootPart")).Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 300 then
                                                                                        if e:FindFirstChild("HumanoidRootPart") and (e:FindFirstChild("Humanoid") and (e:FindFirstChild("Humanoid")).Health > 0) then
                                                                                                repeat
                                                                                                        task.wait();
                                                                                                        G.Kill(e, _G.CDK_YM);
                                                                                                until not _G.CDK_YM or e.Humanoid.Health <= 0 or not e.Parent or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
                                                                                        end;
                                                                                end;
                                                                        end;
                                                                end;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                pcall(function()
                        if _G.CDK_YM then
                                if tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == -5 then
                                        if not workspace.Map:FindFirstChild("HellDimension") or (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > 1000 then
                                                local I = GetConnectionEnemies("Soul Reaper");
                                                if I then
                                                        repeat
                                                                task.wait();
                                                                _tp(I.HumanoidRootPart.CFrame);
                                                        until I.Humanoid.Health <= 0 or not _G.CDK_YM or not I.Parent or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Evil) == 3 or workspace.Map:FindFirstChild("HellDimension") and (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000;
                                                elseif plr.Backpack:FindFirstChild("Hallow Essence") or plr.Character:FindFirstChild("Hallow Essence") then
                                                        repeat
                                                                _tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
                                                                task.wait();
                                                        until ((CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)).Position - Root.Position).Magnitude <= 8;
                                                        EquipWeapon("Hallow Essence");
                                                elseif replicated:FindFirstChild("Soul Reaper") and (replicated:FindFirstChild("Soul Reaper")).Humanoid.Health > 0 then
                                                        _tp((replicated:FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame);
                                                else
                                                        if commF:InvokeServer("Bones", "Check") < 50 and (not workspace.Enemies:FindFirstChild("Soul Reaper") and (not replicated:FindFirstChild("Soul Reaper") and not workspace.Map:FindFirstChild("HellDimension"))) then
                                                                if workspace.Enemies:FindFirstChild("Reborn Skeleton") or workspace.Enemies:FindFirstChild("Living Zombie") or workspace.Enemies:FindFirstChild("Domenic Soul") or workspace.Enemies:FindFirstChild("Posessed Mummy") then
                                                                        for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                                if e.Name == "Reborn Skeleton" or e.Name == "Living Zombie" or e.Name == "Demonic Soul" or e.Name == "Posessed Mummy" then
                                                                                        if e:FindFirstChild("HumanoidRootPart") and (e:FindFirstChild("Humanoid") and (e:FindFirstChild("Humanoid")).Health > 0) then
                                                                                                repeat
                                                                                                        task.wait();
                                                                                                        G.Kill(e, _G.CDK_YM);
                                                                                                until not _G.CDK_YM or e.Humanoid.Health <= 0 or not e.Parent;
                                                                                        end;
                                                                                end;
                                                                        end;
                                                                else
                                                                        _tp(CFrame.new(-9515.2255859375, 164.00622558594, 5785.3833007812));
                                                                end;
                                                        else
                                                                commF:InvokeServer("Bones", "Buy", 1, 1);
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Tushita CDK",
    Description = "",

    Default = GetSetting("AutoTushitaCDK_Save", false),
    Callback = function(I)
        _G.CDK_TS = I


        _G.SaveData["AutoTushitaCDK_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        task.wait(0.1)
        while task.wait() do
                pcall(function()
                        if _G.CDK_TS then
                                if tostring(commF:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                                        task.wait(.7);
                                        commF:InvokeServer("CDKQuest", "OpenDoor");
                                        task.wait(.3);
                                        commF:InvokeServer("CDKQuest", "OpenDoor", true);
                                else
                                        if (commF:InvokeServer("CDKQuest", "Progress")).Finished == nil then
                                                commF:InvokeServer("CDKQuest", "StartTrial", "Good");
                                        elseif (commF:InvokeServer("CDKQuest", "Progress")).Finished == false then
                                                if tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == -3 then
                                                        QuestTushita_1 = true;
                                                        QuestTushita_2 = false;
                                                        QuestTushita_3 = false;
                                                        repeat
                                                                task.wait();
                                                                _tp(CFrame.new(-4602.5107421875, 16.446542739868, -2880.998046875));
                                                        until ((CFrame.new(-4602.5107421875, 16.446542739868, -2880.998046875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.CDK_TS or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 1;
                                                        if ((CFrame.new(-4602.5107421875, 16.446542739868, -2880.998046875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                                task.wait(.7);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
                                                                task.wait(.5);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
                                                        end;
                                                        task.wait(1);
                                                        repeat
                                                                task.wait();
                                                                _tp(CFrame.new(4001.1853027344, 10.089399337769, -2654.86328125));
                                                        until ((CFrame.new(4001.1853027344, 10.089399337769, -2654.86328125)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.CDK_TS or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 1;
                                                        if ((CFrame.new(4001.1853027344, 10.089399337769, -2654.86328125)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                                task.wait(.7);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
                                                                task.wait(.5);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
                                                        end;
                                                        task.wait(1);
                                                        repeat
                                                                task.wait();
                                                                _tp(CFrame.new(-9530.763671875, 7.2452087402344, -8375.5087890625));
                                                        until ((CFrame.new(-9530.763671875, 7.2452087402344, -8375.5087890625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.CDK_TS or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 1;
                                                        if ((CFrame.new(-9530.763671875, 7.2452087402344, -8375.5087890625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                                task.wait(.7);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
                                                                task.wait(.5);
                                                                commF:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
                                                        end;
                                                        task.wait(1);
                                                elseif tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == -4 then
                                                        QuestTushita_1 = false;
                                                        QuestTushita_2 = true;
                                                        QuestTushita_3 = false;
                                                        repeat
                                                                task.wait();
                                                                _G.AutoRaidCastle = true;
                                                        until not _G.CDK_TS or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 2;
                                                        _G.AutoRaidCastle = false;
                                                elseif tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == -5 then
                                                        QuestTushita_1 = false;
                                                        QuestTushita_2 = false;
                                                        QuestTushita_3 = true;
                                                        if workspace.Enemies:FindFirstChild("Cake Queen") then
                                                                for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                        if e.Name == "Cake Queen" then
                                                                                if e:FindFirstChild("Humanoid") and (e:FindFirstChild("HumanoidRootPart") and e.Humanoid.Health > 0) then
                                                                                        repeat
                                                                                                task.wait();
                                                                                                G.Kill(e, _G.CDK_TS);
                                                                                        until not _G.CDK_TS or not e.Parent or e.Humanoid.Health <= 0 or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 3;
                                                                                end;
                                                                        end;
                                                                end;
                                                        elseif replicated:FindFirstChild("Cake Queen") and (replicated:FindFirstChild("Cake Queen")).Humanoid.Health > 0 then
                                                                _tp((replicated:FindFirstChild("Cake Queen")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
                                                        else
                                                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                                                        for I, e in pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren()) do
                                                                                Ex = I;
                                                                        end;
                                                                        if Ex == 2 then
                                                                                repeat
                                                                                        task.wait();
                                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.HeavenlyDimension.Exit.CFrame;
                                                                                until not _G.CDK_TS or tonumber((commF:InvokeServer("CDKQuest", "Progress")).Good) == 3;
                                                                        end;
                                                                        repeat
                                                                                task.wait();
                                                                                repeat
                                                                                        task.wait();
                                                                                        _tp(CFrame.new(-22529.6171875, 5275.7739257812, 3873.5712890625));
                                                                                        for I, e in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                                                                if e:IsA("ProximityPrompt") then
                                                                                                        fireproximityprompt(e);
                                                                                                end;
                                                                                        end;
                                                                                until ((CFrame.new(-22529.6171875, 5275.7739257812, 3873.5712890625)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
                                                                                task.wait(2);
                                                                                _G.DoneT1 = true;
                                                                        until not _G.CDK_TS or _G.DoneT1;
                                                                        repeat
                                                                                task.wait();
                                                                                repeat
                                                                                        task.wait();
                                                                                        _tp(CFrame.new(-22637.291015625, 5281.365234375, 3749.2885742188));
                                                                                        for I, e in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                                                                if e:IsA("ProximityPrompt") then
                                                                                                        fireproximityprompt(e);
                                                                                                end;
                                                                                        end;
                                                                                until ((CFrame.new(-22637.291015625, 5281.365234375, 3749.2885742188)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
                                                                                task.wait(2);
                                                                                _G.DoneT2 = true;
                                                                        until _G.DoneT2 or _G.CDK_TS == false;
                                                                        repeat
                                                                                task.wait();
                                                                                repeat
                                                                                        task.wait();
                                                                                        _tp(CFrame.new(-22791.14453125, 5277.1655273438, 3764.5700683594));
                                                                                        for I, e in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                                                                if e:IsA("ProximityPrompt") then
                                                                                                        fireproximityprompt(e);
                                                                                                end;
                                                                                        end;
                                                                                until ((CFrame.new(-22791.14453125, 5277.1655273438, 3764.5700683594)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
                                                                                task.wait(2);
                                                                                _G.DoneT3 = true;
                                                                        until _G.DoneT3 or _G.CDK_TS == false;
                                                                        for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                                if ((e:FindFirstChild("HumanoidRootPart")).Position - (CFrame.new(-22695.7012, 5270.93652, 3814.42847, .11794927, 3.32185834e-08, .99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, .11794927)).Position).Magnitude <= 300 then
                                                                                        if e:FindFirstChild("HumanoidRootPart") and (e:FindFirstChild("Humanoid") and (e:FindFirstChild("Humanoid")).Health > 0) then
                                                                                                repeat
                                                                                                        task.wait();
                                                                                                        G.Kill(e, _G.CDK_TS);
                                                                                                until not _G.CDK_TS or e.Humanoid.Health <= 0 or not e.Parent;
                                                                                        end;
                                                                                end;
                                                                        end;
                                                                end;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
end
if World2 then
Quests:AddSection({"True Triple Katana Sword"});
Quests:AddToggle({
 Name = "Auto Buy Legendary Sword",
    Description = "",
    Default = GetSetting("TpLegendarySword_Save", false),
    Callback = function(I)
        _G.Tp_LgS = I


        _G.SaveData["TpLegendarySword_Save"] = I
        SaveSettings()


        if I then
            task.spawn(function()
                while _G.Tp_LgS do
                    pcall(function()
                        commF:InvokeServer("LegendarySwordDealer", "1")
                        commF:InvokeServer("LegendarySwordDealer", "2")
                        commF:InvokeServer("LegendarySwordDealer", "3")
                    end)
                    task.wait(1)
                end
            end)
        end
    end,
})
Quests:AddToggle({
 Name = "Teleport Legendary Sword Dealer",
    Description = "",

    Default = GetSetting("TpLegendarySword_Save", false),
    Callback = function(I)
        _G.Tp_LgS = I


        _G.SaveData["TpLegendarySword_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                if _G.Tp_LgS then
                        pcall(function()
                                for I, e in pairs(replicated.NPCs:GetChildren()) do
                                        if e.Name == "Legendary Sword Dealer " then
                                                _tp(e.HumanoidRootPart.CFrame);
                                        end;
                                end;
                        end);
                end;
        end;
end);

Quests:AddSection({"Law"});

Quests:AddToggle({
 Name = "Auto Law Raid",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.AutoLawKak = state
    end,
});

task.spawn(function()
    while task.wait(Sec) do
        if _G.AutoLawKak then
            pcall(function()

                commF:InvokeServer("BlackbeardReward", "Microchip", "2")


                fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)


                local enemy = GetConnectionEnemies("Order")
                if enemy then
                    repeat
                        task.wait()
                        G.Kill(enemy, _G.AutoLawKak)
                    until not _G.AutoLawKak or not enemy.Parent or enemy.Humanoid.Health <= 0
                else
                    _tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                end
            end)
        end
    end
end)
end
if World1 then
Quests:AddSection({"world 1 items"});
Quests:AddToggle({
 Name = "Auto Saw Sword",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoSaw = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.AutoSaw then
                                local I = GetConnectionEnemies("The Saw");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.AutoSaw);
                                        until _G.AutoSaw == false or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906));
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Saber Sword",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoSaber = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                pcall(function()
                        if _G.AutoSaber and (plr.Data.Level.Value >= 200 and (not plr.Backpack:FindFirstChild("Saber") and not plr.Character:FindFirstChild("Saber"))) then
                                if workspace.Map.Jungle.Final.Part.Transparency == 0 then
                                        if workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
                                                if ((CFrame.new(-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, .928667724, -4.39869794e-08, .37091279)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                                        _tp(plr.Character.HumanoidRootPart.CFrame);
                                                        task.wait(.5);
                                                        plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame;
                                                        task.wait(.5);
                                                        plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame;
                                                        task.wait(.5);
                                                        plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame;
                                                        task.wait(.5);
                                                        plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame;
                                                        task.wait(.5);
                                                        plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame;
                                                        task.wait(.5);
                                                else
                                                        _tp(CFrame.new(-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, .928667724, -4.39869794e-08, .37091279));
                                                end;
                                        else
                                                if workspace.Map.Desert.Burn.Part.Transparency == 0 then
                                                        if plr.Backpack:FindFirstChild("Torch") or plr.Character:FindFirstChild("Torch") then
                                                                EquipWeapon("Torch");
                                                                firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 0);
                                                                firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 1);
                                                                _tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, .761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587));
                                                        else
                                                                _tp(CFrame.new(-1610.00757, 11.5049858, 164.001587, .984807551, -0.167722285, -0.0449818149, .17364943, .951244235, .254912198, 3.42372805e-05, -0.258850515, .965917408));
                                                        end;
                                                else
                                                        if commF:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                                                commF:InvokeServer("ProQuestProgress", "GetCup");
                                                                task.wait(.5);
                                                                EquipWeapon("Cup");
                                                                task.wait(.5);
                                                                commF:InvokeServer("ProQuestProgress", "FillCup", plr.Character.Cup);
                                                                task.wait(Sec);
                                                                commF:InvokeServer("ProQuestProgress", "SickMan");
                                                        else
                                                                if commF:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                                                        commF:InvokeServer("ProQuestProgress", "RichSon");
                                                                elseif commF:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                                                        if workspace.Enemies:FindFirstChild("Mob Leader") or replicated:FindFirstChild("Mob Leader") then
                                                                                _tp(CFrame.new(-2967.59521, -4.91089821, 5328.70703, .342208564, -0.0227849055, .939347804, .0251603816, .999569714, .0150796166, -0.939287126, .0184739735, .342634559));
                                                                                for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                                                        if e.Name == "Mob Leader" and G.Alive(e) then
                                                                                                repeat
                                                                                                        task.wait();
                                                                                                        G.Kill(e, _G.AutoSaber);
                                                                                                until e.Humanoid.Health <= 0 or _G.AutoSaber == false;
                                                                                        end;
                                                                                end;
                                                                        end;
                                                                elseif commF:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                                                        commF:InvokeServer("ProQuestProgress", "RichSon");
                                                                        EquipWeapon("Relic");
                                                                        _tp(CFrame.new(-1404.91504, 29.9773273, 3.80598116, .876514494, 5.66906877e-09, .481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, .876514494));
                                                                end;
                                                        end;
                                                end;
                                        end;
                                else
                                        if workspace.Enemies:FindFirstChild("Saber Expert") or replicated:FindFirstChild("Saber Expert") then
                                                for I, e in pairs(workspace.Enemies:GetChildren()) do
                                                        if e.Name == "Saber Expert" and G.Alive(e) then
                                                                repeat
                                                                        task.wait();
                                                                        G.Kill(e, _G.AutoSaber);
                                                                until e.Humanoid.Health <= 0 or _G.AutoSaber == false;
                                                                if e.Humanoid.Health <= 0 then
                                                                        commF:InvokeServer("ProQuestProgress", "PlaceRelic");
                                                                end;
                                                        end;
                                                end;
                                        else
                                                _tp(CFrame.new(-1401.85046, 29.9773273, 8.81916237, .85820812, 8.76083845e-08, .513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, .85820812));
                                        end;
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Usoap\'s Hat",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoGetUsoap = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AutoGetUsoap then
                                for I, e in pairs(workspace.Characters:GetChildren()) do
                                        if e.Name ~= plr.Name then
                                                if e.Humanoid.Health > 0 and (e:FindFirstChild("HumanoidRootPart") and (e.Parent and (Root.Position - e.HumanoidRootPart.Position).Magnitude <= 230)) then
                                                        repeat
                                                                task.wait();
                                                                EquipWeapon(_G.SelectWeapon);
                                                                _tp(e.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2));
                                                        until _G.AutoGetUsoap == false or e.Humanoid.Health <= 0 or not e.Parent or not e:FindFirstChild("HumanoidRootPart") or not e:FindFirstChild("Humanoid");
                                                end;
                                        end;
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Bisento V2",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Greybeard = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.Greybeard then
                        pcall(function()
                                if not GetWP("Bisento") then
                                        commF:InvokeServer("BuyItem", "Bisento");
                                elseif GetWP("Bisento") then
                                        commF:InvokeServer("LoadItem", "Bisento");
                                        local I = GetConnectionEnemies("Greybeard");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.Greybeard);
                                                until not _G.Greybeard or not I.Parent or I.Humanoid.Health <= 0;
                                        else
                                                _tp(CFrame.new(-5023.3833007812, 28.652032852173, 4332.3818359375));
                                        end;
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Warden Sword",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.WardenBoss = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.WardenBoss then
                        pcall(function()
                                local I = GetConnectionEnemies("Chief Warden");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.WardenBoss);
                                        until _G.WardenBoss == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939));
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Marine Coat",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.MarinesCoat = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.MarinesCoat then
                        pcall(function()
                                local I = GetConnectionEnemies("Vice Admiral");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.MarinesCoat);
                                        until _G.MarinesCoat == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375));
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Swan Coat",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.SwanCoat = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.SwanCoat then
                        pcall(function()
                                local I = GetConnectionEnemies("Swan");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.SwanCoat);
                                        until _G.SwanCoat == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812));
                                end;
                        end);
                end;
        end;
end);
end
if World2 then
Quests:AddSection({"world 2 items"});
Quests:AddToggle({
 Name = "Auto Rengoku Sword",
    Description = "",
    Default = false,
    Callback = function(I)
        _G.AutoKeyRen = I
    end,
})

task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.AutoKeyRen then

                if plr.Backpack:FindFirstChild(K[3]) or plr.Character:FindFirstChild(K[3]) then
                    EquipWeapon(K[3])
                    task.wait(0.1)

                    _tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                else

                    local enemy = GetConnectionEnemies("Awakened Ice Admiral")
                    if enemy then
                        repeat
                            task.wait()

                            G.Kill(enemy, _G.AutoKeyRen)
                        until plr.Backpack:FindFirstChild(K[3])
                            or not enemy.Parent
                            or enemy.Humanoid.Health <= 0
                            or _G.AutoKeyRen == false
                    else

                        _tp(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                        task.wait(1)
                    end
                end
            end
        end)
    end
end)
Quests:AddToggle({
 Name = "Auto Dragon Trident",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoTridentW2 = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                pcall(function()
                        if _G.AutoTridentW2 then
                                local I = GetConnectionEnemies("Tide Keeper");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.AutoTridentW2);
                                        until _G.AutoTridentW2 == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188));
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Long Sword",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.LongsWord = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                pcall(function()
                        if _G.LongsWord then
                                local I = GetConnectionEnemies("Diamond");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.LongsWord);
                                        until _G.LongsWord == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407));
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Black Spikey",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.BlackSpikey = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.BlackSpikey then
                        pcall(function()
                                local I = GetConnectionEnemies("Jeremy");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.BlackSpikey);
                                        until _G.BlackSpikey == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109));
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Midnight Blade",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoEcBoss = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.AutoEcBoss then
                                if GetM("Ectoplasm") >= 99 then
                                        commF:InvokeServer("Ectoplasm", "Buy", 3);
                                elseif GetM("Ectoplasm") <= 99 then
                                        local I = GetConnectionEnemies("Cursed Captain");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.AutoEcBoss);
                                                until not _G.AutoEcBoss or not I.Parent or I.Humanoid.Health <= 0;
                                        else
                                                commF:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
                                                task.wait(.5);
                                                _tp(CFrame.new(916.928589, 181.092773, 33422));
                                        end;
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Darkbeard",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_Def_DarkCoat = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.Auto_Def_DarkCoat then
                        pcall(function()
                                if GetBP("Fist of Darkness") and not workspace.Enemies:FindFirstChild("Darkbeard") then
                                        _tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531));
                                elseif GetConnectionEnemies("Darkbeard") then
                                        local I = GetConnectionEnemies("Darkbeard");
                                        if I then
                                                repeat
                                                        task.wait();
                                                        G.Kill(I, _G.Auto_Def_DarkCoat);
                                                until _G.Auto_Def_DarkCoat == false or not I.Parent or I.Humanoid.Helath <= 0;
                                        end;
                                elseif not GetBP("Fist of Darkness") and not GetConnectionEnemies("Darkbeard") then
                                        repeat
                                                task.wait(.1);
                                                _G.AutoFarmChest = true;
                                        until not _G.Auto_Def_DarkCoat or GetBP("Fist of Darkness") or GetConnectionEnemies("Darkbeard");
                                        _G.AutoFarmChest = false;
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Unlocked DonSwan",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_DonAcces = I;
        end,
});
task.spawn(function()
        while task.wait(.1) do
                if _G.Auto_DonAcces then
                        pcall(function()
                                if (commF:InvokeServer("GetUnlockables")).FlamingoAccess == nil and plr.Data.Level.Value >= 1500 then
                                        FruitPrice = {};
                                        FruitStore = {};
                                        for I, e in next, (replicated:WaitForChild("Remotes")).CommF_:InvokeServer("GetFruits") do
                                                if e.Price >= 1000000 then
                                                        table.insert(FruitPrice, e.Name);
                                                end;
                                        end;
                                        for I, e in pairs(commF:InvokeServer("getInventoryFruits")) do
                                                for I, e in pairs(e) do
                                                        if I == "Name" then
                                                                table.insert(FruitStore, e);
                                                        end;
                                                end;
                                                commF:InvokeServer("Cousin", "Buy");
                                                for I, e in pairs(FruitPrice) do
                                                        for I, K in pairs(FruitStore) do
                                                                if e == K and (commF:InvokeServer("GetUnlockables")).FlamingoAccess == nil then
                                                                        _G.StoreF = false;
                                                                        if not plr.Backpack:FindFirstChild(FruitStore) then
                                                                                commF:InvokeServer("LoadFruit", tostring(e));
                                                                        else
                                                                                commF:InvokeServer("TalkTrevor", "1");
                                                                                commF:InvokeServer("TalkTrevor", "2");
                                                                                commF:InvokeServer("TalkTrevor", "3");
                                                                        end;
                                                                end;
                                                        end;
                                                end;
                                                if (commF:InvokeServer("GetUnlockables")).FlamingoAccess ~= nil then
                                                        _G.StoreF = true;
                                                        _G.Auto_DonAcces = false;
                                                end;
                                        end;
                                end;
                        end);
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Swan Glasses",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_SwanGG = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                if _G.Auto_SwanGG then
                        pcall(function()
                                local I = GetConnectionEnemies("Don Swan");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.Auto_SwanGG);
                                        until _G.Auto_SwanGG == false or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875));
                                end;
                        end);
                end;
        end;
end);
end
if World3 then
Quests:AddSection({"Sea 3"});
Quests:AddToggle({
 Name = "Auto Canvendish Sword",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_Cavender = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Cavender then
                                local I = GetConnectionEnemies("Beautiful Pirate");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.Auto_Cavender);
                                        until not _G.Auto_Cavender or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(5283.6094, 22.5622, -110.7829));
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Twin Hooks",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.TwinHook = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.TwinHook then
                                local I = GetConnectionEnemies("Captain Elephant");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.TwinHook);
                                        until not _G.TwinHook or I.Humanoid.Health <= 0;
                                else
                                        commF:InvokeServer("requestEntrance", Vector3.new(-12471.1699, 374.9402, -7551.6777));
                                        task.wait(.2);
                                        _tp(CFrame.new(-13376.7578, 433.2869, -8071.3926));
                                end;
                        end;
                end);
        end;
end);
Quests:AddToggle({
 Name = "Auto Serpent Bow",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoSerpentBow = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoSerpentBow then
                        local I = GetConnectionEnemies("Hydra Leader");
                        if I then
                                repeat
                                        task.wait();
                                        G.Kill(I, _G.AutoSerpentBow);
                                until not _G.AutoSerpentBow or not I.Parent or I.Humanoid.Health <= 0;
                        else
                                _tp(CFrame.new(5821.898, 1019.0951, -73.7192));
                        end;
                end;
        end;
end);
Quests:AddToggle({
 Name = "Auto Lei Accessory",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.AutoKilo = I;
        end,
});
task.spawn(function()
        while task.wait(.2) do
                if _G.AutoKilo then
                        pcall(function()
                                local I = GetConnectionEnemies("Kilo Admiral");
                                if I then
                                        repeat
                                                task.wait();
                                                G.Kill(I, _G.AutoKilo);
                                        until not _G.AutoKilo or not I.Parent or I.Humanoid.Health <= 0;
                                else
                                        _tp(CFrame.new(2764.2234, 432.4615, -7144.458));
                                end;
                        end);
                end;
        end;
end);
end
Fruit:AddSection({"Raiding"});
e = {
                "Flame",
                "Ice",
                "Quake",
                "Light",
                "Dark",
                "String",
                "Rumble",
                "Magma",
                "Human: Buddha",
                "Sand",
                "Bird: Phoenix",
                "Dough",
        };
Fruit:AddDropdown({
        Name = "Select Chip",
        Description = "",
        Options = e,
        Default = "Flame",
        Multi = false,
        Callback = function(I)
                _G.SelectChip = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.AutoSelectDungeon then
                        pcall(function()
                                if GetBP("Flame-Flame") then
                                        _G.SelectChip = "Flame";
                                elseif GetBP("Ice-Ice") then
                                        _G.SelectChip = "Ice";
                                elseif GetBP("Quake-Quake") then
                                        _G.SelectChip = "Quake";
                                elseif GetBP("Light-Light") then
                                        _G.SelectChip = "Light";
                                elseif GetBP("Dark-Dark") then
                                        _G.SelectChip = "Dark";
                                elseif GetBP("String-String") then
                                        _G.SelectChip = "String";
                                elseif GetBP("Rumble-Rumble") then
                                        _G.SelectChip = "Rumble";
                                elseif GetBP("Magma-Magma") then
                                        _G.SelectChip = "Magma";
                                elseif GetBP("Human-Human: Buddha Fruit") then
                                        _G.SelectChip = "Human: Buddha";
                                elseif GetBP("Dough-Dough") then
                                        _G.SelectChip = "Dough";
                                elseif GetBP("Sand-Sand") then
                                        _G.SelectChip = "Sand";
                                elseif GetBP("Bird-Bird: Phoenix") then
                                        _G.SelectChip = "Bird: Phoenix";
                                else
                                        _G.SelectChip = "Ice";
                                end;
                        end);
                end;
        end;
end);
Fruit:AddToggle({
        Name = "Buy Chip With Fruit",
        Description = "Use your lowest fruit in your bag",
        Default = false,
        Callback = function(state)
                _G.AutoBuyChip = state

                task.spawn(function()
                        while _G.AutoBuyChip do

                                if not GetBP("Special Microchip") then

                                        local I = {}

                                        for _, data in next, commF:InvokeServer("GetFruits") do
                                                local rarity = tostring(data.Rarity or ""):lower()


                                                if data.Price <= 1150000
                                                        or rarity == "common"
                                                        or rarity == "uncommon"
                                                        or rarity == "rare"
                                                then
                                                        table.insert(I, data.Name)
                                                end
                                        end


                                        for _, fruitName in pairs(I) do
                                                if not GetBP("Special Microchip") then
                                                        commF:InvokeServer("LoadFruit", fruitName)
                                                        commF:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                                                end
                                        end
                                end

                                task.wait(3)
                        end
                end)
        end
})

Fruit:AddSection({"Raid Farming"});

Fruit:AddToggle({
        Name  = "Auto Start Raid",
    Description = "",
    Default = false,
    Callback = function(I)
        _G.Auto_StartRaid = I;
    end,
});

task.spawn(function()

    while task.wait(10) do

        if _G.Auto_StartRaid then
            pcall(function()

                if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then


                    if GetBP("Special Microchip") then

                        if World2 then
                            _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684));
                            fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);

                        elseif World3 then

                            commF:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602));


                            task.wait(0.5);



                            _tp(CFrame.new(-5033.50879, 315.014252, -2947.77539));


                            fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
                        end;

                    end;
                end;
            end);
        end;
    end;
end);

Fruit:AddToggle({
        Name  = "Auto Complete Raid",
    Description = "",
    Default = false,
    Callback = function(I)
        _G.Raiding = I
    end,
})

function IsIslandRaid(cu)
    local locs = game:GetService("Workspace")["_WorldOrigin"].Locations
    if locs:FindFirstChild("Island " .. cu) then
        local min = 4500

        for _, v in ipairs(locs:GetChildren()) do
            if v.Name == "Island " .. cu then
                local dist = (v.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if dist < min then
                    min = dist
                end
            end
        end

        for _, v in ipairs(locs:GetChildren()) do
            if v.Name == "Island " .. cu then
                local dist = (v.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if dist <= min then
                    return v
                end
            end
        end
    end
end

function getNextIsland()
    local order = {5,4,3,2,1}
    for _, id in ipairs(order) do
        local island = IsIslandRaid(id)
        if island then
            local dist = (island.Position - plr.Character.HumanoidRootPart.Position).Magnitude
            if dist <= 4500 then
                return island
            end
        end
    end
end

function attackNearbyEnemies()
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
            if mob.Humanoid.Health > 0 then
                local dist = (mob.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if dist <= 1000 then
                    repeat
                        G.Kill(mob, _G.Raiding)
                        task.wait()
                    until not _G.Raiding or not mob.Parent or mob.Humanoid.Health <= 0
                end
            end
        end
    end
end

task.spawn(function()
pcall(function()
while task.wait(Sec) do
    if _G.Raiding then

        if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then


            attackNearbyEnemies()


            local nextIsland = getNextIsland()
            if nextIsland then

                _tp(nextIsland.CFrame * CFrame.new(0, 50, 0))

                NextIs = true
            else
                NextIs = false
            end

        else
            NextIs = false
        end

    else
        NextIs = false
    end
end
end)
end)

Fruit:AddToggle({
        Name = "Auto Awakening",
        Description = "",
        Default = false,
        Callback = function(I)
                _G.Auto_Awakener = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Auto_Awakener then
                                commF:InvokeServer("Awakener", "Check");
                                commF:InvokeServer("Awakener", "Awaken");
                        end;
                end);
        end;
end);
Fruit:AddSection({"Fruits Options"});
local J5 = {};
local function i5(I)
        local e = tostring(I);
        while true do
                e, k = e:gsub("^(-?%d+)(%d%d%d)", "%1,%2");
                if k == 0 then
                        break;
                end;
        end;
        return e;
end;
for I, e in pairs(commF:InvokeServer("GetFruits", true)) do
        if e.OnSale == true then
                local I = i5(e.Price);
                local K = e.Name;
                table.insert(J5, K);
        end;
end;
local C5 = {};
for I, e in pairs(commF:InvokeServer("GetFruits", false)) do
        if e.OnSale == true then
                local I = i5(e.Price);
                local K = e.Name;
                table.insert(C5, K);
        end;
end;
Fruit:AddDropdown({
        Name = "Select Fruit Stock",
        Description = "",
        Options = C5,
        Default = false,
        Multi = false,
        Callback = function(I)
                _G.SelectFruit = I;
        end,
});
Fruit:AddButton({ Name = "Buy Basic Stock", Description = "", Callback = function()
                commF:InvokeServer("PurchaseRawFruit", _G.SelectFruit);
        end });
Fruit:AddDropdown({
        Name = "Select Mirage Fruit",
        Description = "",
        Options = J5,
        Default = false,
        Multi = false,
        Callback = function(I)
                SelectF_Adv = I;
        end,
});
local M5 = {};
for I, e in pairs(commF:InvokeServer("GetFruits", false)) do
        if e.OnSale == true then
                local I = i5(e.Price);
                local K = e.Name;
                table.insert(M5, K);
        end;
end;
Fruit:AddButton({ Name = "Buy Mirage Stock", Description = "", Callback = function()
                commF:InvokeServer("PurchaseRawFruit", SelectF_Adv);
        end });
Fruit:AddToggle({
        Name  = "Auto Random Fruit",
    Description = "Automatic random devil fruit",

    Default = GetSetting("AutoRandomFruit_Save", false),
    Callback = function(I)
        _G.Random_Auto = I


        _G.SaveData["AutoRandomFruit_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                pcall(function()
                        if _G.Random_Auto then
                                commF:InvokeServer("Cousin", "Buy");
                        end;
                end);
        end;
end);
Quests:AddToggle({
        Name = "Auto Drop Fruit",
        Description = "Automatic drop devil fruit",
        Default = false,
        Callback = function(I)
                _G.DropFruit = I;
        end,
});
task.spawn(function()
        while task.wait(Sec) do
                if _G.DropFruit then
                        pcall(function()
                                DropFruits();
                        end);
                end;
        end;
end);
Fruit:AddToggle({
        Name  = "Auto Store Fruit",
    Description = "Automatic store devil fruit",

    Default = GetSetting("AutoStoreFruit_Save", false),
    Callback = function(I)
        _G.StoreF = I


        _G.SaveData["AutoStoreFruit_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                if _G.StoreF then
                        pcall(function()
                                UpdStFruit();
                        end);
                end;
        end;
end);
Fruit:AddToggle({
        Name  = "Auto Tween to Fruit",
    Description = "Automatic tween to get devil fruit",

    Default = GetSetting("AutoTweenFruit_Save", false),
    Callback = function(I)
        _G.TwFruits = I


        _G.SaveData["AutoTweenFruit_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                if _G.TwFruits then
                        pcall(function()
                                for I, e in pairs(workspace:GetChildren()) do
                                        if string.find(e.Name, "Fruit") then
                                                _tp(e.Handle.CFrame);
                                        end;
                                end;
                        end);
                end;
        end;
end);
Fruit:AddToggle({
        Name  = "Auto Collect Fruit",
    Description = "Automatic bring devil fruit",

    Default = GetSetting("AutoCollectFruit_Save", false),
    Callback = function(I)
        _G.InstanceF = I


        _G.SaveData["AutoCollectFruit_Save"] = I


        SaveSettings()
    end,
})
task.spawn(function()
        while task.wait(Sec) do
                if _G.InstanceF then
                        pcall(function()
                                collectFruits(_G.InstanceF);
                        end);
                end;
        end;
end);

do
Fruit:AddSection({"Fruit Shop Sniper"});

local ZX_FruitList = {
    "Rocket-Rocket", "Spin-Spin", "Blade-Blade", "Spring-Spring",
    "Bomb-Bomb", "Smoke-Smoke", "Spike-Spike", "Flame-Flame",
    "Ice-Ice", "Sand-Sand", "Dark-Dark", "Eagle-Eagle",
    "Diamond-Diamond", "Light-Light", "Rubber-Rubber", "Ghost-Ghost",
    "Magma-Magma", "Quake-Quake", "Buddha-Buddha", "Love-Love",
    "Creation-Creation", "Spider-Spider", "Sound-Sound",
    "Phoenix-Phoenix", "Portal-Portal", "Lightning-Lightning",
    "Pain-Pain", "Blizzard-Blizzard", "Gravity-Gravity",
    "T-Rex-T-Rex", "Mammoth-Mammoth", "Dough-Dough",
    "Shadow-Shadow", "Venom-Venom", "Gas-Gas",
    "Control-Control", "Spirit-Spirit", "Leopard-Leopard",
    "Yeti-Yeti", "Kitsune-Kitsune", "Dragon-Dragon"
}

Fruit:AddDropdown({
    Name = "Select Fruit to Buy (Sniper)",
    Description = "Choose the fruit to auto-buy from shop",
    Options = ZX_FruitList,
    Default = GetSetting("ZX_SelectFruitSniper_Save", "Dough-Dough"),
    Multi = false,
    Callback = function(Value)
        getgenv().ZX_SelectFruitSniper = Value
        _G.SaveData["ZX_SelectFruitSniper_Save"] = Value
        SaveSettings()
    end,
});

_G.ZX_AutoBuyFruitSniper = false
Fruit:AddToggle({
    Name = "Auto Buy Fruit (Shop Sniper)",
    Description = "Automatically buys selected fruit when it appears in shop",
    Default = GetSetting("ZX_AutoBuyFruitSniper_Save", false),
    Callback = function(Value)
        _G.ZX_AutoBuyFruitSniper = Value
        _G.SaveData["ZX_AutoBuyFruitSniper_Save"] = Value
        SaveSettings()
    end,
});

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.ZX_AutoBuyFruitSniper and getgenv().ZX_SelectFruitSniper then
                commF:InvokeServer("GetFruits")
                commF:InvokeServer("PurchaseRawFruit", getgenv().ZX_SelectFruitSniper)
            end
        end)
    end
end)

Fruit:AddSection({"Fruit Stock Checker"});

local function ZX_FormatNumber(num)
    local formatted = tostring(num)
    while true do
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return formatted
end

local function ZX_CheckSpecificFruit(fruitName)
    local success, stock = pcall(function()
        return commF:InvokeServer("GetFruits", true)
    end)
    if success and stock then
        for _, fruit in pairs(stock) do
            if fruit.Name == fruitName and fruit.OnSale then
                return true, fruit.Price
            end
        end
    end
    local success2, normalStock = pcall(function()
        return commF:InvokeServer("GetFruits")
    end)
    if success2 and normalStock then
        for _, fruit in pairs(normalStock) do
            if fruit.Name == fruitName and fruit.OnSale then
                return true, fruit.Price
            end
        end
    end
    return false, nil
end

Fruit:AddDropdown({
    Name = "Select Fruit to Check",
    Description = "Choose a fruit to check its stock",
    Options = ZX_FruitList,
    Default = "Dough-Dough",
    Multi = false,
    Callback = function(Value)
        _G.ZX_CheckFruit = Value
    end,
});

local ZX_FruitCheckResult = Fruit:AddParagraph({
    Title = "Fruit Status",
    Desc = "Select a fruit and press Check"
});

Fruit:AddButton({
    Name = "Check Selected Fruit",
    Description = "Check if the selected fruit is in stock",
    Callback = function()
        if not _G.ZX_CheckFruit then
            ZX_FruitCheckResult:SetDesc("Please select a fruit first")
            return
        end
        pcall(function()
            local inStock, price = ZX_CheckSpecificFruit(_G.ZX_CheckFruit)
            if inStock then
                ZX_FruitCheckResult:SetDesc("✅ " .. _G.ZX_CheckFruit .. " is in stock!\nPrice: $" .. ZX_FormatNumber(price))
            else
                ZX_FruitCheckResult:SetDesc("❌ " .. _G.ZX_CheckFruit .. " is not in stock")
            end
        end)
    end,
});

_G.ZX_AutoNotifyFruit = false
Fruit:AddToggle({
    Name = "Auto Notify when Fruit in Stock",
    Description = "Alerts you every 30s when selected fruit appears in shop",
    Default = GetSetting("ZX_AutoNotifyFruit_Save", false),
    Callback = function(Value)
        _G.ZX_AutoNotifyFruit = Value
        _G.SaveData["ZX_AutoNotifyFruit_Save"] = Value
        SaveSettings()
    end,
});

task.spawn(function()
    while task.wait(30) do
        if _G.ZX_AutoNotifyFruit and _G.ZX_CheckFruit then
            pcall(function()
                local inStock, price = ZX_CheckSpecificFruit(_G.ZX_CheckFruit)
                if inStock then
                    ZX_FruitCheckResult:SetDesc("✅ " .. _G.ZX_CheckFruit .. " is in stock!\nPrice: $" .. ZX_FormatNumber(price))
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Zythera-X | Fruit Alert!",
                        Text = _G.ZX_CheckFruit .. " is now in stock!\nPrice: $" .. ZX_FormatNumber(price),
                        Duration = 10,
                    })
                end
            end)
        end
    end
end)

Setting:AddSection({"Codes"});
Setting:AddButton({
        Name = "Redeem All Codes",
        Description = "",
        Callback = function()
                local Codes = {
                        "KITT_RESET", "Sub2UncleKizaru", "SUB2GAMERROBOT_RESET1", "Sub2Fer999", "Enyu_is_Pro", "JCWK",
                        "StarcodeHEO", "MagicBus", "KittGaming", "Sub2CaptainMaui", "Sub2OfficalNoobie", "TheGreatAce",
                        "Sub2NoobMaster123", "Sub2Daigrock", "Axiore", "StrawHatMaine", "TantaiGaming", "Bluxxy",
                        "SUB2GAMERROBOT_EXP1", "Chandler", "NOMOREHACK", "BANEXPLOIT", "WildDares", "BossBuild",
                        "GetPranked", "EARN_FRUITS", "FIGHT4FRUIT", "NOEXPLOITER", "NOOB2ADMIN", "CODESLIDE", "ADMINHACKED",
                        "ADMINDARES", "fruitconcepts", "krazydares", "TRIPLEABUSE", "SEATROLLING", "24NOADMIN", "REWARDFUN",
                        "NEWTROLL", "fudd10_v2", "Fudd10", "Bignews", "SECRET_ADMIN"
                };

                for _, code in ipairs(Codes) do
                        pcall(function()
                                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code);
                        end);
                end;
        end,
});

Setting:AddSection({"Team"});
Setting:AddButton({ Name = "Set Pirate Team", Description = "", Callback = function()
                Pirates();
        end });
Setting:AddButton({ Name = "Set Marine Team", Description = "", Callback = function()
                Marines();
        end });

_G.Lightning = _G.Lightning or false
_G.NoClipRock = _G.NoClipRock or false
Setting:AddSection({"Sea / Boat Settings"})
Setting:AddToggle({
    Name = "Lightning (Day Light)",
    Description = "Force game time to noon",
    Default = false,
    Callback = function(I) _G.Lightning = I end,
})
Setting:AddToggle({
    Name = "Boat NoClip",
    Description = "Disable CanCollide on all boat parts",
    Default = false,
    Callback = function(I) _G.NoClipRock = I end,
})
Setting:AddToggle({
    Name = "Use All Devil Fruit Skills",
    Description = "Bulk toggle Z/X/C/V/F for Blox Fruit",
    Default = true,
    Callback = function(I)
        for _, key in ipairs({"Z", "X", "C", "V", "F"}) do
            _G.SelectedSkills["Blox Fruit"][key] = I
        end
    end,
})
Setting:AddToggle({
    Name = "Use All Melee Skills",
    Description = "Bulk toggle Z/X/C for Melee",
    Default = true,
    Callback = function(I)
        for _, key in ipairs({"Z", "X", "C"}) do
            _G.SelectedSkills.Melee[key] = I
        end
    end,
})
Setting:AddToggle({
    Name = "Use All Sword Skills",
    Description = "Bulk toggle Z/X for Sword",
    Default = true,
    Callback = function(I)
        for _, key in ipairs({"Z", "X"}) do
            _G.SelectedSkills.Sword[key] = I
        end
    end,
})
Setting:AddToggle({
    Name = "Use All Gun Skills",
    Description = "Bulk toggle Z/X for Gun",
    Default = true,
    Callback = function(I)
        for _, key in ipairs({"Z", "X"}) do
            _G.SelectedSkills.Gun[key] = I
        end
    end,
})
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.Lightning then
                Lighting.ClockTime = 12
            end
            if _G.NoClipRock or _G.SailBoats then
                for _, boat in pairs(workspace.Boats:GetChildren()) do
                    for _, part in pairs(boat:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        end)
    end
end)

Setting:AddSection({"Others"});
HakiSt = {
                "State 0",
                "State 1",
                "State 2",
                "State 3",
                "State 4",
                "State 5",
        };
Setting:AddDropdown({
        Name = "Haki States",
        Description = "",
        Options = HakiSt,
        Default = false,
        Multi = false,
        Callback = function(I)
                _G.SelectStateHaki = I;
        end,
});
Setting:AddButton({ Name = "Change Haki", Description = "", Callback = function()
                if _G.SelectStateHaki == "State 0" then
                        commF:InvokeServer("ChangeBusoStage", 0);
                elseif _G.SelectStateHaki == "State 1" then
                        commF:InvokeServer("ChangeBusoStage", 1);
                elseif _G.SelectStateHaki == "State 2" then
                        commF:InvokeServer("ChangeBusoStage", 2);
                elseif _G.SelectStateHaki == "State 3" then
                        commF:InvokeServer("ChangeBusoStage", 3);
                elseif _G.SelectStateHaki == "State 4" then
                        commF:InvokeServer("ChangeBusoStage", 4);
                elseif _G.SelectStateHaki == "State 5" then
                        commF:InvokeServer("ChangeBusoStage", 5);
                end;
        end });
Setting:AddButton({ Name = "Nofog", Description = "", Callback = function()
                if Lighting:FindFirstChild("LightingLayers") then
                        Lighting.LightingLayers:Destroy();
                end;
                if Lighting:FindFirstChild("SeaTerrorCC") then
                        Lighting.SeaTerrorCC:Destroy();
                end;
                if Lighting:FindFirstChild("FantasySky") then
                        Lighting.FantasySky:Destroy();
                end;
        end });
Setting:AddToggle({
        Name = "Walk on Water",
        Description = "walk on water",
        Default = true,
        Callback = function(I)
                _G.WalkWater_Part = I;
                local e = (game:GetService("Workspace")).Map["WaterBase-Plane"];
                if _G.WalkWater_Part then
                        e.Size = Vector3.new(1000, 112, 1000);
                else
                        e.Size = Vector3.new(1000, 80, 1000);
                end;
        end,
});
Setting:AddSection({"Bring Mobs & Fps"});

Setting:AddToggle({
        Name = "Bring Mob",
        Description = "Bring mobs near you while farming",
        Default = GetSetting("BringMobs_Save", true),
        Callback = function(I)
                _B = I
        _G.SaveData["BringMobs_Save"] = I
        SaveSettings()
        end,
})

Setting:AddSlider({
    Name = "Bring Mobs Range",
    Description = "Maximum range to bring mobs",
    Min = 50,
    Max = 500,
    Default = _G.BringRange or 250,
    Increment = 10,
    Callback = function(v)
        _G.BringRange = v
        _G.BringRadius = v
        _G.SaveData["BringRange_Save"] = v
        SaveSettings()
    end,
})

Setting:AddSlider({
    Name = "Max Bring Mobs",
    Description = "Maximum number of mobs to bring",
    Min = 1,
    Max = 30,
    Default = _G.MaxBringMobs or 15,
    Increment = 1,
    Callback = function(v)
        _G.MaxBringMobs = v
        _G.SaveData["MaxBringMobs_Save"] = v
        SaveSettings()
    end,
})

Setting:AddButton({ Name = "Fps Fix Lag", Description = "Reduce lag and boost FPS", Callback = function()
                LowCpu();
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Zythera-X",
                    Text = "FPS Fix Applied!",
                    Duration = 3
                })
        end })

Setting:AddSection({"Fps & Animation"});

end

_G.NoAni = _G.NoAni or false
local player = game.Players.LocalPlayer
local AnimConnection

local function EnableNoAni(char)
        local humanoid = char:WaitForChild("Humanoid")


        for _,track in pairs(humanoid:GetPlayingAnimationTracks()) do
                track:Stop()
        end


        AnimConnection = humanoid.AnimationPlayed:Connect(function(track)
                if _G.NoAni then
                        track:Stop()
                end
        end)
end

local function DisableNoAni()
        if AnimConnection then
                AnimConnection:Disconnect()
                AnimConnection = nil
        end
end

local function SetupChar(char)
        if _G.NoAni then
                EnableNoAni(char)
        end
end

if player.Character then
        SetupChar(player.Character)
end

player.CharacterAdded:Connect(SetupChar)

Setting:AddToggle({
        Name = "No Animation",
        Description = "",
        Default = GetSetting("NoAni_Save", false),

        Callback = function(I)
                _G.NoAni = I
                _G.SaveData["NoAni_Save"] = I
                SaveSettings()

                if I then
                        if player.Character then
                                EnableNoAni(player.Character)
                        end
                else
                        DisableNoAni()
                end
        end
})

Setting:AddButton({
    Name = "Stretch the screen",
    Description = "",
    Callback = function()

        getgenv().Resolution = {
            [".gg/scripters"] = 0.65
        }

        local Camera = workspace.CurrentCamera


        if getgenv().gg_scripters == nil then
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    Camera.CFrame =
                        Camera.CFrame *
                        CFrame.new(
                            0, 0, 0,
                            1, 0, 0,
                            0, getgenv().Resolution[".gg/scripters"], 0,
                            0, 0, 1
                        )
                end)
            end)
        end


        getgenv().gg_scripters = "Aori0001"
    end
})

Setting:AddSection({"Graphics & Visual"})

_G.ZX_FullBright = GetSetting("ZX_FullBright_Save", false)
Setting:AddToggle({
    Name = "Full Bright",
    Description = "Makes the game fully bright",
    Default = _G.ZX_FullBright,
    Callback = function(v)
        _G.ZX_FullBright = v
        _G.SaveData["ZX_FullBright_Save"] = v
        SaveSettings()
        if v then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            Lighting.ColorShift_Top = Color3.new(1, 1, 1)
        else
            Lighting.Ambient = Color3.new(0, 0, 0)
            Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
            Lighting.ColorShift_Top = Color3.new(0, 0, 0)
        end
    end,
})

_G.ZX_RTXMode = GetSetting("ZX_RTXMode_Save", false)
Setting:AddToggle({
    Name = "RTX Mode (Visual)",
    Description = "Enable cinematic RTX lighting",
    Default = _G.ZX_RTXMode,
    Callback = function(v)
        _G.ZX_RTXMode = v
        _G.SaveData["ZX_RTXMode_Save"] = v
        SaveSettings()
        if v then
            task.spawn(function()
                while _G.ZX_RTXMode do
                    Lighting.Ambient = Color3.fromRGB(33, 33, 33)
                    Lighting.Brightness = 0.3
                    Lighting.FogEnd = 9e9
                    task.wait()
                end
            end)
        end
    end,
})

Setting:AddButton({
    Name = "Fast Mode (Low Graphics)",
    Description = "Changes all parts to Plastic for better performance",
    Callback = function()
        local plasticParts = {"Part", "Union", "CornerWedgePart", "TrussPart", "MeshPart"}
        for _, v in pairs(workspace:GetDescendants()) do
            pcall(function()
                if table.find(plasticParts, v.ClassName) then
                    v.Material = Enum.Material.Plastic
                end
            end)
        end
    end,
})

Setting:AddButton({
    Name = "Low CPU Mode",
    Description = "Reduces CPU usage",
    Callback = function()
        LowCpu()
    end,
})

Setting:AddButton({
    Name = "Remove Sky Fog",
    Description = "Removes fog and lighting effects",
    Callback = function()
        pcall(function()
            if Lighting:FindFirstChild("LightingLayers") then Lighting.LightingLayers:Destroy() end
            if Lighting:FindFirstChild("SeaTerrorCC") then Lighting.SeaTerrorCC:Destroy() end
            if Lighting:FindFirstChild("FantasySky") then Lighting.FantasySky:Destroy() end
        end)
    end,
})

_G.ZX_IceWalk = GetSetting("ZX_IceWalk_Save", false)
Setting:AddToggle({
    Name = "Ice Walk (Visual)",
    Description = "Visual ice walk effect",
    Default = _G.ZX_IceWalk,
    Callback = function(v)
        _G.ZX_IceWalk = v
        _G.SaveData["ZX_IceWalk_Save"] = v
        SaveSettings()
        pcall(function()
            local waterBase = workspace.Map:FindFirstChild("WaterBase-Plane")
            if waterBase then
                waterBase.Size = v and Vector3.new(1000, 112, 1000) or Vector3.new(1000, 80, 1000)
            end
        end)
    end,
})

Setting:AddButton({
    Name = "Rain Fruits (Client)",
    Description = "Makes fruits fall around you (visual only)",
    Callback = function()
        task.spawn(function()
            pcall(function()
                local fruitModel = game:GetObjects("rbxassetid://14759368201")[1]
                for _, fruit in pairs(fruitModel:GetChildren()) do
                    fruit.Parent = workspace.Map
                    fruit:MoveTo(plr.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
                end
            end)
        end)
    end,
})

Setting:AddSection({"Time Settings"})

local ZX_TimeOptions = {"Day", "Night"}
Setting:AddDropdown({
    Name = "Select Time",
    Description = "Choose day or night",
    Options = ZX_TimeOptions,
    Default = "Day",
    Callback = function(v)
        _G.ZX_SelectDN = v
    end,
})

_G.ZX_AutoTime = GetSetting("ZX_AutoTime_Save", false)
Setting:AddToggle({
    Name = "Auto Set Time",
    Description = "Locks the time to Day or Night",
    Default = _G.ZX_AutoTime,
    Callback = function(v)
        _G.ZX_AutoTime = v
        _G.SaveData["ZX_AutoTime_Save"] = v
        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(1) do
        if _G.ZX_AutoTime then
            Lighting.ClockTime = (_G.ZX_SelectDN == "Day") and 12 or 0
        end
    end
end)

Setting:AddSection({"GUI Settings"})

_G.ZX_DisableChat = GetSetting("ZX_DisableChat_Save", false)
Setting:AddToggle({
    Name = "Disable Chat GUI",
    Description = "Hides the chat interface",
    Default = _G.ZX_DisableChat,
    Callback = function(v)
        _G.ZX_DisableChat = v
        _G.SaveData["ZX_DisableChat_Save"] = v
        SaveSettings()
        pcall(function()
            local chat = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Chat")
            if chat then chat.Enabled = not v end
        end)
    end,
})

_G.ZX_DisableLeader = GetSetting("ZX_DisableLeader_Save", false)
Setting:AddToggle({
    Name = "Disable Leaderboard GUI",
    Description = "Hides the leaderboard",
    Default = _G.ZX_DisableLeader,
    Callback = function(v)
        _G.ZX_DisableLeader = v
        _G.SaveData["ZX_DisableLeader_Save"] = v
        SaveSettings()
        pcall(function()
            local lb = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PlayerList")
            if lb then lb.Enabled = not v end
        end)
    end,
})

_G.ZX_NoClip = GetSetting("ZX_NoClip_Save", false)
Setting:AddToggle({
    Name = "No Clip",
    Description = "Walk through walls",
    Default = _G.ZX_NoClip,
    Callback = function(v)
        _G.ZX_NoClip = v
        _G.SaveData["ZX_NoClip_Save"] = v
        SaveSettings()
    end,
})

RunSer.Stepped:Connect(function()
    pcall(function()
        if plr.Character and _G.ZX_NoClip then
            for _, part in pairs(plr.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end)

do
Setting:AddSection({"Language / Translation"})

local ZX_TransJSON = [[
{
  "ZX | Info & Server":{"ar":"معلومات و سيرفر","es":"Info y Servidor","pt":"Info e Servidor","fr":"Info et Serveur","de":"Info und Server","tr":"Bilgi ve Sunucu","zh":"信息与服务器","ja":"情報とサーバー","ko":"정보 및 서버","ru":"Инфо и Сервер","id":"Info & Server","it":"Info e Server","hi":"जानकारी और सर्वर","th":"ข้อมูลและเซิร์ฟเวอร์","vi":"Thông tin & Máy chủ","pl":"Info i Serwer","nl":"Info en Server","uk":"Інфо та Сервер","ms":"Maklumat & Pelayan","ro":"Info și Server","fil":"Impormasyon at Server"},
  "Tab Farming":{"ar":"تبويب الفارم","es":"Pestaña Farm","pt":"Aba Farm","fr":"Onglet Farm","de":"Farm Register","tr":"Farm Sekmesi","zh":"刷怪选项卡","ja":"ファームタブ","ko":"팜 탭","ru":"Вкладка Фарм","id":"Tab Farm","it":"Scheda Farm","hi":"फार्म टैब","th":"แท็บฟาร์ม","vi":"Tab Farm","pl":"Zakładka Farm","nl":"Farm Tab","uk":"Вкладка Фарм","ms":"Tab Farm","ro":"Filă Farm","fil":"Tab ng Farm"},
  "Stack Farm":{"ar":"فارم متقدم","es":"Farm Avanzada","pt":"Farm Avançada","fr":"Farm Avancé","de":"Erweiterte Farm","tr":"Gelişmiş Farm","zh":"高级刷怪","ja":"高度ファーム","ko":"고급 팜","ru":"Продвинутый Фарм","id":"Stack Farm","it":"Farm Avanzata","hi":"स्टैक फार्म","th":"สแต็คฟาร์ม","vi":"Farm Nâng cao","pl":"Zaawansowany Farm","nl":"Geavanceerde Farm","uk":"Розширений Фарм","ms":"Farm Lanjutan","ro":"Farm Avansat","fil":"Masusing Farm"},
  "Farm Maestry":{"ar":"فارم الماستري","es":"Farm Maestría","pt":"Farm Maestria","fr":"Farm Maîtrise","de":"Meister Farm","tr":"Ustalık Farm","zh":"熟练度刷怪","ja":"マスタリーファーム","ko":"마스터리 팜","ru":"Фарм Мастерства","id":"Farm Mastery","it":"Farm Maestria","hi":"मास्ट्री फार्म","th":"ฟาร์มความเชี่ยวชาญ","vi":"Farm Chuyên môn","pl":"Farm Mistrzostwa","nl":"Meesterschap Farm","uk":"Фарм Майстерності","ms":"Farm Penguasaan","ro":"Farm Măiestrie","fil":"Farm ng Kadalubhasaan"},
  "Sea Event":{"ar":"أحداث البحر","es":"Evento del Mar","pt":"Evento do Mar","fr":"Événement Maritime","de":"See Event","tr":"Deniz Olayı","zh":"海洋事件","ja":"海のイベント","ko":"바다 이벤트","ru":"Морское Событие","id":"Event Laut","it":"Evento Marino","hi":"समुद्री इवेंट","th":"เหตุการณ์ทะเล","vi":"Sự kiện Biển","pl":"Wydarzenie Morskie","nl":"Zee-evenement","uk":"Морська Подія","ms":"Event Laut","ro":"Eveniment Marin","fil":"Kaganapan sa Dagat"},
  "Upgrade V4":{"ar":"ترقية V4","es":"Mejora V4","pt":"Upgrade V4","fr":"Amélioration V4","de":"Upgrade V4","tr":"Yükseltme V4","zh":"V4升级","ja":"V4アップグレード","ko":"V4 업그레이드","ru":"Улучшение V4","id":"Upgrade V4","it":"Upgrade V4","hi":"अपग्रेड V4","th":"อัปเกรด V4","vi":"Nâng cấp V4","pl":"Ulepszenie V4","nl":"Upgrade V4","uk":"Покращення V4","ms":"Naik Taraf V4","ro":"Upgrade V4","fil":"Pag-upgrade V4"},
  "Raid & Fruit":{"ar":"الغارة والفاكهة","es":"Raid y Fruta","pt":"Raid e Fruta","fr":"Raid et Fruit","de":"Raid & Frucht","tr":"Baskın ve Meyve","zh":"突袭与果实","ja":"レイド＆フルーツ","ko":"레이드 & 과일","ru":"Рейд и Фрукт","id":"Raid & Buah","it":"Raid e Frutto","hi":"रेड और फल","th":"ร้าดและผลไม้","vi":"Đột kích & Trái cây","pl":"Rajd i Owoc","nl":"Raid & Fruit","uk":"Рейд та Фрукт","ms":"Raid & Buah","ro":"Raid și Fruct","fil":"Raid at Prutas"},
  "Local Player":{"ar":"اللاعب المحلي","es":"Jugador Local","pt":"Jogador Local","fr":"Joueur Local","de":"Lokaler Spieler","tr":"Yerel Oyuncu","zh":"本地玩家","ja":"ローカルプレイヤー","ko":"로컬 플레이어","ru":"Локальный Игрок","id":"Pemain Lokal","it":"Giocatore Locale","hi":"स्थानीय खिलाड़ी","th":"ผู้เล่นในเครื่อง","vi":"Người chơi Cục bộ","pl":"Lokalny Gracz","nl":"Lokale Speler","uk":"Локальний Гравець","ms":"Pemain Tempatan","ro":"Jucător Local","fil":"Lokal na Manlalaro"},
  "Setting & UI":{"ar":"الإعدادات والواجهة","es":"Ajustes e Interfaz","pt":"Configurações e UI","fr":"Paramètres et Interface","de":"Einstellungen & UI","tr":"Ayarlar ve Arayüz","zh":"设置与界面","ja":"設定とUI","ko":"설정 및 UI","ru":"Настройки и Интерфейс","id":"Pengaturan & UI","it":"Impostazioni e UI","hi":"सेटिंग्स और UI","th":"การตั้งค่าและ UI","vi":"Cài đặt & Giao diện","pl":"Ustawienia i UI","nl":"Instellingen & UI","uk":"Налаштування та Інтерфейс","ms":"Tetapan & UI","ro":"Setări și UI","fil":"Settings at UI"},
  "Manual Save":{"ar":"حفظ يدوي","es":"Guardado Manual","pt":"Salvar Manual","fr":"Sauvegarde Manuelle","de":"Manuelles Speichern","tr":"Manuel Kayıt","zh":"手动保存","ja":"手動保存","ko":"수동 저장","ru":"Ручное Сохранение","id":"Simpan Manual","it":"Salvataggio Manuale","hi":"मैनुअल सेव","th":"บันทึกด้วยตนเอง","vi":"Lưu Thủ công","pl":"Ręczny Zapis","nl":"Handmatig Opslaan","uk":"Ручне Збереження","ms":"Simpan Manual","ro":"Salvare Manuală","fil":"Manwal na Pag-save"},
  "Safe Mode":{"ar":"الوضع الآمن","es":"Modo Seguro","pt":"Modo Seguro","fr":"Mode Sans Échec","de":"Abgesicherter Modus","tr":"Güvenli Mod","zh":"安全模式","ja":"セーフモード","ko":"안전 모드","ru":"Безопасный Режим","id":"Mode Aman","it":"Modalità Sicura","hi":"सुरक्षित मोड","th":"โหมดปลอดภัย","vi":"Chế độ An toàn","pl":"Tryb Bezpieczny","nl":"Veilige Modus","uk":"Безпечний Режим","ms":"Mod Selamat","ro":"Mod Sigur","fil":"Ligtas na Modo"},
  "Auto Active Haki":{"ar":"تفعيل الهاكي تلقائي","es":"Auto Activar Haki","pt":"Auto Ativar Haki","fr":"Auto Activer Haki","de":"Auto Haki Aktivieren","tr":"Otomatik Haki","zh":"自动霸气","ja":"オート覇気","ko":"자동 하키","ru":"Авто Хаки","id":"Auto Haki","it":"Auto Attiva Haki","hi":"ऑटो हाकी","th":"อัตโนมัติฮาคิ","vi":"Tự động Haki","pl":"Auto Haki","nl":"Auto Haki","uk":"Авто Хакі","ms":"Auto Haki","ro":"Auto Haki","fil":"Awtomatikong Haki"},
  "Anti AFK":{"ar":"مضاد للخمول","es":"Anti AFK","pt":"Anti AFK","fr":"Anti AFK","de":"Anti AFK","tr":"Anti AFK","zh":"防挂机","ja":"アンチAFK","ko":"안티 AFK","ru":"Анти АФК","id":"Anti AFK","it":"Anti AFK","hi":"एंटी एएफके","th":"ป้องกัน AFK","vi":"Chống AFK","pl":"Anti AFK","nl":"Anti AFK","uk":"Анті АФК","ms":"Anti AFK","ro":"Anti AFK","fil":"Anti-AFK"},
  "No Clip":{"ar":"اختراق الجدران","es":"Sin Colisión","pt":"Atravessar Paredes","fr":"Sans Collision","de":"No Clip","tr":"Duvarlardan Geç","zh":"穿墙","ja":"ノークリップ","ko":"노클립","ru":"Но Клип","id":"No Clip","it":"No Clip","hi":"नो क्लिप","th":"วิ่งทะลุ","vi":"Xuyên tường","pl":"No Clip","nl":"No Clip","uk":"Но Кліп","ms":"No Clip","ro":"No Clip","fil":"No Clip"},
  "Auto Hop Server":{"ar":"تنقل تلقائي للسيرفر","es":"Auto Saltar Servidor","pt":"Auto Trocar Servidor","fr":"Saut Auto Serveur","de":"Auto Server Hop","tr":"Otomatik Sunucu Atlama","zh":"自动换服","ja":"オートサーバーホップ","ko":"자동 서버 홉","ru":"Авто Сервер Хоп","id":"Auto Pindah Server","it":"Auto Salto Server","hi":"ऑटो सर्वर हॉप","th":"อัตโนมัติเปลี่ยนเซิร์ฟเวอร์","vi":"Tự động Chuyển Server","pl":"Auto Serwer Hop","nl":"Auto Server Hop","uk":"Авто Сервер Хоп","ms":"Auto Lompat Pelayan","ro":"Auto Salt Server","fil":"Awtomatikong Server Hop"},
  "Auto Farm":{"ar":"فارم تلقائي","es":"Auto Farm","pt":"Auto Farm","fr":"Auto Farm","de":"Auto Farm","tr":"Otomatik Farm","zh":"自动刷怪","ja":"オートファーム","ko":"자동 팜","ru":"Авто Фарм","id":"Auto Farm","it":"Auto Farm","hi":"ऑटो फार्म","th":"อัตโนมัติฟาร์ม","vi":"Tự động Farm","pl":"Auto Farm","nl":"Auto Farm","uk":"Авто Фарм","ms":"Auto Farm","ro":"Auto Farm","fil":"Awtomatikong Farm"},
  "Local Main":{"ar":"الرئيسي","es":"Principal","pt":"Principal","fr":"Principal","de":"Hauptmenü","tr":"Ana Menü","zh":"主菜单","ja":"メイン","ko":"메인","ru":"Главное","id":"Utama","it":"Principale","hi":"मुख्य","th":"หลัก","vi":"Chính","pl":"Główne","nl":"Hoofd","uk":"Головне","ms":"Utama","ro":"Principal","fil":"Pangunahin"},
  "Start Farm":{"ar":"بدء الفارم","es":"Iniciar Farm","pt":"Iniciar Farm","fr":"Démarrer Farm","de":"Farm Starten","tr":"Farmı Başlat","zh":"开始刷怪","ja":"ファーム開始","ko":"팜 시작","ru":"Начать Фарм","id":"Mulai Farm","it":"Inizia Farm","hi":"फार्म शुरू","th":"เริ่มฟาร์ม","vi":"Bắt đầu Farm","pl":"Rozpocznij Farm","nl":"Start Farm","uk":"Почати Фарм","ms":"Mula Farm","ro":"Start Farm","fil":"Simulan ang Farm"},
  "Fast Attack":{"ar":"هجوم سريع","es":"Ataque Rápido","pt":"Ataque Rápido","fr":"Attaque Rapide","de":"Schneller Angriff","tr":"Hızlı Saldırı","zh":"快速攻击","ja":"高速攻撃","ko":"빠른 공격","ru":"Быстрая Атака","id":"Serangan Cepat","it":"Attacco Veloce","hi":"तेज हमला","th":"โจมตีเร็ว","vi":"Tấn công Nhanh","pl":"Szybki Atak","nl":"Snelle Aanval","uk":"Швидка Атака","ms":"Serangan Pantas","ro":"Atac Rapid","fil":"Mabilis na Atake"},
  "Kill Aura":{"ar":"هالة القتل","es":"Aura de Muerte","pt":"Aura Mortal","fr":"Aura Mortelle","de":"Todesaura","tr":"Ölüm Aurası","zh":"击杀光环","ja":"キルオーラ","ko":"킬 오라","ru":"Аура Убийства","id":"Aura Pembunuh","it":"Aura Mortale","hi":"किल ऑरा","th":"ออร่าฆ่า","vi":"Hào quang Sát thương","pl":"Aura Zabijania","nl":"Moordaura","uk":"Аура Вбивства","ms":"Aura Bunuh","ro":"Aura Mortală","fil":"Patay na Aura"},
  "Bring Mob":{"ar":"جلب الوحوش","es":"Traer Mobs","pt":"Trazer Mobs","fr":"Attirer Mobs","de":"Mobs Bringen","tr":"Mobları Çek","zh":"拉怪","ja":"モブ引き寄せ","ko":"몹 끌기","ru":"Притяг Мобов","id":"Tarik Mob","it":"Attira Mob","hi":"मॉब लाओ","th":"ดึงม็อบ","vi":"Kéo Quái","pl":"Przyciągnij Moby","nl":"Mobs Brengen","uk":"Притяг Мобів","ms":"Tarik Mob","ro":"Atrage Mobi","fil":"Hila ang Mob"},
  "Fps Fix Lag":{"ar":"إصلاح التقطيع","es":"Fix Lag FPS","pt":"Corrigir Lag FPS","fr":"Fix Lag FPS","de":"FPS Lag Fix","tr":"FPS Lag Düzelt","zh":"修复卡顿","ja":"FPSラグ修正","ko":"FPS 랙 수정","ru":"Исправить Лаг","id":"Perbaiki Lag FPS","it":"Fix Lag FPS","hi":"FPS लैग फिक्स","th":"แก้แล็ก FPS","vi":"Sửa Lag FPS","pl":"Napraw Lag FPS","nl":"Fix Lag FPS","uk":"Виправити Лаг","ms":"Baiki Lag FPS","ro":"Fix Lag FPS","fil":"Ayusin ang Lag"},
  "Fly":{"ar":"طيران","es":"Volar","pt":"Voar","fr":"Voler","de":"Fliegen","tr":"Uç","zh":"飞行","ja":"飛行","ko":"비행","ru":"Полёт","id":"Terbang","it":"Volare","hi":"उड़ना","th":"บิน","vi":"Bay","pl":"Latać","nl":"Vliegen","uk":"Літати","ms":"Terbang","ro":"Zbor","fil":"Lumipad"},
  "Full Bright":{"ar":"إضاءة كاملة","es":"Brillo Total","pt":"Brilho Total","fr":"Luminosité Totale","de":"Volle Helligkeit","tr":"Tam Parlaklık","zh":"全亮","ja":"フルブライト","ko":"풀 브라이트","ru":"Полная Яркость","id":"Terang Penuh","it":"Luminosità Totale","hi":"फुल ब्राइट","th":"สว่างเต็ม","vi":"Sáng_toàn","pl":"Pełna Jasność","nl":"Volle Helderheid","uk":"Повна Яскравість","ms":"Cahaya Penuh","ro":"Luminozitate Totală","fil":"Buong Liwanag"},
  "Set WalkSpeed":{"ar":"تعيين سرعة المشي","es":"Establecer Velocidad","pt":"Definir Velocidade","fr":"Définir Vitesse","de":"Geschw. Einstellen","tr":"Yürüyüş Hızı Ayarla","zh":"设置移速","ja":"歩行速度設定","ko":"이동속도 설정","ru":"Установить Скорость","id":"Atur Kecepatan","it":"Imposta Velocità","hi":"वॉकस्पीड सेट","th":"ตั้งความเร็วเดิน","vi":"Đặt Tốc độ","pl":"Ustaw Prędkość","nl":"Instellen Snelheid","uk":"Встановити Швидкість","ms":"Tetapkan Kelajuan","ro":"Setare Viteză","fil":"Itakda ang Bilis"},
  "Set JumpPower":{"ar":"تعيين قوة القفز","es":"Establecer Salto","pt":"Definir Pulo","fr":"Définir Saut","de":"Sprung Einstellen","tr":"Zıplama Gücü Ayarla","zh":"设置跳力","ja":"ジャンプ力設定","ko":"점프력 설정","ru":"Установить Прыжок","id":"Atur Lompatan","it":"Imposta Salto","hi":"जम्पपावर सेट","th":"ตั้งค่ากระโดด","vi":"Đặt Nhảy","pl":"Ustaw Skok","nl":"Instellen Sprong","uk":"Встановити Стрибок","ms":"Tetapkan Lompatan","ro":"Setare Săritură","fil":"Itakda ang Talon"},
  "No Animation":{"ar":"بدون حركات","es":"Sin Animación","pt":"Sem Animação","fr":"Sans Animation","de":"Keine Animation","tr":"Animasyonsuz","zh":"无动画","ja":"アニメなし","ko":"애니메이션 없음","ru":"Без Анимации","id":"Tanpa Animasi","it":"Senza Animazione","hi":"एनिमेशन बंद","th":"ไม่มีแอนิเมชัน","vi":"Không Hoạt ảnh","pl":"Bez Animacji","nl":"Geen Animatie","uk":"Без Анімації","ms":"Tanpa Animasi","ro":"Fără Animație","fil":"Walang Animasyon"},
  "Walk on Water":{"ar":"المشي على الماء","es":"Caminar Sobre Agua","pt":"Andar Sobre Água","fr":"Marcher Sur L'eau","de":"Auf Wasser Laufen","tr":"Su Üstünde Yürü","zh":"水上行走","ja":"水上歩行","ko":"물 위 걷기","ru":"Ходить По Воде","id":"Jalan Di Air","it":"Camminare Sull'acqua","hi":"पानी पर चलें","th":"เดินบนน้ำ","vi":"Đi Trên Nước","pl":"Chodzenie Po Wodzie","nl":"Lopen Op Water","uk":"Ходити По Воді","ms":"Jalan Atas Air","ro":"Mers Pe Apă","fil":"Lakad Sa Tubig"},
  "Infinite Soru":{"ar":"سورو لا نهائي","es":"Soru Infinito","pt":"Soru Infinito","fr":"Soru Infini","de":"Unendliches Soru","tr":"Sonsuz Soru","zh":"无限瞬步","ja":"無限ソル","ko":"무한 소루","ru":"Бесконечное Сору","id":"Soru Tak Terbatas","it":"Soru Infinito","hi":"अनंत सोरू","th":"โซรุไม่จำกัด","vi":"Soru Vô hạn","pl":"Nieskończone Soru","nl":"Oneindig Soru","uk":"Нескінченне Сору","ms":"Soru Tanpa Had","ro":"Soru Infinit","fil":"Walang Hanggang Soru"},
  "Ice Walk (Visual)":{"ar":"مشية الجليد (بصري)","es":"Caminata Hielo","pt":"Caminhada Gelo","fr":"Marche Glace","de":"Eislaufen","tr":"Buz Yürüyüşü","zh":"冰上行走","ja":"アイスウォーク","ko":"아이스 워크","ru":"Ледяная Ходьба","id":"Jalan Es","it":"Camminata Ghiaccio","hi":"आइस वॉक","th":"เดินน้ำแข็ง","vi":"Đi Băng","pl":"Chodzenie Po Lodzie","nl":"IJSlopen","uk":"Крижана Ходьба","ms":"Jalan Ais","ro":"Mers Pe Gheață","fil":"Lakad Sa Yelo"},
  "Auto Collect Chest":{"ar":"جمع الصناديق تلقائي","es":"Auto Cofres","pt":"Auto Baús","fr":"Auto Coffres","de":"Auto Truhen","tr":"Oto Sandık Topla","zh":"自动开箱","ja":"オートチェスト","ko":"자동 상자","ru":"Авто Сундуки","id":"Auto Kumpul Peti","it":"Auto Forzieri","hi":"ऑटो चेस्ट","th":"เก็บหีบอัตโนมัติ","vi":"Tự động Rương","pl":"Auto Skrzynie","nl":"Auto Kisten","uk":"Авто Скрині","ms":"Auto Kumpul Peti","ro":"Auto Cufere","fil":"Awtomatikong Kahon"},
  "Auto Collect Fruit":{"ar":"جمع الفواكه تلقائي","es":"Auto Frutas","pt":"Auto Frutas","fr":"Auto Fruits","de":"Auto Früchte","tr":"Oto Meyve Topla","zh":"自动收果","ja":"オートフルーツ","ko":"자동 과일","ru":"Авто Фрукты","id":"Auto Kumpul Buah","it":"Auto Frutti","hi":"ऑटो फ्रूट","th":"เก็บผลไม้อัตโนมัติ","vi":"Tự động Trái cây","pl":"Auto Owoce","nl":"Auto Fruit","uk":"Авто Фрукти","ms":"Auto Kumpul Buah","ro":"Auto Fructe","fil":"Awtomatikong Prutas"},
  "Auto Store Fruit":{"ar":"تخزين الفواكه تلقائي","es":"Auto Guardar Fruta","pt":"Auto Guardar Fruta","fr":"Auto Stocker Fruit","de":"Auto Frucht Lagern","tr":"Oto Meyve Depola","zh":"自动存果","ja":"オートフルーツ保管","ko":"자동 과일 보관","ru":"Авто Хранить Фрукты","id":"Auto Simpan Buah","it":"Auto Conserva Frutto","hi":"ऑटो स्टोर फ्रूट","th":"เก็บผลไม้อัตโนมัติ","vi":"Tự động Lưu Trái cây","pl":"Auto Przechowuj Owoc","nl":"Auto Fruit Opslaan","uk":"Авто Зберігати Фрукти","ms":"Auto Simpan Buah","ro":"Auto Depozitare Fruct","fil":"Awtomatikong Itabi"},
  "Boss Farm":{"ar":"فارم الزعماء","es":"Farm Jefes","pt":"Farm Chefes","fr":"Farm Boss","de":"Boss Farm","tr":"Boss Farm","zh":"Boss刷怪","ja":"ボスファーム","ko":"보스 팜","ru":"Фарм Боссов","id":"Farm Boss","it":"Farm Boss","hi":"बॉस फार्म","th":"ฟาร์มบอส","vi":"Farm Boss","pl":"Farm Bossów","nl":"Boss Farm","uk":"Фарм Босів","ms":"Farm Boss","ro":"Farm Boss","fil":"Farm ng Boss"},
  "Enemy (Mob) ESP":{"ar":"كشف الوحوش","es":"ESP Enemigos","pt":"ESP Inimigos","fr":"ESP Ennemis","de":"Gegner ESP","tr":"Düşman ESP","zh":"敌人透视","ja":"敵ESP","ko":"적 ESP","ru":"ЕСП Врагов","id":"ESP Musuh","it":"ESP Nemici","hi":"दुश्मन ESP","th":"ESP ศัตรู","vi":"ESP Kẻ địch","pl":"ESP Przeciwników","nl":"Vijand ESP","uk":"ЕСП Ворогів","ms":"ESP Musuh","ro":"ESP Inamici","fil":"ESP ng Kalaban"},
  "Fruit ESP":{"ar":"كشف الفواكه","es":"ESP Frutas","pt":"ESP Frutas","fr":"ESP Fruits","de":"Frucht ESP","tr":"Meyve ESP","zh":"果实透视","ja":"フルーツESP","ko":"과일 ESP","ru":"ЕСП Фруктов","id":"ESP Buah","it":"ESP Frutti","hi":"फ्रूट ESP","th":"ESP ผลไม้","vi":"ESP Trái cây","pl":"ESP Owoców","nl":"Fruit ESP","uk":"ЕСП Фруктів","ms":"ESP Buah","ro":"ESP Fructe","fil":"ESP ng Prutas"},
  "Island ESP":{"ar":"كشف الجزر","es":"ESP Islas","pt":"ESP Ilhas","fr":"ESP Îles","de":"Insel ESP","tr":"Ada ESP","zh":"岛屿透视","ja":"島ESP","ko":"섬 ESP","ru":"ЕСП Островов","id":"ESP Pulau","it":"ESP Isole","hi":"आइलैंड ESP","th":"ESP เกาะ","vi":"ESP Đảo","pl":"ESP Wysp","nl":"Eiland ESP","uk":"ЕСП Островів","ms":"ESP Pulau","ro":"ESP Insule","fil":"ESP ng Pulo"},
  "Auto Attack Sea Beast":{"ar":"هجوم تلقائي وحش البحر","es":"Auto Bestia Marina","pt":"Auto Besta Marinha","fr":"Auto Bête Marine","de":"Auto Seeungeheuer","tr":"Oto Deniz Canavarı","zh":"自动打海兽","ja":"オート海獣","ko":"자동 해수","ru":"Авто Морской Зверь","id":"Auto Serang Sea Beast","it":"Auto Bestia Marina","hi":"ऑटो सी बीस्ट","th":"อัตโนมัติตี Sea Beast","vi":"Tự động Sea Beast","pl":"Auto Bestia Morska","nl":"Auto Zeemonster","uk":"Авто Морський Звір","ms":"Auto Serang Sea Beast","ro":"Auto Bestie Marină","fil":"Awtomatikong Sea Beast"},
  "Auto Start Raid":{"ar":"بدء الغارة تلقائي","es":"Auto Iniciar Raid","pt":"Auto Iniciar Raid","fr":"Auto Démarrer Raid","de":"Auto Raid Starten","tr":"Oto Raid Başlat","zh":"自动开团","ja":"オートレイド開始","ko":"자동 레이드","ru":"Авто Начать Рейд","id":"Auto Mulai Raid","it":"Auto Inizia Raid","hi":"ऑटो रेड शुरू","th":"อัตโนมัติเริ่มร้าด","vi":"Tự động Raid","pl":"Auto Rozpocznij Rajd","nl":"Auto Raid Starten","uk":"Авто Почати Рейд","ms":"Auto Mula Raid","ro":"Auto Start Raid","fil":"Awtomatikong Simulan Raid"},
  "Auto Buy Fruit (Shop Sniper)":{"ar":"شراء فاكهة تلقائي (سنابر)","es":"Auto Comprar Fruta","pt":"Auto Comprar Fruta","fr":"Auto Acheter Fruit","de":"Auto Frucht Kaufen","tr":"Oto Meyve Satın Al","zh":"自动买果","ja":"オートフルーツ購入","ko":"자동 과일 구매","ru":"Авто Купить Фрукт","id":"Auto Beli Buah","it":"Auto Compra Frutto","hi":"ऑटो फ्रूट खरीदें","th":"อัตโนมัติซื้อผลไม้","vi":"Tự động Mua Trái cây","pl":"Auto Kup Owoc","nl":"Auto Fruit Kopen","uk":"Авто Купити Фрукт","ms":"Auto Beli Buah","ro":"Auto Cumpără Fruct","fil":"Awtomatikong Bumili ng Prutas"},
  "Auto Redeem All Codes":{"ar":"استبدال كل الأكواد تلقائي","es":"Auto Canjear Códigos","pt":"Auto Resgatar Códigos","fr":"Auto Échanger Codes","de":"Auto Codes Einlösen","tr":"Oto Kod Kullan","zh":"自动兑换码","ja":"オートコード交換","ko":"자동 코드 교환","ru":"Авто Коды","id":"Auto Tukar Kode","it":"Auto Riscatta Codici","hi":"ऑटो कोड रिडीम","th":"อัตโนมัติแลกโค้ด","vi":"Tự động Nhập Code","pl":"Auto Kody","nl":"Auto Codes Inwisselen","uk":"Авто Коди","ms":"Auto Tebus Kod","ro":"Auto Coduri","fil":"Awtomatikong I-redeem ang Code"},
  "Teleport to Player":{"ar":"نقل للاعب","es":"Teleportar a Jugador","pt":"Teletransportar ao Jogador","fr":"Téléporter au Joueur","de":"Zu Spieler Teleportieren","tr":"Oyuncuya Işınlan","zh":"传送到玩家","ja":"プレイヤーテレポート","ko":"플레이어 텔레포트","ru":"Телепорт к Игроку","id":"Teleport ke Pemain","it":"Teletrasporto Giocatore","hi":"प्लेयर टेलीपोर्ट","th":"เทเลพอร์ตไปหาผู้เล่น","vi":"Dịch đến Người chơi","pl":"Teleport do Gracza","nl":"Teleport naar Speler","uk":"Телепорт до Гравця","ms":"Teleport ke Pemain","ro":"Teleport Jucător","fil":"Teleport sa Manlalaro"},
  "Select Weapon":{"ar":"اختيار السلاح","es":"Seleccionar Arma","pt":"Selecionar Arma","fr":"Sélectionner Arme","de":"Waffe Auswählen","tr":"Silah Seç","zh":"选择武器","ja":"武器選択","ko":"무기 선택","ru":"Выбрать Оружие","id":"Pilih Senjata","it":"Seleziona Arma","hi":"हथियार चुनें","th":"เลือกอาวุธ","vi":"Chọn Vũ khí","pl":"Wybierz Broń","nl":"Selecteer Wapen","uk":"Вибрати Зброю","ms":"Pilih Senjata","ro":"Selectare Armă","fil":"Pumili ng Sandata"},
  "Select Boss":{"ar":"اختيار الزعيم","es":"Seleccionar Jefe","pt":"Selecionar Chefe","fr":"Sélectionner Boss","de":"Boss Auswählen","tr":"Patron Seç","zh":"选择Boss","ja":"ボス選択","ko":"보스 선택","ru":"Выбрать Босса","id":"Pilih Boss","it":"Seleziona Boss","hi":"बॉस चुनें","th":"เลือกบอส","vi":"Chọn Boss","pl":"Wybierz Bossa","nl":"Selecteer Boss","uk":"Вибрати Боса","ms":"Pilih Boss","ro":"Selectare Boss","fil":"Pumili ng Boss"},
  "Select Players":{"ar":"اختيار اللاعبين","es":"Seleccionar Jugadores","pt":"Selecionar Jogadores","fr":"Sélectionner Joueurs","de":"Spieler Auswählen","tr":"Oyuncu Seç","zh":"选择玩家","ja":"プレイヤー選択","ko":"플레이어 선택","ru":"Выбрать Игрока","id":"Pilih Pemain","it":"Seleziona Giocatori","hi":"खिलाड़ी चुनें","th":"เลือกผู้เล่น","vi":"Chọn Người chơi","pl":"Wybierz Graczy","nl":"Selecteer Spelers","uk":"Вибрати Гравців","ms":"Pilih Pemain","ro":"Selectare Jucători","fil":"Pumili ng Manlalaro"},
  "Hop Server":{"ar":"تنقل سيرفر","es":"Saltar Servidor","pt":"Trocar Servidor","fr":"Changer Serveur","de":"Server Wechseln","tr":"Sunucu Değiştir","zh":"换服","ja":"サーバーホップ","ko":"서버 홉","ru":"Сменить Сервер","id":"Pindah Server","it":"Cambia Server","hi":"सर्वर बदलें","th":"เปลี่ยนเซิร์ฟเวอร์","vi":"Chuyển Server","pl":"Zmień Serwer","nl":"Verander Server","uk":"Змінити Сервер","ms":"Tukar Pelayan","ro":"Schimbare Server","fil":"Lumipat ng Server"},
  "Stats & ESP":{"ar":"الإحصائيات والكشف","es":"Estadísticas y ESP","pt":"Status e ESP","fr":"Stats et ESP","de":"Stats & ESP","tr":"İstatistik ve ESP","zh":"统计与透视","ja":"ステータス&ESP","ko":"스탯 & ESP","ru":"Статы и ЕСП","id":"Status & ESP","it":"Statistiche e ESP","hi":"स्टैट और ESP","th":"สถิติและ ESP","vi":"Chỉ số & ESP","pl":"Statystyki i ESP","nl":"Stats & ESP","uk":"Стати і ЕСП","ms":"Statistik & ESP","ro":"Statistici și ESP","fil":"Stats at ESP"},
  "Tab Teleport":{"ar":"تبويب النقل","es":"Pestaña Teleport","pt":"Aba Teleporte","fr":"Onglet Téléport","de":"Teleport Register","tr":"Işınlanma Sekmesi","zh":"传送选项卡","ja":"テレポートタブ","ko":"텔레포트 탭","ru":"Вкладка Телепорт","id":"Tab Teleport","it":"Scheda Teletrasporto","hi":"टेलीपोर्ट टैब","th":"แท็บเทเลพอร์ต","vi":"Tab Dịch chuyển","pl":"Zakładka Teleport","nl":"Teleport Tab","uk":"Вкладка Телепорт","ms":"Tab Teleport","ro":"Filă Teleport","fil":"Tab ng Teleport"},
  "Dojo & Drago Race":{"ar":"دوجو وسباق دراجو","es":"Dojo y Carrera Drago","pt":"Dojo e Corrida Drago","fr":"Dojo et Course Drago","de":"Dojo & Drago Rennen","tr":"Dojo ve Drago Yarışı","zh":"道馆与龙竞","ja":"道場とドラゴレース","ko":"도장 & 드라고 레이스","ru":"Додзё и Дракон Гонка","id":"Dojo & Balapan Drago","it":"Dojo e Gara Drago","hi":"डोजो और ड्रैगो रेस","th":"โดโจและการแข่งดราโก","vi":"Dojo & Drago Race","pl":"Dojo i Wyścig Drago","nl":"Dojo & Drago Race","uk":"Додзьо і Дракон Гонка","ms":"Dojo & Perlumbaan Drago","ro":"Dojo și Cursă Drago","fil":"Dojo at Drago Race"},
  "Get Item & Upgrade":{"ar":"جلب العناصر والترقية","es":"Obtener y Mejorar","pt":"Obter e Melhorar","fr":"Obtenir et Améliorer","de":"Holen & Verbessern","tr":"Al ve Yükselt","zh":"获取与升级","ja":"アイテム取得&強化","ko":"아이템 획득 & 업그레이드","ru":"Получить и Улучшить","id":"Dapatkan & Tingkatkan","it":"Ottieni e Migliora","hi":"आइटम और अपग्रेड","th":"รับไอเทมและอัปเกรด","vi":"Nhập & Nâng cấp","pl":"Zdobądź i Ulepsz","nl":"Krijg & Upgrade","uk":"Отримати та Покращити","ms":"Dapat & Tingkatkan","ro":"Obține și Upgrade","fil":"Kunin at I-upgrade"},
  "Local Shop":{"ar":"المتجر المحلي","es":"Tienda Local","pt":"Loja Local","fr":"Boutique Locale","de":"Lokaler Shop","tr":"Yerel Dükkan","zh":"本地商店","ja":"ローカルショップ","ko":"로컬 상점","ru":"Локальный Магазин","id":"Toko Lokal","it":"Negozio Locale","hi":"स्थानीय दुकान","th":"ร้านค้าในเครื่อง","vi":"Cửa hàng Cục bộ","pl":"Lokalny Sklep","nl":"Lokale Winkel","uk":"Локальний Магазин","ms":"Kedai Tempatan","ro":"Magazin Local","fil":"Lokal na Tindahan"},
  "Fishing":{"ar":"صيد السمك","es":"Pesca","pt":"Pesca","fr":"Pêche","de":"Angeln","tr":"Balıkçılık","zh":"钓鱼","ja":"釣り","ko":"낚시","ru":"Рыбалка","id":"Memancing","it":"Pesca","hi":"मछली पकड़ना","th":"ตกปลา","vi":"Câu cá","pl":"Łowienie","nl":"Vissen","uk":"Рибалка","ms":"Memancing","ro":"Pescuit","fil":"Pangingisda"},
  "Auto Farm Boss Select":{"ar":"فارم الزعيم المحدد تلقائي","es":"Auto Farm Jefe Seleccionado","pt":"Auto Farm Chefe Selecionado","fr":"Auto Farm Boss Sélectionné","de":"Auto Ausgewählter Boss Farm","tr":"Oto Seçili Patron Farm","zh":"自动刷选定Boss","ja":"オート選択ボスファーム","ko":"자동 선택 보스 팜","ru":"Авто Фарм Выбранного Босса","id":"Auto Farm Boss Pilihan","it":"Auto Farm Boss Selezionato","hi":"ऑटो चयनित बॉस फार्म","th":"อัตโนมัติฟาร์มบอสที่เลือก","vi":"Tự động Farm Boss Chọn","pl":"Auto Farm Wybranego Bossa","nl":"Auto Geselecteerde Boss Farm","uk":"Авто Фарм Вибраного Боса","ms":"Auto Farm Boss Dipilih","ro":"Auto Farm Boss Selectat","fil":"Awtomatikong Farm ng Piling Boss"},
  "Auto Complete Quest":{"ar":"إكمال المهام تلقائي","es":"Auto Completar Misión","pt":"Auto Completar Missão","fr":"Auto Compléter Quête","de":"Auto Quest Abschließen","tr":"Oto Görev Tamamla","zh":"自动完成任务","ja":"オートクエスト完了","ko":"자동 퀘스트 완료","ru":"Авто Завершить Квест","id":"Auto Selesaikan Quest","it":"Auto Completa Missione","hi":"ऑटो क्वेस्ट पूरा","th":"อัตโนมัติทำเควสต์เสร็จ","vi":"Tự động Hoàn thành Quest","pl":"Auto Ukończ Quest","nl":"Auto Quest Voltooien","uk":"Авто Завершити Квест","ms":"Auto Siapkan Quest","ro":"Auto Completează Quest","fil":"Awtomatikong Tapusin ang Quest"},
  "Auto Factory Raid":{"ar":"غارة المصنع تلقائي","es":"Auto Raid Fábrica","pt":"Auto Raid Fábrica","fr":"Auto Raid Usine","de":"Auto Fabrik Raid","tr":"Oto Fabrika Raid","zh":"自动工厂突袭","ja":"オートファクトリーレイド","ko":"자동 공장 레이드","ru":"Авто Фабрика Рейд","id":"Auto Raid Pabrik","it":"Auto Raid Fabbrica","hi":"ऑटो फैक्ट्री रेड","th":"อัตโนมัติร้าดโรงงาน","vi":"Tự động Raid Nhà máy","pl":"Auto Fabryka Rajd","nl":"Auto Fabriek Raid","uk":"Авто Фабрика Рейд","ms":"Auto Raid Kilang","ro":"Auto Raid Fabrică","fil":"Awtomatikong Raid sa Pabrika"},
  "Auto Elite Hunter":{"ar":"صياد النخبة تلقائي","es":"Auto Cazador Élite","pt":"Auto Caçador Elite","fr":"Auto Chasseur Élite","de":"Auto Elite Jäger","tr":"Oto Elit Avcı","zh":"自动精英猎人","ja":"オートエリートハンター","ko":"자동 엘리트 헌터","ru":"Авто Элитный Охотник","id":"Auto Pemburu Elite","it":"Auto Cacciatore Élite","hi":"ऑटो एलीट हंटर","th":"อัตโนมัติล่ามืออาชีพ","vi":"Tự động Elite Hunter","pl":"Auto Łowca Elit","nl":"Auto Elite Jager","uk":"Авто Елітний Мисливець","ms":"Auto Pemburu Elit","ro":"Auto Vânător Elite","fil":"Awtomatikong Elite Hunter"},
  "GUI Settings":{"ar":"إعدادات الواجهة","es":"Ajustes GUI","pt":"Configurações GUI","fr":"Paramètres GUI","de":"GUI Einstellungen","tr":"GUI Ayarları","zh":"界面设置","ja":"GUI設定","ko":"GUI 설정","ru":"Настройки Интерфейса","id":"Pengaturan GUI","it":"Impostazioni GUI","hi":"GUI सेटिंग्स","th":"การตั้งค่า GUI","vi":"Cài đặt GUI","pl":"Ustawienia GUI","nl":"GUI Instellingen","uk":"Налаштування Інтерфейсу","ms":"Tetapan GUI","ro":"Setări GUI","fil":"GUI Settings"},
  "Language / اللغة":{"ar":"اللغة","es":"Idioma","pt":"Idioma","fr":"Langue","de":"Sprache","tr":"Dil","zh":"语言","ja":"言語","ko":"언어","ru":"Язык","id":"Bahasa","it":"Lingua","hi":"भाषा","th":"ภาษา","vi":"Ngôn ngữ","pl":"Język","nl":"Taal","uk":"Мова","ms":"Bahasa","ro":"Limbă","fil":"Wika"},
  "Auto Translate (Live)":{"ar":"ترجمة تلقائية (مباشر)","es":"Auto Traducir (En Vivo)","pt":"Auto Traduzir (Ao Vivo)","fr":"Auto Traduire (En Direct)","de":"Auto Übersetzen (Live)","tr":"Otomatik Çeviri (Canlı)","zh":"自动翻译(实时)","ja":"自動翻訳(ライブ)","ko":"자동 번역(라이브)","ru":"Авто Перевод (Live)","id":"Auto Terjemah (Langsung)","it":"Auto Traduci (Live)","hi":"ऑटो अनुवाद (लाइव)","th":"แปลอัตโนมัติ(สด)","vi":"Tự động Dịch (Trực tiếp)","pl":"Auto Tłumacz (Na żywo)","nl":"Auto Vertaal (Live)","uk":"Авто Переклад (Live)","ms":"Auto Terjemah (Langsung)","ro":"Auto Traducere (Live)","fil":"Awtomatikong Isalin (Live)"}
}
]]

local ZX_Translations = {}
pcall(function()
    ZX_Translations = HttpService:JSONDecode(ZX_TransJSON)
end)

local ZX_Languages = {"English","العربية","Español","Português","Français","Deutsch","Türkçe","中文","日本語","한국어","Русский","Bahasa Indonesia","Italiano","हिन्दी","ไทย","Tiếng Việt","Polski","Nederlands","Українська","Bahasa Melayu","Română","Filipino"}

local ZX_LangCodes = {English="en",["العربية"]="ar",["Español"]="es",["Português"]="pt",["Français"]="fr",Deutsch="de",["Türkçe"]="tr",["中文"]="zh",["日本語"]="ja",["한국어"]="ko",["Русский"]="ru",["Bahasa Indonesia"]="id",Italiano="it",["हिन्दी"]="hi",["ไทย"]="th",["Tiếng Việt"]="vi",Polski="pl",Nederlands="nl",["Українська"]="uk",["Bahasa Melayu"]="ms",["Română"]="ro",Filipino="fil"}

_G.ZX_CurrentLang = GetSetting("ZX_Lang_Save", "English")
local ZX_CurrentLang = _G.ZX_CurrentLang

local function ZX_Translate(text)
    if ZX_CurrentLang == "English" or not text or text == "" then return text end
    local langCode = ZX_LangCodes[ZX_CurrentLang]
    if not langCode then return text end
    local entry = ZX_Translations[text]
    if entry and entry[langCode] then
        return entry[langCode]
    end
    return text
end

local function ZX_ScanGui(gui)
    if not gui then return end
    for _, desc in pairs(gui:GetDescendants()) do
        if desc:IsA("TextLabel") or desc:IsA("TextButton") or desc:IsA("TextBox") then
            local originalText = desc.Text
            if originalText and originalText ~= "" then
                local translated = ZX_Translate(originalText)
                if translated ~= originalText then
                    if not desc:GetAttribute("ZX_OriginalText") then
                        desc:SetAttribute("ZX_OriginalText", originalText)
                    end
                    desc.Text = translated
                end
            end
        end
    end
end

local function ZX_ApplyTranslation()
    pcall(function()

        local coreGui = game:GetService("CoreGui")
        for _, gui in pairs(coreGui:GetChildren()) do
            if gui:IsA("ScreenGui") and gui.Name ~= "ControlGUI" then
                ZX_ScanGui(gui)
            end
        end

        local playerGui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if playerGui then
            for _, gui in pairs(playerGui:GetChildren()) do
                if gui:IsA("ScreenGui") then
                    ZX_ScanGui(gui)
                end
            end
        end
    end)
end

local function ZX_RevertTranslation()
    pcall(function()
        local function revertGui(container)
            for _, gui in pairs(container:GetChildren()) do
                if gui:IsA("ScreenGui") then
                    for _, desc in pairs(gui:GetDescendants()) do
                        if (desc:IsA("TextLabel") or desc:IsA("TextButton") or desc:IsA("TextBox"))
                            and desc:GetAttribute("ZX_OriginalText") then
                            desc.Text = desc:GetAttribute("ZX_OriginalText")
                            desc:SetAttribute("ZX_OriginalText", nil)
                        end
                    end
                end
            end
        end
        revertGui(game:GetService("CoreGui"))
        local pg = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if pg then revertGui(pg) end
    end)
end

Setting:AddDropdown({
    Name = "Language / اللغة",
    Description = "Select your language - auto translates the UI",
    Options = ZX_Languages,
    Default = _G.ZX_CurrentLang,
    Callback = function(v)
        ZX_CurrentLang = v
        _G.ZX_CurrentLang = v
        _G.SaveData["ZX_Lang_Save"] = v
        SaveSettings()
        if v == "English" then
            ZX_RevertTranslation()
        else

            ZX_RevertTranslation()
            task.wait(0.1)
            ZX_ApplyTranslation()
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Zythera-X",
            Text = "Language: " .. v,
            Duration = 3
        })
    end,
})

_G.ZX_AutoTranslate = GetSetting("ZX_AutoTranslate_Save", false)
Setting:AddToggle({
    Name = "Auto Translate (Live)",
    Description = "Continuously translate new UI elements as they appear",
    Default = _G.ZX_AutoTranslate,
    Callback = function(v)
        _G.ZX_AutoTranslate = v
        _G.SaveData["ZX_AutoTranslate_Save"] = v
        SaveSettings()
    end,
})

task.spawn(function()
    while task.wait(2) do
        if _G.ZX_AutoTranslate and ZX_CurrentLang ~= "English" then
            ZX_ApplyTranslation()
        end
    end
end)

if _G.ZX_CurrentLang ~= "English" then
    task.delay(3, function()
        ZX_ApplyTranslation()
    end)
end

Setting:AddSection({"Feature Search"})

local function ZX_SearchFeatures(query)
    if not query or query == "" then return {} end
    query = query:lower()
    local results = {}
    pcall(function()
        local coreGui = game:GetService("CoreGui")
        for _, gui in pairs(coreGui:GetChildren()) do
            if gui:IsA("ScreenGui") then
                for _, desc in pairs(gui:GetDescendants()) do
                    if desc:IsA("TextLabel") or desc:IsA("TextButton") then
                        local text = desc.Text
                        if text and text ~= "" and text:lower():find(query) then

                            local tabName = "Unknown"
                            local parent = desc.Parent
                            for _ = 1, 5 do
                                if parent then
                                    if parent:IsA("Frame") and parent.Name ~= "" then
                                        tabName = parent.Name
                                        break
                                    end
                                    parent = parent.Parent
                                end
                            end
                            table.insert(results, {text = text, tab = tabName, element = desc})
                        end
                    end
                end
            end
        end
    end)
    return results
end

local ZX_SearchParagraph = Setting:AddParagraph({
    Title = "Search Results",
    Desc = "Type a keyword in the search box above"
})

Setting:AddTextBox({
    Title = "Search Features",
    Description = "Search for any feature, toggle, or button in the script",
    PlaceHolder = "e.g. Farm, Raid, Haki, Hop...",
    Default = "",
    Callback = function(Value)
        if not Value or Value == "" then
            ZX_SearchParagraph:SetDesc("Type a keyword in the search box above")
            return
        end
        local results = ZX_SearchFeatures(Value)
        if #results == 0 then
            ZX_SearchParagraph:SetDesc("No results found for: " .. Value)
        else
            local displayLines = {}
            local maxDisplay = math.min(#results, 12)
            for i = 1, maxDisplay do
                table.insert(displayLines, tostring(i) .. ". " .. results[i].text)
            end
            local resultText = table.concat(displayLines, "\n")
            if #results > 12 then
                resultText = resultText .. "\n... and " .. tostring(#results - 12) .. " more"
            end
            ZX_SearchParagraph:SetDesc(resultText)
        end
    end
})

Setting:AddSection({"Quick Search"})

do
local quickSearchTerms = {"Farm", "Raid", "Haki", "Teleport", "Boss", "Fruit", "Hop", "ESP", "Attack", "Race"}

for _, term in ipairs(quickSearchTerms) do
    Setting:AddButton({
        Name = "Search: " .. term,
        Description = "Find all features related to " .. term,
        Callback = function()
            local results = ZX_SearchFeatures(term)
            if #results == 0 then
                ZX_SearchParagraph:SetDesc("No results found for: " .. term)
            else
                local displayLines = {}
                local maxDisplay = math.min(#results, 12)
                for i = 1, maxDisplay do
                    table.insert(displayLines, tostring(i) .. ". " .. results[i].text)
                end
                local resultText = table.concat(displayLines, "\n")
                if #results > 12 then
                    resultText = resultText .. "\n... and " .. tostring(#results - 12) .. " more"
                end
                ZX_SearchParagraph:SetDesc(resultText)
            end
            game.StarterGui:SetCore("SendNotification", {
                Title = "Zythera-X Search",
                Text = "Found " .. tostring(#results) .. " results for: " .. term,
                Duration = 3
            })
        end
    })
end

end
end

local AttackInstance
;(function()

local function GetBladeHits()
local t={}
local function d(v)return(v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude end
for _,p in pairs({game.Workspace.Enemies,game.Workspace.Characters})do
for _,v in pairs(p:GetChildren())do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") then
if d(v.HumanoidRootPart)<60 then table.insert(t,v)end
end
end
end
return t
end
local function AttackAll()
local plr=game.Players.LocalPlayer
local ch=plr.Character
if not ch then return end
local ew=ch:FindFirstChild("EquippedWeapon")
if not ew then return end
local e=GetBladeHits()
if #e>0 then
local n=game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net")
n:WaitForChild("RE/RegisterAttack"):FireServer(-math.huge)
local a={nil,{}}
for i,v in pairs(e)do
if not a[1] then a[1]=v.Head end
a[2][i]={v,v.HumanoidRootPart}
end
n:WaitForChild("RE/RegisterHit"):FireServer(unpack(a))
end
end
task.spawn(function() while task.wait() do AttackAll() end end)

local Players=game:GetService("Players")
local RunService=game:GetService("RunService")
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local Workspace=game:GetService("Workspace")

local Player=Players.LocalPlayer
local Modules=ReplicatedStorage:WaitForChild("Modules")
local Net=Modules:WaitForChild("Net")
local RegisterAttack=Net:WaitForChild("RE/RegisterAttack")
local RegisterHit=Net:WaitForChild("RE/RegisterHit")
local ShootGunEvent=Net:WaitForChild("RE/ShootGunEvent")

getgenv().PMT_GunFast=(getgenv().PMT_GunFast~=false)
getgenv().PMT_GunFast_Delay=getgenv().PMT_GunFast_Delay or 0.02
getgenv().PMT_GunFast_PrimeEvery=getgenv().PMT_GunFast_PrimeEvery or 0.35

local Config={AttackDistance=500,AttackMobs=true,AttackPlayers=true,AttackCooldown=0.01,ComboResetTime=0.3,MaxCombo=4,HitboxLimbs={"RightLowerArm","RightUpperArm","LeftLowerArm","LeftUpperArm","RightHand","LeftHand"},AutoClickEnabled=true}

local FastAttack={}
FastAttack.__index=FastAttack

function FastAttack.new()
local s=setmetatable({Debounce=0,ComboDebounce=0,ShootDebounce=0,M1Combo=0,EnemyRootPart=nil,Connections={},Overheat={Dragonstorm={MaxOverheat=3,Cooldown=0,TotalOverheat=0,Distance=350,Shooting=false}},ShootsPerTarget={["Dual Flintlock"]=2},SpecialShoots={["Skull Guitar"]="TAP",["Bazooka"]="Position",["Cannon"]="Position",["Dragonstorm"]="Overheat"},_GunLastPrime=0,_GunLastShot=0,_LastGunTargetModel=nil,CombatFlags=nil,ShootFunction=nil,HitFunction=nil},FastAttack)
pcall(function()
s.CombatFlags=require(Modules.Flags).COMBAT_REMOTE_THREAD
s.ShootFunction=getupvalue(require(ReplicatedStorage.Controllers.CombatController).Attack,9)
local ls=Player:WaitForChild("PlayerScripts"):FindFirstChildOfClass("LocalScript")
if ls and getsenv then s.HitFunction=getsenv(ls)._G.SendHitsToServer end
end)
return s
end

function FastAttack:IsEntityAlive(e)
local h=e and e:FindFirstChild("Humanoid")
return h and h.Health>0
end

function FastAttack:CheckStun(c,h,tt)
local st=c:FindFirstChild("Stun")
local bs=c:FindFirstChild("Busy")
if h.Sit and (tt=="Sword" or tt=="Melee" or tt=="Blox Fruit") then return false end
if (st and st.Value>0) or (bs and bs.Value) then return false end
return true
end

function FastAttack:GetBladeHits(c,dist)
local pos=c:GetPivot().Position
local bh={}
dist=dist or Config.AttackDistance
local function proc(f)
for _,e in ipairs(f:GetChildren())do
if e~=c and self:IsEntityAlive(e) then
local bp=e:FindFirstChild(Config.HitboxLimbs[math.random(#Config.HitboxLimbs)]) or e:FindFirstChild("HumanoidRootPart")
if bp and (pos-bp.Position).Magnitude<=dist then
if not self.EnemyRootPart then self.EnemyRootPart=bp else table.insert(bh,{e,bp})end
end
end
end
end
if Config.AttackMobs then proc(Workspace.Enemies)end
if Config.AttackPlayers then proc(Workspace.Characters)end
return bh
end

function FastAttack:GetClosestEnemy(c,dist)
local hits=self:GetBladeHits(c,dist)
local cl,md=nil,math.huge
self._LastGunTargetModel=nil
for _,h in ipairs(hits)do
local m=(c:GetPivot().Position-h[2].Position).Magnitude
if m<md then md=m;cl=h[2];self._LastGunTargetModel=h[1] end
end
return cl
end

function FastAttack:GetCombo()
local cb=(tick()-self.ComboDebounce)<=Config.ComboResetTime and self.M1Combo or 0
cb=cb>=Config.MaxCombo and 1 or cb+1
self.ComboDebounce=tick()
self.M1Combo=cb
return cb
end

local function _nv3(p)
if vector and vector.create then return vector.create(p.X,p.Y,p.Z) end
return Vector3.new(p.X,p.Y,p.Z)
end

do local function _handle(m)
if not m or not m.Parent then return nil end
for _,d in ipairs(m:GetDescendants())do
if d:IsA("Accessory") then
local h=d:FindFirstChild("Handle")
if h and h:IsA("BasePart") then return h end
end
end
local hrp=m:FindFirstChild("HumanoidRootPart")
if hrp and hrp:IsA("BasePart") then return hrp end
return nil
end
_G._ZX_handle = _handle
end

function FastAttack:_PrimeGun(tl)
if not tl or not tl.Parent or tl.Parent~=Player.Character then return end
local now=os.clock()
local ev=tonumber(getgenv().PMT_GunFast_PrimeEvery) or 0.35
if now-(self._GunLastPrime or 0)<ev then return end
self._GunLastPrime=now
pcall(function()tl:Activate()end)
pcall(function()if firesignal and tl.Activated then firesignal(tl.Activated)end end)
end

function FastAttack:ShootInTarget(tp)
if not getgenv().PMT_GunFast then return end
local c=Player.Character
if not self:IsEntityAlive(c) then return end
local tl=c:FindFirstChildOfClass("Tool")
if not tl or tl.ToolTip~="Gun" then return end
self:_PrimeGun(tl)
local now=os.clock()
local del=tonumber(getgenv().PMT_GunFast_Delay) or 0.02
if now-(self._GunLastShot or 0)<del then return end
self._GunLastShot=now
local m=self._LastGunTargetModel
local h=_G._ZX_handle(m)
if not h then return end
pcall(function()ShootGunEvent:FireServer(_nv3(tp),{h})end)
end

function FastAttack:UseNormalClick(c,h,cd)
self.EnemyRootPart=nil
local bh=self:GetBladeHits(c)
if self.EnemyRootPart then
RegisterAttack:FireServer(cd)
if self.CombatFlags and self.HitFunction then
self.HitFunction(self.EnemyRootPart,bh)
else
RegisterHit:FireServer(self.EnemyRootPart,bh)
end
end
end

function FastAttack:UseFruitM1(c,eq,cb)
local t=self:GetBladeHits(c)
if not t[1] then return end
local dir=(t[1][2].Position-c:GetPivot().Position).Unit
eq.LeftClickRemote:FireServer(dir,cb)
end

function FastAttack:Attack()
if not Config.AutoClickEnabled or (tick()-self.Debounce)<Config.AttackCooldown then return end
local c=Player.Character
if not c or not self:IsEntityAlive(c) then return end
local h=c.Humanoid
local eq=c:FindFirstChildOfClass("Tool")
if not eq then return end
local tt=eq.ToolTip
if not table.find({"Melee","Blox Fruit","Sword","Gun"},tt) then return end
local cd=eq:FindFirstChild("Cooldown") and eq.Cooldown.Value or Config.AttackCooldown
if not self:CheckStun(c,h,tt) then return end
local cb=self:GetCombo()
cd=cd+(cb>=Config.MaxCombo and 0.05 or 0)
self.Debounce=cb>=Config.MaxCombo and tt~="Gun" and (tick()+0.05) or tick()
if tt=="Blox Fruit" and eq:FindFirstChild("LeftClickRemote") then
self:UseFruitM1(c,eq,cb)
elseif tt=="Gun" then
local t=self:GetClosestEnemy(c,120)
if t then self:ShootInTarget(t.Position)end
else
self:UseNormalClick(c,h,cd)
end
end

AttackInstance=FastAttack.new()
table.insert(AttackInstance.Connections,RunService.Stepped:Connect(function()AttackInstance:Attack()end))

RunService.Heartbeat:Connect(function()
if not getgenv().PMT_GunFast then return end
local c=Player.Character
if not c then return end
local tl=c:FindFirstChildOfClass("Tool")
if not tl or tl.ToolTip~="Gun" then return end
AttackInstance:_PrimeGun(tl)
end)

end)()

do
for _,v in pairs(getgc(true))do
if typeof(v)=="function" and iscclosure(v) then
local n=nil
pcall(function()
    if type(debug)=="table" and debug.getinfo then
        local info=debug.getinfo(v)
        if type(info)=="table" then n=info.name end
    end
end)
if n=="Attack" or n=="attack" or n=="RegisterHit" then
hookfunction(v,function(...)
AttackInstance:Attack()
return v(...)
end)
end
end
end
end






  do
      local _lp = game:GetService("Players").LocalPlayer
      local function _fixDeathAnim(char)
          local hum = char:WaitForChild("Humanoid", 5)
          if not hum then return end
          hum.Died:Connect(function()
              task.delay(0.05, function()
                  pcall(function()
                      local animator = hum:FindFirstChildOfClass("Animator")
                      if animator then
                          for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                              pcall(function() track:Stop(0) end)
                          end
                      end
                  end)
                  pcall(function()
                      local hrp = char:FindFirstChild("HumanoidRootPart")
                      if hrp then
                          for _, v in ipairs(hrp:GetChildren()) do
                              if v:IsA("BodyVelocity") or v:IsA("BodyGyro")
                              or v:IsA("LinearVelocity") or v:IsA("AlignOrientation")
                              or v:IsA("BodyPosition") or v:IsA("BodyAngularVelocity") then
                                  pcall(function() v:Destroy() end)
                              end
                          end
                          pcall(function()
                              hrp.AssemblyLinearVelocity  = Vector3.zero
                              hrp.AssemblyAngularVelocity = Vector3.zero
                          end)
                      end
                  end)
                  pcall(function()
                      if hum and hum.Parent then
                          hum.WalkSpeed  = 0
                          hum.JumpHeight = 0
                      end
                  end)
              end)
          end)
      end
      if _lp.Character then pcall(_fixDeathAnim, _lp.Character) end
      _lp.CharacterAdded:Connect(function(c) pcall(_fixDeathAnim, c) end)
  end


  getgenv().ZA_AutoStoreFruit = false
  getgenv().ZA_RandomAuto     = false
  getgenv().ZA_Tweenfruit     = false
  getgenv().ZA_Grabfruit      = false


  getgenv().ZA_FormatBeli = function(n)
      local s = tostring(n)
      repeat local ns, c = s:gsub("^(-?%d+)(%d%d%d)", "%1,%2"); s = ns; if c == 0 then break end until false
      return s
  end

  getgenv().ZA_GetFruitStock = function()
      local out = "Advance Fruit Stock\n"
      local ok, data = pcall(function()
          return commF:InvokeServer("GetFruits", true)
      end)
      if ok and data then
          local any = false
          for _, f in pairs(data) do
              if f.OnSale then out = out .. f.Name .. " - $" .. getgenv().ZA_FormatBeli(f.Price) .. "\n"; any = true end
          end
          if not any then out = out .. "- No fruits available.\n" end
      else
          out = out .. "- Error fetching data.\n"
      end
      out = out .. "\nNormal Fruit Stock\n"
      local ok2, data2 = pcall(function()
          return commF:InvokeServer("GetFruits")
      end)
      if ok2 and data2 then
          local any2 = false
          for _, f in pairs(data2) do
              if f.OnSale then out = out .. f.Name .. " - $" .. getgenv().ZA_FormatBeli(f.Price) .. "\n"; any2 = true end
          end
          if not any2 then out = out .. "- No fruits available.\n" end
      else
          out = out .. "- Error fetching data.\n"
      end
      return out
  end


  do
      task.spawn(function()
          pcall(function()
              while task.wait() do
                  if getgenv().ZA_RandomAuto then
                      pcall(function()
                          commF:InvokeServer("Cousin", "Buy")
                      end)
                  end
              end
          end)
      end)
  end

  do
      local _fruitNames = {
          "Rocket Fruit","Spin Fruit","Blade Fruit","Spring Fruit","Bomb Fruit",
          "Smoke Fruit","Spike Fruit","Flame Fruit","Eagle Fruit","Ice Fruit",
          "Sand Fruit","Dark Fruit","Diamond Fruit","Light Fruit","Rubber Fruit",
          "Creation Fruit","Ghost Fruit","Magma Fruit","Quake Fruit","Buddha Fruit",
          "Love Fruit","Spider Fruit","Sound Fruit","Phoenix Fruit","Portal Fruit",
          "Lightning Fruit","Pain Fruit","Blizzard Fruit","Gravity Fruit","Mammoth Fruit",
          "T-Rex Fruit","Dough Fruit","Shadow Fruit","Venom Fruit","Gas Fruit",
          "Control Fruit","Spirit Fruit","Leopard Fruit","Yeti Fruit","Kitsune Fruit",
          "Dragon Fruit",
      }
      local _fruitTips = {
          "Rocket-Rocket","Spin-Spin","Blade-Blade","Spring-Spring","Bomb-Bomb",
          "Smoke-Smoke","Spike-Spike","Flame-Flame","Eagle-Eagle","Ice-Ice",
          "Sand-Sand","Dark-Dark","Diamond-Diamond","Light-Light","Rubber-Rubber",
          "Creation-Creation","Ghost-Ghost","Magma-Magma","Quake-Quake","Buddha-Buddha",
          "Love-Love","Spider-Spider","Sound-Sound","Phoenix-Phoenix","Portal-Portal",
          "Lightning-Lightning","Pain-Pain","Blizzard-Blizzard","Gravity-Gravity","Mammoth-Mammoth",
          "T-Rex-T-Rex","Dough-Dough","Shadow-Shadow","Venom-Venom","Gas-Gas",
          "Control-Control","Spirit-Spirit","Leopard-Leopard","Yeti-Yeti","Kitsune-Kitsune",
          "Dragon-Dragon",
      }
      task.spawn(function()
          while task.wait(0.2) do
              if getgenv().ZA_AutoStoreFruit then
                  pcall(function()
                      local _lp2 = game:GetService("Players").LocalPlayer
                      local _char = _lp2.Character or _lp2.CharacterAdded:Wait()
                      local _bp   = _lp2:WaitForChild("Backpack")
                      for i, name in ipairs(_fruitNames) do
                          local _tool = _bp:FindFirstChild(name) or _char:FindFirstChild(name)
                          if _tool then
                              pcall(function()
                                  commF:InvokeServer("StoreFruit", _fruitTips[i], _tool)
                              end)
                              break
                          end
                      end
                  end)
              end
          end
      end)
      task.spawn(function()
          while task.wait(0.1) do
              if getgenv().ZA_Tweenfruit then
                  for _, v in pairs(game.Workspace:GetChildren()) do
                      if string.find(v.Name, "Fruit") then
                          pcall(function() _tp(v.Handle.CFrame) end)
                      end
                  end
              end
              if getgenv().ZA_Grabfruit then
                  for _, v in pairs(game.Workspace:GetChildren()) do
                      if string.find(v.Name, "Fruit") then
                          pcall(function()
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                          end)
                      end
                  end
              end
          end
      end)
  end




  do
      local ExtrasTab = Library:MakeTab({ Title = "Extras & ESP", Icon = "rbxassetid://10747372167" })


      do
          getgenv().ZA_ChestESP2 = false
          ExtrasTab:AddSection("Advanced ESP")
          ExtrasTab:AddToggle({
              Name    = "Chest ESP",
              Default = false,
              Callback = function(v)
                  getgenv().ZA_ChestESP2 = v
                  if not v then
                      for _, chest in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
                          local b = chest:FindFirstChild("_ZA_ChestEsp2")
                          if b then b:Destroy() end
                      end
                  end
              end,
          })
          task.spawn(function()
              while task.wait(0.5) do pcall(function()
                  for _, chest in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
                      pcall(function()
                          if getgenv().ZA_ChestESP2 and not chest:GetAttribute("IsDisabled") then
                              if not chest:FindFirstChild("_ZA_ChestEsp2") then
                                  local b = Instance.new("BillboardGui", chest)
                                  b.Name = "_ZA_ChestEsp2"; b.AlwaysOnTop = true
                                  b.Size = UDim2.new(1, 200, 1, 30); b.Adornee = chest
                                  local t = Instance.new("TextLabel", b)
                                  t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                  t.Font = Enum.Font.GothamBold; t.TextStrokeTransparency = 0.5
                                  t.TextColor3 = Color3.fromRGB(255, 215, 0); t.TextWrapped = true
                              else
                                  local dist = math.floor((game.Players.LocalPlayer.Character.Head.Position - chest:GetPivot().Position).Magnitude / 3)
                                  chest._ZA_ChestEsp2.TextLabel.Text = "Chest\n" .. dist .. " M"
                              end
                          else
                              local b = chest:FindFirstChild("_ZA_ChestEsp2")
                              if b then b:Destroy() end
                          end
                      end)
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_IslandESP = false
          ExtrasTab:AddToggle({
              Name    = "Island ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_IslandESP = v end,
          })
          task.spawn(function()
              while task.wait(0.5) do pcall(function()
                  for _, loc in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                      pcall(function()
                          if getgenv().ZA_IslandESP and loc.Name ~= "Sea" then
                              if not loc:FindFirstChild("_ZA_IsleEsp2") then
                                  local b = Instance.new("BillboardGui", loc)
                                  b.Name = "_ZA_IsleEsp2"; b.AlwaysOnTop = true
                                  b.Size = UDim2.new(1, 200, 1, 30); b.Adornee = loc
                                  local t = Instance.new("TextLabel", b)
                                  t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                  t.Font = Enum.Font.GothamBold; t.TextStrokeTransparency = 0.5
                                  t.TextColor3 = Color3.fromRGB(8, 247, 255); t.TextWrapped = true
                              else
                                  local dist = math.floor((game.Players.LocalPlayer.Character.Head.Position - loc.Position).Magnitude / 3)
                                  loc._ZA_IsleEsp2.TextLabel.Text = loc.Name .. "\n" .. dist .. " M"
                              end
                          else
                              local b = loc:FindFirstChild("_ZA_IsleEsp2")
                              if b then b:Destroy() end
                          end
                      end)
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_MirageESP = false
          ExtrasTab:AddToggle({
              Name    = "Mirage Island ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_MirageESP = v end,
          })
          task.spawn(function()
              while task.wait(1) do pcall(function()
                  for _, loc in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                      pcall(function()
                          if getgenv().ZA_MirageESP and loc.Name == "Mirage Island" then
                              if not loc:FindFirstChild("_ZA_MirageEsp2") then
                                  local b = Instance.new("BillboardGui", loc)
                                  b.Name = "_ZA_MirageEsp2"; b.AlwaysOnTop = true
                                  b.Size = UDim2.new(1, 200, 1, 30); b.Adornee = loc
                                  local t = Instance.new("TextLabel", b)
                                  t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                  t.Font = Enum.Font.Code; t.TextStrokeTransparency = 0.5
                                  t.TextColor3 = Color3.fromRGB(80, 245, 245); t.TextWrapped = true
                              else
                                  local dist = math.floor((game.Players.LocalPlayer.Character.Head.Position - loc.Position).Magnitude / 3)
                                  loc._ZA_MirageEsp2.TextLabel.Text = "Mirage Island\n" .. dist .. " M"
                              end
                          else
                              local b = loc:FindFirstChild("_ZA_MirageEsp2")
                              if b then b:Destroy() end
                          end
                      end)
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_FlowerESP = false
          ExtrasTab:AddToggle({
              Name    = "Flower ESP (Blue & Red)",
              Default = false,
              Callback = function(v) getgenv().ZA_FlowerESP = v end,
          })
          task.spawn(function()
              while task.wait(0.5) do pcall(function()
                  for _, v in pairs(workspace:GetChildren()) do
                      pcall(function()
                          if v.Name == "Flower1" or v.Name == "Flower2" then
                              if getgenv().ZA_FlowerESP then
                                  if not v:FindFirstChild("_ZA_FlwEsp") then
                                      local b = Instance.new("BillboardGui", v)
                                      b.Name = "_ZA_FlwEsp"; b.AlwaysOnTop = true
                                      b.Size = UDim2.new(1, 200, 1, 30); b.Adornee = v
                                      local t = Instance.new("TextLabel", b)
                                      t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                      t.Font = Enum.Font.GothamBold; t.TextStrokeTransparency = 0.5; t.TextWrapped = true
                                      t.TextColor3 = v.Name == "Flower1" and Color3.fromRGB(0, 100, 255) or Color3.fromRGB(255, 0, 0)
                                  else
                                      local dist = math.floor((game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3)
                                      v._ZA_FlwEsp.TextLabel.Text = (v.Name == "Flower1" and "Blue Flower" or "Red Flower") .. "\n" .. dist .. " M"
                                  end
                              else
                                  local b = v:FindFirstChild("_ZA_FlwEsp")
                                  if b then b:Destroy() end
                              end
                          end
                      end)
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_MobESP = false
          ExtrasTab:AddToggle({
              Name    = "Enemy (Mob) ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_MobESP = v end,
          })
          task.spawn(function()
              while task.wait(0.3) do pcall(function()
                  for _, v in pairs(workspace.Enemies:GetChildren()) do
                      pcall(function()
                          if v:FindFirstChild("HumanoidRootPart") then
                              if getgenv().ZA_MobESP then
                                  if not v:FindFirstChild("_ZA_MobEsp") then
                                      local b = Instance.new("BillboardGui", v)
                                      b.Name = "_ZA_MobEsp"; b.AlwaysOnTop = true
                                      b.Size = UDim2.new(0, 200, 0, 50); b.StudsOffset = Vector3.new(0, 2.5, 0)
                                      local t = Instance.new("TextLabel", b)
                                      t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                      t.Font = Enum.Font.GothamBold; t.TextColor3 = Color3.fromRGB(7, 236, 240)
                                  end
                                  local dist = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                                  v._ZA_MobEsp.TextLabel.Text = v.Name .. " - " .. dist .. " M"
                              else
                                  local b = v:FindFirstChild("_ZA_MobEsp")
                                  if b then b:Destroy() end
                              end
                          end
                      end)
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_SeaBeastESP = false
          ExtrasTab:AddToggle({
              Name    = "Sea Beast ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_SeaBeastESP = v end,
          })
          task.spawn(function()
              while task.wait(0.3) do pcall(function()
                  local sb = workspace:FindFirstChild("SeaBeasts")
                  if sb then
                      for _, v in pairs(sb:GetChildren()) do
                          pcall(function()
                              if v:FindFirstChild("HumanoidRootPart") then
                                  if getgenv().ZA_SeaBeastESP then
                                      if not v:FindFirstChild("_ZA_SeaEsp") then
                                          local b = Instance.new("BillboardGui", v)
                                          b.Name = "_ZA_SeaEsp"; b.AlwaysOnTop = true
                                          b.Size = UDim2.new(0, 200, 0, 50); b.StudsOffset = Vector3.new(0, 2.5, 0)
                                          local t = Instance.new("TextLabel", b)
                                          t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                          t.Font = Enum.Font.GothamBold; t.TextColor3 = Color3.fromRGB(0, 200, 255)
                                      end
                                      local dist = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                                      v._ZA_SeaEsp.TextLabel.Text = v.Name .. " - " .. dist .. " M"
                                  else
                                      local b = v:FindFirstChild("_ZA_SeaEsp")
                                      if b then b:Destroy() end
                                  end
                              end
                          end)
                      end
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_NpcESP = false
          ExtrasTab:AddToggle({
              Name    = "NPC ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_NpcESP = v end,
          })
          task.spawn(function()
              while task.wait(0.5) do pcall(function()
                  local npcs = workspace:FindFirstChild("NPCs")
                  if npcs then
                      for _, v in pairs(npcs:GetChildren()) do
                          pcall(function()
                              if v:FindFirstChild("HumanoidRootPart") then
                                  if getgenv().ZA_NpcESP then
                                      if not v:FindFirstChild("_ZA_NpcEsp") then
                                          local b = Instance.new("BillboardGui", v)
                                          b.Name = "_ZA_NpcEsp"; b.AlwaysOnTop = true
                                          b.Size = UDim2.new(0, 200, 0, 50); b.StudsOffset = Vector3.new(0, 2.5, 0)
                                          local t = Instance.new("TextLabel", b)
                                          t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                          t.Font = Enum.Font.GothamBold; t.TextColor3 = Color3.fromRGB(255, 180, 0)
                                      end
                                      local dist = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                                      v._ZA_NpcEsp.TextLabel.Text = v.Name .. " - " .. dist .. " M"
                                  else
                                      local b = v:FindFirstChild("_ZA_NpcEsp")
                                      if b then b:Destroy() end
                                  end
                              end
                          end)
                      end
                  end
              end) end
          end)
      end


      do
          getgenv().ZA_AfdESP = false
          ExtrasTab:AddToggle({
              Name    = "Fruit Dealer ESP",
              Default = false,
              Callback = function(v) getgenv().ZA_AfdESP = v end,
          })
          task.spawn(function()
              while task.wait(1) do pcall(function()
                  local npcs = workspace:FindFirstChild("NPCs")
                  if npcs then
                      for _, v in pairs(npcs:GetChildren()) do
                          pcall(function()
                              if getgenv().ZA_AfdESP and v.Name == "Advanced Fruit Dealer" then
                                  if not v:FindFirstChild("_ZA_AfdEsp") then
                                      local b = Instance.new("BillboardGui", v)
                                      b.Name = "_ZA_AfdEsp"; b.AlwaysOnTop = true
                                      b.Size = UDim2.new(1, 200, 1, 30)
                                      local t = Instance.new("TextLabel", b)
                                      t.BackgroundTransparency = 1; t.Size = UDim2.new(1, 0, 1, 0)
                                      t.Font = Enum.Font.Code; t.TextStrokeTransparency = 0.5
                                      t.TextColor3 = Color3.fromRGB(80, 245, 245); t.TextWrapped = true
                                  else
                                      local dist = math.floor((game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3)
                                      v._ZA_AfdEsp.TextLabel.Text = "Fruit Dealer\n" .. dist .. " M"
                                  end
                              else
                                  local b = v:FindFirstChild("_ZA_AfdEsp")
                                  if b then b:Destroy() end
                              end
                          end)
                      end
                  end
              end) end
          end)
      end


      do
          ExtrasTab:AddSection("Fruit Stock")
          local _stockPara = ExtrasTab:AddParagraph({ Title = "Fruit Stock", Desc = "Loading..." })
          task.spawn(function()
              task.wait(3)
              pcall(function() _stockPara:SetDesc(getgenv().ZA_GetFruitStock()) end)
              while task.wait(60) do
                  pcall(function() _stockPara:SetDesc(getgenv().ZA_GetFruitStock()) end)
              end
          end)
          ExtrasTab:AddButton({
              Name = "Refresh Stock",
              Callback = function()
                  pcall(function() _stockPara:SetDesc(getgenv().ZA_GetFruitStock()) end)
              end,
          })
      end


      ExtrasTab:AddSection("Fruits Automation")
      ExtrasTab:AddToggle({ Name = "Auto Random Fruits", Default = false, Callback = function(v) getgenv().ZA_RandomAuto = v end })
      ExtrasTab:AddToggle({ Name = "Auto Store Fruits",  Default = false, Callback = function(v) getgenv().ZA_AutoStoreFruit = v end })
      ExtrasTab:AddToggle({ Name = "Teleport To Fruit Spawn", Default = false, Callback = function(v) getgenv().ZA_Tweenfruit = v end })
      ExtrasTab:AddToggle({ Name = "Auto Teleport Fruits",    Default = false, Callback = function(v) getgenv().ZA_Grabfruit  = v end })


      do
          ExtrasTab:AddSection("Fast Attack (Remote)")
          ExtrasTab:AddParagraph({ Title = "Info", Desc = "Uses LeftClickRemote / RegisterAttack+RegisterHit. Safe method." })
          getgenv().ZA_FastAttack2 = false
          getgenv().ZA_FADelay2    = 0.05
          ExtrasTab:AddToggle({ Name = "Fast Attack", Default = false, Callback = function(v) getgenv().ZA_FastAttack2 = v end })
          ExtrasTab:AddSlider({ Name = "Attack Delay (ms)", Min = 0, Max = 300, Default = 50, Callback = function(v) getgenv().ZA_FADelay2 = v / 1000 end })
          task.spawn(function()
              local RS = game:GetService("ReplicatedStorage")
              while task.wait(getgenv().ZA_FADelay2 or 0.05) do
                  if getgenv().ZA_FastAttack2 then
                      pcall(function()
                          local _player2 = game.Players.LocalPlayer
                          local _char2   = _player2.Character
                          if not _char2 then return end
                          local hum2 = _char2:FindFirstChild("Humanoid")
                          if not hum2 or hum2.Health <= 0 then return end
                          local _enemies2 = {}
                          for _, en in pairs(workspace.Enemies:GetChildren()) do
                              pcall(function()
                                  local head = en:FindFirstChild("Head")
                                  local hum  = en:FindFirstChild("Humanoid")
                                  if head and hum and hum.Health > 0 and _player2:DistanceFromCharacter(head.Position) < 100 then
                                      table.insert(_enemies2, {en, head})
                                  end
                              end)
                          end
                          if #_enemies2 == 0 then return end
                          local eq = _char2:FindFirstChildOfClass("Tool")
                          if not eq then return end
                          if eq:FindFirstChild("LeftClickRemote") then
                              for _, ed in ipairs(_enemies2) do
                                  pcall(function()
                                      if eq.ToolTip == "Blox Fruit" then
                                          eq.LeftClickRemote:FireServer(Vector3.new(0,-500,0), math.random(1,3), true)
                                          task.wait(0.01)
                                          eq.LeftClickRemote:FireServer(false)
                                      else
                                          local dir = (ed[1].HumanoidRootPart.Position - _char2:GetPivot().Position).Unit
                                          eq.LeftClickRemote:FireServer(dir, 1, true)
                                          task.wait(0.01)
                                          eq.LeftClickRemote:FireServer(false)
                                      end
                                  end)
                              end
                          else
                              local mods = RS:FindFirstChild("Modules")
                              local net  = mods and mods:FindFirstChild("Net")
                              local atk  = net and net:FindFirstChild("RE/RegisterAttack")
                              local hit  = net and net:FindFirstChild("RE/RegisterHit")
                              local mainHead = _enemies2[1][2]
                              if atk then pcall(function() atk:FireServer(0) end) end
                              if hit and mainHead then
                                  local args = {[1]=mainHead, [2]={}, [4]="078da341"}
                                  for r, ed in pairs(_enemies2) do args[2][r] = {ed[1], ed[1].HumanoidRootPart} end
                                  pcall(function() hit:FireServer(table.unpack(args)) end)
                              end
                          end
                      end)
                  end
              end
          end)
      end


      do
          ExtrasTab:AddSection("Sword Items")
          getgenv().ZA_AutoLegSword = false
          ExtrasTab:AddToggle({ Name = "Auto Buy Legendary Sword [Sea 2]", Default = false, Callback = function(v) getgenv().ZA_AutoLegSword = v end })
          task.spawn(function()
              while task.wait(0.5) do
                  if getgenv().ZA_AutoLegSword then
                      pcall(function()
                          local r = commF
                          r:InvokeServer("LegendarySwordDealer","1")
                          r:InvokeServer("LegendarySwordDealer","2")
                          r:InvokeServer("LegendarySwordDealer","3")
                      end)
                  end
              end
          end)
          getgenv().ZA_AutoYama2 = false
          ExtrasTab:AddToggle({ Name = "Auto Get Yama [Sea 3 — 30 Elite Kills]", Default = false, Callback = function(v) getgenv().ZA_AutoYama2 = v end })
          task.spawn(function()
              while task.wait() do
                  if getgenv().ZA_AutoYama2 then
                      pcall(function()
                          local prog = commF:InvokeServer("EliteHunter","Progress")
                          if prog and prog >= 30 then
                              local _bp2 = game.Players.LocalPlayer.Backpack
                              repeat task.wait()
                                  pcall(function() fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector) end)
                              until _bp2:FindFirstChild("Yama") or not getgenv().ZA_AutoYama2
                          end
                      end)
                  end
              end
          end)
          getgenv().ZA_AutoTushita2 = false
          ExtrasTab:AddToggle({ Name = "Auto Get Tushita [Sea 3]", Default = false, Callback = function(v) getgenv().ZA_AutoTushita2 = v end })
          task.spawn(function()
              while task.wait() do
                  if getgenv().ZA_AutoTushita2 then
                      pcall(function()
                          local _chr2 = game.Players.LocalPlayer.Character
                          if not _chr2 then return end
                          for _, v in pairs(workspace.Enemies:GetChildren()) do
                              if v.Name == "Longma" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                  repeat task.wait()
                                      pcall(function()
                                          v.HumanoidRootPart.CanCollide = false
                                          v.Humanoid.WalkSpeed = 0
                                          v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                          if _chr2:FindFirstChild("HumanoidRootPart") then
                                              _chr2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                          end
                                      end)
                                  until not getgenv().ZA_AutoTushita2 or not v.Parent or v.Humanoid.Health <= 0
                              end
                          end
                      end)
                  end
              end
          end)
      end
  end




  do
      local MeleeTab = Library:MakeTab({ Title = "Melee Styles", Icon = "rbxassetid://10734975692" })

      local function _GetBP_ml(name)
          local _lp3 = game.Players.LocalPlayer
          if _lp3:FindFirstChild("WeaponAssetCache") then
              for _, v in ipairs(_lp3.WeaponAssetCache:GetChildren()) do
                  if v.Name == name then return v end
              end
          end
          return false
      end

      MeleeTab:AddSection("Auto Unlock Fighting Styles")


      do
          getgenv().ZA_AutoSuperHuman2 = false
          MeleeTab:AddToggle({ Name = "Auto Superhuman", Default = false, Callback = function(v) getgenv().ZA_AutoSuperHuman2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoSuperHuman2 then
                      pcall(function()
                          local _lp3 = game.Players.LocalPlayer
                          if not _lp3:FindFirstChild("WeaponAssetCache") then return end
                          if _GetBP_ml("Superhuman") then return end
                          local beli = _lp3.Data.Beli.Value
                          local frag = _lp3.Data.Fragments.Value
                          if not _GetBP_ml("Black Leg")     and beli >= 150000 then rep3.Remotes.CommF_:InvokeServer("BuyBlackLeg") end
                          if not _GetBP_ml("Electro")       and beli >= 500000 then rep3.Remotes.CommF_:InvokeServer("BuyElectro") end
                          if not _GetBP_ml("Fishman Karate") and beli >= 750000 then rep3.Remotes.CommF_:InvokeServer("BuyFishmanKarate") end
                          if not _GetBP_ml("Dragon Claw")   and frag >= 1500   then rep3.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") end
                          if _GetBP_ml("Black Leg") and _GetBP_ml("Electro") and _GetBP_ml("Fishman Karate") and _GetBP_ml("Dragon Claw") then
                              rep3.Remotes.CommF_:InvokeServer("BuySuperhuman")
                          end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoDeathStep2 = false
          MeleeTab:AddToggle({ Name = "Auto Death Step", Default = false, Callback = function(v) getgenv().ZA_AutoDeathStep2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoDeathStep2 then
                      pcall(function()
                          local _lp3 = game.Players.LocalPlayer
                          if not _lp3:FindFirstChild("WeaponAssetCache") then return end
                          if _GetBP_ml("Death Step") then getgenv().ZA_AutoDeathStep2 = false; return end
                          if not _GetBP_ml("Black Leg") then rep3.Remotes.CommF_:InvokeServer("BuyBlackLeg"); return end
                          local bl = _GetBP_ml("Black Leg")
                          if bl and bl.Level.Value < 400 then _G.Level = true
                          else _G.Level = false; rep3.Remotes.CommF_:InvokeServer("BuyDeathStep") end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoSharkman2 = false
          MeleeTab:AddToggle({ Name = "Auto Sharkman Karate", Default = false, Callback = function(v) getgenv().ZA_AutoSharkman2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoSharkman2 then
                      pcall(function()
                          local _lp3 = game.Players.LocalPlayer
                          if not _lp3:FindFirstChild("WeaponAssetCache") then return end
                          if _GetBP_ml("Sharkman Karate") then getgenv().ZA_AutoSharkman2 = false; return end
                          if not _GetBP_ml("Fishman Karate") then rep3.Remotes.CommF_:InvokeServer("BuyFishmanKarate"); return end
                          local fk = _GetBP_ml("Fishman Karate")
                          if fk and fk.Level.Value < 400 then _G.Level = true
                          else _G.Level = false; rep3.Remotes.CommF_:InvokeServer("BuySharkmanKarate") end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoElecClaw2 = false
          MeleeTab:AddToggle({ Name = "Auto Electric Claw", Default = false, Callback = function(v) getgenv().ZA_AutoElecClaw2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoElecClaw2 then
                      pcall(function()
                          local _lp3 = game.Players.LocalPlayer
                          if not _lp3:FindFirstChild("WeaponAssetCache") then return end
                          if _GetBP_ml("Electric Claw") then getgenv().ZA_AutoElecClaw2 = false; return end
                          if not _GetBP_ml("Electro") then rep3.Remotes.CommF_:InvokeServer("BuyElectro"); return end
                          local el = _GetBP_ml("Electro")
                          if el and el.Level.Value >= 400 then rep3.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                          else _G.Level = true end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoDragonTalon2 = false
          MeleeTab:AddToggle({ Name = "Auto Dragon Talon", Default = false, Callback = function(v) getgenv().ZA_AutoDragonTalon2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoDragonTalon2 then
                      pcall(function()
                          local _lp3 = game.Players.LocalPlayer
                          if not _lp3:FindFirstChild("WeaponAssetCache") then return end
                          if _GetBP_ml("Dragon Talon") then getgenv().ZA_AutoDragonTalon2 = false; return end
                          if not _GetBP_ml("Dragon Claw") then rep3.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2"); return end
                          local dc = _GetBP_ml("Dragon Claw")
                          if dc and dc.Level.Value >= 400 then
                              rep3.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                              rep3.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                          else _G.Level = true end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoGodhuman2 = false
          MeleeTab:AddToggle({ Name = "Auto Godhuman", Default = false, Callback = function(v) getgenv().ZA_AutoGodhuman2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait() do
                  if getgenv().ZA_AutoGodhuman2 then
                      pcall(function()
                          local res = rep3.Remotes.CommF_:InvokeServer("BuyGodhuman", true)
                          if type(res) == "string" and res:find("Bring me") then _G.Level = true
                          elseif res == nil then
                              _G.Level = false
                              rep3.Remotes.CommF_:InvokeServer("BuyGodhuman")
                              getgenv().ZA_AutoGodhuman2 = false
                          end
                      end)
                  end
              end
          end)
      end


      do
          getgenv().ZA_AutoSanguine2 = false
          MeleeTab:AddToggle({ Name = "Auto Sanguine Art", Default = false, Callback = function(v) getgenv().ZA_AutoSanguine2 = v end })
          task.spawn(function()
              local rep3 = game:GetService("ReplicatedStorage")
              while task.wait(0.1) do
                  if getgenv().ZA_AutoSanguine2 then
                      pcall(function()
                          if _GetBP_ml("Sanguine Art") then getgenv().ZA_AutoSanguine2 = false; return end
                          rep3.Remotes.CommF_:InvokeServer("Sanguine Art")
                      end)
                  end
              end
          end)
      end


      do
          MeleeTab:AddSection("Attack No-Cooldown (M1)")
          getgenv().ZA_InitAttack2   = false
          getgenv().ZA_AttackRange2  = 60
          MeleeTab:AddToggle({ Name = "Initialize Attack (M1 No-CD)", Default = false, Callback = function(v) getgenv().ZA_InitAttack2 = v end })
          MeleeTab:AddSlider({ Name = "Attack Range (studs)", Min = 20, Max = 150, Default = 60, Callback = function(v) getgenv().ZA_AttackRange2 = v end })
          task.spawn(function()
              local RS = game:GetService("ReplicatedStorage")
              local function _doAttackNCD()
                  local _lp3 = game.Players.LocalPlayer
                  local char2 = _lp3.Character; if not char2 then return end
                  local hum2  = char2:FindFirstChild("Humanoid"); if not hum2 or hum2.Health <= 0 then return end
                  local weapon2 = char2:FindFirstChildOfClass("Tool"); if not weapon2 then return end
                  local range2 = getgenv().ZA_AttackRange2 or 60
                  local charPos2 = char2:GetPivot().Position
                  local enemies2 = {}
                  for _, e in ipairs(workspace.Enemies:GetChildren()) do
                      local r = e:FindFirstChild("HumanoidRootPart")
                      local h = e:FindFirstChild("Humanoid")
                      if r and h and h.Health > 0 and (r.Position - charPos2).Magnitude <= range2 then
                          table.insert(enemies2, e)
                      end
                  end
                  if #enemies2 == 0 then return end
                  if weapon2:FindFirstChild("LeftClickRemote") then
                      for _, e in ipairs(enemies2) do
                          pcall(function()
                              if weapon2.ToolTip == "Blox Fruit" then
                                  weapon2.LeftClickRemote:FireServer(Vector3.new(0,-500,0), math.random(1,3), true)
                                  task.wait(0.01)
                                  weapon2.LeftClickRemote:FireServer(false)
                              else
                                  local dir = (e.HumanoidRootPart.Position - charPos2).Unit
                                  weapon2.LeftClickRemote:FireServer(dir, 1, true)
                                  task.wait(0.01)
                                  weapon2.LeftClickRemote:FireServer(false)
                              end
                          end)
                      end
                      return
                  end
                  local mods2 = RS:FindFirstChild("Modules")
                  local net2  = mods2 and mods2:FindFirstChild("Net")
                  local atk2  = net2 and net2:FindFirstChild("RE/RegisterAttack")
                  local hit2  = net2 and net2:FindFirstChild("RE/RegisterHit")
                  local targets2, mhd2 = {}, nil
                  for _, e in ipairs(enemies2) do
                      if not e:GetAttribute("IsBoat") then
                          local h = e:FindFirstChild("Head") or e.PrimaryPart
                          if h then table.insert(targets2, {e, h}); mhd2 = mhd2 or h end
                      end
                  end
                  if not mhd2 then return end
                  if atk2 then pcall(function() atk2:FireServer(0) end) end
                  if hit2 then
                      local a2 = {[1]=mhd2, [2]={}, [4]="078da341"}
                      for r, ed in pairs(targets2) do a2[2][r] = {ed[1], ed[1].HumanoidRootPart} end
                      pcall(function() hit2:FireServer(table.unpack(a2)) end)
                  end
              end
              game:GetService("RunService").Heartbeat:Connect(function()
                  pcall(function() if getgenv().ZA_InitAttack2 then _doAttackNCD() end end)
              end)
          end)
      end


      do
          MeleeTab:AddSection("Weapon Config")
          MeleeTab:AddDropdown({
              Name = "Auto-Equip Weapon Type",
              Options = {"Melee","Sword","Blox Fruit","Gun"},
              Default = "Melee", Multi = false,
              Callback = function(v) getgenv().ZA_ChooseWP2 = v end,
          })
          task.spawn(function()
              while task.wait(0.1) do
                  pcall(function()
                      if not getgenv().ZA_ChooseWP2 then return end
                      for _, tool in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                          if tool.ToolTip == getgenv().ZA_ChooseWP2 then _G.SelectWeapon = tool.Name; break end
                      end
                  end)
              end
          end)
      end
  end




  do
      local MiscTab = Library:MakeTab({ Title = "Misc & Env", Icon = "rbxassetid://10723434557" })


      do
          MiscTab:AddSection("Player UI / GUI")
          MiscTab:AddButton({ Name = "Open Awakenings Expert", Callback = function()
              pcall(function() game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true end)
          end })
          MiscTab:AddButton({ Name = "Open Title Selection", Callback = function()
              pcall(function()
                  commF:InvokeServer("getTitles", true)
                  game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
              end)
          end })
          MiscTab:AddToggle({ Name = "Hide Chat", Default = false, Callback = function(v)
              pcall(function() game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not v) end)
          end })
          MiscTab:AddToggle({ Name = "Hide Leaderboard", Default = false, Callback = function(v)
              pcall(function() game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not v) end)
          end })
          MiscTab:AddButton({ Name = "Set Team: Pirates", Callback = function()
              pcall(function() commF:InvokeServer("SetTeam","Pirates") end)
          end })
          MiscTab:AddButton({ Name = "Set Team: Marines", Callback = function()
              pcall(function() commF:InvokeServer("SetTeam","Marines") end)
          end })
      end


      do
          MiscTab:AddSection("Movement & Safety")
          MiscTab:AddSlider({ Name = "Walk Speed", Min = 16, Max = 300, Default = 16, Callback = function(v)
              pcall(function()
                  local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                  if hum then hum.WalkSpeed = v end
              end)
          end })
          MiscTab:AddSlider({ Name = "Jump Power", Min = 50, Max = 500, Default = 50, Callback = function(v)
              pcall(function()
                  local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                  if hum then hum.JumpPower = v end
              end)
          end })
          getgenv().ZA_SafeMode   = false
          getgenv().ZA_RemoveLava = false
          getgenv().ZA_PortalUnlock = false
          getgenv().ZA_InfSoru    = false
          getgenv().ZA_AutoRaceV3 = false
          getgenv().ZA_AutoRaceV4 = false
          getgenv().ZA_DisableNotifs = false
          MiscTab:AddToggle({ Name = "Auto Safe Mode (Fly Up)", Default = false, Callback = function(v) getgenv().ZA_SafeMode = v end })
          task.spawn(function()
              while task.wait(0.5) do
                  if getgenv().ZA_SafeMode then
                      pcall(function()
                          local hrp2 = game.Players.LocalPlayer.Character.HumanoidRootPart
                          hrp2.CFrame = hrp2.CFrame * CFrame.new(0, 200, 0)
                      end)
                  end
              end
          end)
          MiscTab:AddToggle({ Name = "Delete Lava", Default = false, Callback = function(v) getgenv().ZA_RemoveLava = v end })
          task.spawn(function()
              while task.wait(1) do
                  if getgenv().ZA_RemoveLava then
                      pcall(function()
                          for _, o in ipairs(workspace:GetDescendants()) do
                              if o:IsA("BasePart") and string.lower(o.Name):find("lava") then
                                  pcall(function() o:Destroy() end)
                              end
                          end
                      end)
                  end
              end
          end)
          MiscTab:AddToggle({ Name = "Unlock All Portals", Default = false, Callback = function(v) getgenv().ZA_PortalUnlock = v end })
          task.spawn(function()
              while task.wait(0.1) do
                  if getgenv().ZA_PortalUnlock then
                      pcall(function()
                          local hrp2 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                          if not hrp2 then return end
                          local portals = {Vector3.new(-5800,-900,400), Vector3.new(-16000,100,1200), Vector3.new(0,-2000,0)}
                          for _, pPos in ipairs(portals) do
                              if (hrp2.Position - pPos).Magnitude < 20 then
                                  commF:InvokeServer("requestEntrance", pPos)
                              end
                          end
                      end)
                  end
              end
          end)
          MiscTab:AddToggle({ Name = "Infinite Soru", Default = false, Callback = function(v) getgenv().ZA_InfSoru = v end })
          task.spawn(function()
              while task.wait(1) do
                  if getgenv().ZA_InfSoru then
                      pcall(function()
                          local _lp4 = game.Players.LocalPlayer
                          for _, K in next, getgc() do
                              if type(K) == "function" then
                                  local ok, env = pcall(getfenv, K)
                                  if ok and env and env.script == _lp4.Character:FindFirstChild("Soru") then
                                      for _, uv in next, debug.getupvalues(K) do
                                          if type(uv) == "table" and uv.LastUse then uv.LastUse = 0 end
                                      end
                                  end
                              end
                          end
                      end)
                  end
              end
          end)
          MiscTab:AddToggle({ Name = "Auto Activate Race V3", Default = false, Callback = function(v) getgenv().ZA_AutoRaceV3 = v end })
          task.spawn(function()
              while task.wait(30) do
                  pcall(function()
                      if getgenv().ZA_AutoRaceV3 then
                          commE:FireServer("ActivateAbility")
                      end
                  end)
              end
          end)
          MiscTab:AddToggle({ Name = "Auto Activate Race V4 (Y key)", Default = false, Callback = function(v) getgenv().ZA_AutoRaceV4 = v end })
          task.spawn(function()
              while task.wait(0.1) do
                  pcall(function()
                      if getgenv().ZA_AutoRaceV4 then
                          local vim3 = game:GetService("VirtualInputManager")
                          vim3:SendKeyEvent(true,"Y",false,game); task.wait(0.1); vim3:SendKeyEvent(false,"Y",false,game)
                      end
                  end)
              end
          end)
          MiscTab:AddToggle({ Name = "Disable Game Notifications", Default = false, Callback = function(v) getgenv().ZA_DisableNotifs = v end })
          task.spawn(function()
              while task.wait(1) do
                  if getgenv().ZA_DisableNotifs then
                      pcall(function()
                          local pg = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
                          if pg then local n = pg:FindFirstChild("Notifications"); if n then n.Enabled = false end end
                      end)
                  end
              end
          end)
      end


      do
          MiscTab:AddSection("Stats Allocation")
          getgenv().ZA_StatSel  = "Melee"
          getgenv().ZA_StatAmt  = 1
          getgenv().ZA_AutoStats = false
          MiscTab:AddDropdown({
              Name = "Stat to Level",
              Options = {"Melee","Defense","Sword","Gun","Blox Fruit"},
              Default = "Melee", Multi = false,
              Callback = function(v) getgenv().ZA_StatSel = v end,
          })
          MiscTab:AddSlider({ Name = "Points Per Tick", Min = 1, Max = 200, Default = 1, Callback = function(v) getgenv().ZA_StatAmt = v end })
          MiscTab:AddToggle({ Name = "Auto Allocate Stats", Default = false, Callback = function(v) getgenv().ZA_AutoStats = v end })
          task.spawn(function()
              while task.wait(0.1) do
                  if getgenv().ZA_AutoStats then
                      pcall(function()
                          local _lp4 = game.Players.LocalPlayer
                          if _lp4.Data.Points.Value > 0 then
                              commF:InvokeServer("Stat", getgenv().ZA_StatSel, getgenv().ZA_StatAmt)
                          end
                      end)
                  end
              end
          end)
      end


      do
          MiscTab:AddSection("Redeem Codes")
          local _codes = {
              "BIGNEWS","CHANDLER","AXIORE","BLUXXY","ENYU_IS_PRO","FUDD10","FUDD10_V2",
              "KITTGAMING","MAGICBUS","STARCODEHEO","STRAWHATMAINE","SUB2CAPTAINMAUI",
              "SUB2DAIGROCK","SUB2FER999","SUB2NOOBMASTER123","SUB2OFFICIALNOOBIE",
              "SUB2UNCLEKIZARU","TANTAIGAMING","THEGREATACE","SUB2GAMERROBOT_EXP1",
              "SUB2GAMERROBOT_RESET1","SECRET_ADMIN","KITT_RESET","kittgaming",
              "Sub2CaptainMaui","Sub2Fer999","Enyu_is_Pro","Magicbus","JCWK",
              "Starcodeheo","Bluxxy","fudd10_v2","Sub2NoobMaster123","Sub2UncleKizaru",
              "Sub2Daigrock","Axiore","TantaiGaming","StrawHatMaine","Sub2OfficialNoobie",
              "Fudd10","Bignews","TheGreatAce","TRIPLEABUSE","NOOB2ADMIN","SEATROLLING",
              "CODESLIDE","ADMINHACKED","ADMINDARES","fruitconcepts","krazydares",
              "NOEXPLOITER","EARN_FRUITS","FIGHT4FRUIT","REWARDFUN","Chandler","NEWTROLL",
              "24NOADMIN",
          }
          MiscTab:AddButton({ Name = "Auto Redeem All Codes", Callback = function()
              for _, code in ipairs(_codes) do
                  pcall(function()
                      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem"):InvokeServer(code)
                  end)
                  task.wait(0.1)
              end
          end })
      end


      MiscTab:AddSection("Server")
      MiscTab:AddButton({ Name = "Rejoin Server", Callback = function()
          game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
      end })
      MiscTab:AddButton({ Name = "Server Hop", Callback = function() Hop() end })

  end



Farm:AddSection({"Buddha Transform"})
getgenv().ZX_BuddhaWhenFarming = false
Farm:AddToggle({
    Name = "Buddha When Farming",
    Description = "Auto transform to Buddha fruit while farming",
    Default = false,
    Callback = function(v) getgenv().ZX_BuddhaWhenFarming = v end,
})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().ZX_BuddhaWhenFarming and (_G.StartFarm or _G.Level or getgenv().AutoFarm) then
                local char = plr.Character
                if not char then return end
                local hasFruit = false
                local bp = plr:FindFirstChild("Backpack")
                if bp then
                    for _, tool in ipairs(bp:GetChildren()) do
                        if tool:IsA("Tool") and tool.ToolTip == "Blox Fruit" then hasFruit = true break end
                    end
                end
                local equipped = char:FindFirstChildOfClass("Tool")
                if equipped and equipped.ToolTip == "Blox Fruit" then hasFruit = true end
                if hasFruit then
                    pcall(function() commE:FireServer("Transform", 6) end)
                end
            end
        end)
    end
end)

Others:AddSection({"Holy Torch (Auto Collect)"})
getgenv().ZX_AutoHolyTorch = false
Others:AddToggle({
    Name = "Auto Holy Torch",
    Description = "Auto collect Holy Torch (World 3)",
    Default = false,
    Callback = function(v) getgenv().ZX_AutoHolyTorch = v end,
})
_G.AutoHolyTorch = false
task.spawn(function()
    while task.wait(0.3) do
        pcall(function()
            if getgenv().ZX_AutoHolyTorch and World3 then
                _G.AutoHolyTorch = true
                local torchPositions = {
                    CFrame.new(-10752, 417, -9366),
                    CFrame.new(-11672, 334, -9474),
                    CFrame.new(-12132, 521, -10655),
                    CFrame.new(-13336, 486, -6985),
                    CFrame.new(-13489, 332, -7925),
                }
                for _, pos in ipairs(torchPositions) do
                    if not getgenv().ZX_AutoHolyTorch then break end
                    _tp(pos)
                    task.wait(0.3)

                    pcall(function()
                        local function fireTorch(parent)
                            if not parent then return end
                            for _, obj in ipairs(parent:GetChildren()) do
                                if obj.Name == "HolyTorch" or (obj:IsA("ProximityPrompt") and obj.Parent and obj.Parent.Name:lower():find("torch")) then
                                    if obj:IsA("ProximityPrompt") then
                                        fireproximityprompt(obj, 0)
                                    end
                                end
                            end
                        end
                        fireTorch(workspace:FindFirstChild("NPCs"))
                        fireTorch(workspace.Map)
                    end)
                end
            else
                _G.AutoHolyTorch = false
            end
        end)
    end
end)

getgenv().ZX_EliteHunterHop = false
Others:AddToggle({
    Name = "Hop Server (Elite Hunter)",
    Description = "Server hop when Elite not found",
    Default = false,
    Callback = function(v) getgenv().ZX_EliteHunterHop = v end,
})
task.spawn(function()
    while task.wait(2) do
        pcall(function()
            if getgenv().ZX_EliteHunterHop and _G.FarmEliteHunt then
                local foundElite = false
                for _, mob in ipairs(workspace.Enemies:GetChildren()) do
                    if mob.Name == "Diablo" or mob.Name == "Deandre" or mob.Name == "Urban" then
                        local h = mob:FindFirstChild("Humanoid")
                        if h and h.Health > 0 then foundElite = true break end
                    end
                end
                if not foundElite then
                    task.wait(3)
                    pcall(function() Hop() end)
                end
            end
        end)
    end
end)

Event:AddSection({"Dungeon System"})
_G.DungeonWeaponMode = _G.DungeonWeaponMode or "Melee"
_G.FarmDistance = _G.FarmDistance or 35
_G.SpinRadius = _G.SpinRadius or 20

Event:AddButton({
    Name = "Teleport Dungeon Hub",
    Callback = function()
        pcall(function()
            local modules = replicated:FindFirstChild("Modules")
            local net = modules and modules:FindFirstChild("Net")
            local dungeonRemote = net and (net:FindFirstChild("RF/DungeonNPCNetworkFunction") or net:FindFirstChild("RF/DungeonNPCFunction"))
            if dungeonRemote then
                dungeonRemote:InvokeServer("TeleportToDungeonHub", false)
            end
        end)
    end
})
Event:AddDropdown({
    Name = "Dungeon Weapon",
    Options = {"Melee", "Sword", "Blox Fruit"},
    Default = _G.DungeonWeaponMode,
    Multi = false,
    Callback = function(I) _G.DungeonWeaponMode = I end,
})
Event:AddToggle({
    Name = "Auto Attack Dungeon Mon",
    Description = "Auto attack nearest dungeon mobs",
    Default = false,
    Callback = function(I) _G.AutoAttackMonDungeon = I end,
})
Event:AddToggle({
    Name = "Auto Next Floor",
    Description = "Use the floor teleporter when the room is clear",
    Default = false,
    Callback = function(I) _G.AutoNextFloor = I end,
})
Event:AddToggle({
    Name = "Auto Choose Card",
    Description = "Choose a reward card automatically",
    Default = false,
    Callback = function(I) _G.AutoChooseCard = I end,
})
Event:AddToggle({
    Name = "Auto Return To Hub",
    Description = "Return to hub when dungeon is done",
    Default = false,
    Callback = function(I) _G.AutoReturnToHub = I end,
})
Event:AddToggle({
    Name = "Spin Position",
    Description = "Circle around dungeon mobs while farming",
    Default = false,
    Callback = function(I) _G.SpinPosition = I end,
})
Event:AddSlider({
    Name = "Spin Radius",
    Min = 1, Max = 40, Default = _G.SpinRadius,
    Callback = function(I) _G.SpinRadius = I end,
})
Event:AddSlider({
    Name = "Farm Distance",
    Min = 10, Max = 50, Default = _G.FarmDistance,
    Callback = function(I) _G.FarmDistance = I end,
})

function GetDungeonMap()
    return workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Dungeon")
end

function GetHighestDungeonFloor()
    local dungeon = GetDungeonMap()
    local highest, highestFloor = -math.huge, nil
    if not dungeon then return nil end
    for _, floor in pairs(dungeon:GetChildren()) do
        local number = tonumber(floor.Name)
        if number and number > highest then
            highest = number
            highestFloor = floor
        end
    end
    return highestFloor
end

function GetCurrentDungeonFloor()
    local highestFloor = GetHighestDungeonFloor()
    local dungeon = GetDungeonMap()
    local highest = highestFloor and tonumber(highestFloor.Name)
    if not dungeon or not highest then return nil end
    return dungeon:FindFirstChild(tostring(highest - 1)) or dungeon:FindFirstChild(tostring(highest - 2)) or highestFloor
end

function FindDungeonRewardButton(gui)
    for _, item in ipairs(gui:GetDescendants()) do
        if item:IsA("TextButton") then return item end
    end
end

function ResolveDungeonWeapon()
    local mode = _G.DungeonWeaponMode or _G.ChooseWP or "Melee"
    local bp = plr:FindFirstChild("Backpack")
    if bp then
        for _, tool in pairs(bp:GetChildren()) do
            if tool:IsA("Tool") and tool.ToolTip == mode then
                return tool.Name
            end
        end
    end
    local charTool = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
    if charTool and (charTool.ToolTip == mode or not mode) then
        return charTool.Name
    end
    return _G.SelectWeapon
end

function IsDungeonMobAlive(mob, root, highestFloor)
    if not G.Alive(mob) or not mob:FindFirstChild("HumanoidRootPart") or string.find(mob.Name, "Blank Buddy") then
        return false
    end
    if root and (mob.HumanoidRootPart.Position - root.Position).Magnitude > 3000 then
        return false
    end
    if highestFloor and highestFloor:FindFirstChild("Root") and (mob.HumanoidRootPart.Position - highestFloor.Root.Position).Magnitude > 2000 then
        return false
    end
    return true
end

local DungeonAttackOffset = CFrame.new(0, 35, 0)

function AttackDungeonMob(mob)
    if not mob or not mob:FindFirstChild("HumanoidRootPart") then return end
    pcall(function()
        if not plr.Character:FindFirstChild("HasBuso") then
            commF:InvokeServer("Buso")
        end
    end)
    local weapon = ResolveDungeonWeapon()
    if weapon then
        _G.SelectWeapon = weapon
        EquipWeapon(weapon)
    end
    _tp(mob.HumanoidRootPart.CFrame * DungeonAttackOffset)
    G.Kill(mob, _G.AutoAttackMonDungeon)
end

task.spawn(function()
    local angle = 0
    while task.wait(0.05) do
        if _G.SpinPosition then
            local radius = _G.SpinRadius or 20
            local y = _G.FarmDistance or 35
            local radian = math.rad(angle)
            DungeonAttackOffset = CFrame.new(math.cos(radian) * radius, y, math.sin(radian) * radius)
            angle = (angle + 30) % 360
        else
            DungeonAttackOffset = CFrame.new(0, _G.FarmDistance or 35, 0)
        end
    end
end)

task.spawn(function()
    while task.wait(0.15) do
        if _G.AutoAttackMonDungeon then
            pcall(function()
                local char = plr.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                local highestFloor = GetHighestDungeonFloor()
                if not root or not highestFloor or not highestFloor:FindFirstChild("Root") then return end
                local foundMob = false
                for _, mob in pairs(workspace.Enemies:GetChildren()) do
                    if IsDungeonMobAlive(mob, root, highestFloor) then
                        foundMob = true
                        repeat
                            task.wait()
                            AttackDungeonMob(mob)
                        until not _G.AutoAttackMonDungeon or not IsDungeonMobAlive(mob, root, highestFloor)
                    end
                end
                if _G.AutoNextFloor and not foundMob then
                    local floor = GetCurrentDungeonFloor()
                    local teleporter = floor and floor:FindFirstChild("ExitTeleporter") and floor.ExitTeleporter:FindFirstChild("Root")
                    if teleporter then
                        firetouchinterest(teleporter, root, 0)
                        firetouchinterest(teleporter, root, 1)
                    end
                elseif (root.Position - highestFloor.Root.Position).Magnitude > 9000 then
                    _tp(highestFloor.Root.CFrame)
                end
            end)
        end
    end
end)

local DungeonNextFloorDebounce = false
task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoNextFloor and not DungeonNextFloorDebounce then
            pcall(function()
                local char = plr.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                local highestFloor = GetHighestDungeonFloor()
                local floor = GetCurrentDungeonFloor()
                local teleporter = floor and floor:FindFirstChild("ExitTeleporter") and floor.ExitTeleporter:FindFirstChild("Root")
                if not root or not teleporter then return end
                local enemiesAlive = false
                for _, mob in pairs(workspace.Enemies:GetChildren()) do
                    if IsDungeonMobAlive(mob, root, highestFloor) then
                        enemiesAlive = true
                        break
                    end
                end
                if not enemiesAlive then
                    DungeonNextFloorDebounce = true
                    firetouchinterest(teleporter, root, 0)
                    firetouchinterest(teleporter, root, 1)
                    task.wait(3)
                    DungeonNextFloorDebounce = false
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        if _G.AutoReturnToHub then
            pcall(function()
                local dungeonShared = replicated:FindFirstChild("DungeonShared")
                local returnRemote = dungeonShared and dungeonShared:FindFirstChild("ReturnToHub")
                if returnRemote then returnRemote:FireServer() end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(0.3) do
        if _G.AutoChooseCard then
            pcall(function()
                for _, gui in pairs(plr.PlayerGui:GetChildren()) do
                    if gui.Name == "Gui" and #gui:GetChildren() > 0 then
                        local button = FindDungeonRewardButton(gui)
                        if button then firesignal(button.Activated) end
                    end
                end
            end)
        end
    end
end)

Teleport:AddSection({"Nearest Island (Auto)"})
getgenv().ZX_TeleportIsland = false
Teleport:AddToggle({
    Name = "Teleport to Nearest Island",
    Description = "Auto teleport to the nearest map island",
    Default = false,
    Callback = function(v) getgenv().ZX_TeleportIsland = v end,
})
task.spawn(function()
    while task.wait(2) do
        pcall(function()
            if getgenv().ZX_TeleportIsland then
                local char = plr.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                local locations = workspace._WorldOrigin:FindFirstChild("Locations")
                if not locations then return end
                local nearest, nearDist = nil, math.huge
                for _, loc in ipairs(locations:GetChildren()) do
                    local d = (loc.Position - hrp.Position).Magnitude
                    if d < nearDist then
                        nearDist = d
                        nearest = loc
                    end
                end
                if nearest then _tp(CFrame.new(nearest.Position)) end
            end
        end)
    end
end)

Quests:AddSection({"Auto Get Fighting Style (Materials)"})
getgenv().ZX_AutoGetGodHuman = false
local ZX_GetStyle_Mode = "GodHuman"
Quests:AddDropdown({
    Name = "Select Fighting Style to Get",
    Options = {"GodHuman", "DragonTalon", "SanguineArt", "ElectricClaw"},
    Default = "GodHuman",
    Multi = false,
    Callback = function(v) ZX_GetStyle_Mode = v end,
})
Quests:AddToggle({
    Name = "Auto Get Fighting Style",
    Description = "Auto collect materials and buy the selected style",
    Default = false,
    Callback = function(v) getgenv().ZX_AutoGetGodHuman = v end,
})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if not getgenv().ZX_AutoGetGodHuman then return end
            local mode = ZX_GetStyle_Mode or "GodHuman"
            if mode == "GodHuman" then

                if GetM and (not GetM("Dragon Scale") or GetM("Dragon Scale") < 10) then
                    if World3 then
                        _G.Level = true; getgenv().AutoFarm = true
                        _G.SaveData["LvOverride"] = 1575
                    end
                elseif GetM and (not GetM("Fish Tail") or GetM("Fish Tail") < 20) then
                    if World3 then
                        _G.Level = true; getgenv().AutoFarm = true
                        _G.SaveData["LvOverride"] = 1775
                    end
                elseif GetM and (not GetM("Mystic Droplet") or GetM("Mystic Droplet") < 10) then
                    if World2 then
                        _G.Level = true; getgenv().AutoFarm = true
                    end
                elseif GetM and (not GetM("Magma Ore") or GetM("Magma Ore") < 20) then
                    if World2 then
                        _G.Level = true; getgenv().AutoFarm = true
                    end
                else
                    pcall(function()
                        _tp(CFrame.new(-11585, 383, -9745))
                        task.wait(1.5)
                        commF:InvokeServer("BuyGodhuman")
                    end)
                    getgenv().ZX_AutoGetGodHuman = false
                end
            elseif mode == "DragonTalon" then
                pcall(function()
                    _tp(CFrame.new(-12038, 367, -8001))
                    task.wait(1.5)
                    commF:InvokeServer("BuyDragonTalon")
                end)
                getgenv().ZX_AutoGetGodHuman = false
            elseif mode == "SanguineArt" then
                pcall(function()
                    _tp(CFrame.new(-5496.17, 313.77, -2841.53))
                    task.wait(1.5)
                    commF:InvokeServer("BuySanguineArt", true)
                    commF:InvokeServer("BuySanguineArt")
                end)
                getgenv().ZX_AutoGetGodHuman = false
            elseif mode == "ElectricClaw" then
                pcall(function()
                    _tp(CFrame.new(-9282, 152, -9590))
                    task.wait(1.5)
                    commF:InvokeServer("BuyElectricClaw")
                end)
                getgenv().ZX_AutoGetGodHuman = false
            end
        end)
    end
end)

Fruit:AddSection({"Devil Fruit Shop"})
Fruit:AddButton({
    Name = "Open Devil Fruit Shop",
    Callback = function()
        pcall(function() plr.PlayerGui.Main.DevilFruit.Visible = true end)
    end
})

Quests:AddSection({"Auto Saber Quest"})
getgenv().ZX_AutoSaber = false
Quests:AddToggle({
    Name = "Auto Saber",
    Description = "Complete all saber quest steps automatically (Lv 200+)",
    Default = false,
    Callback = function(v) getgenv().ZX_AutoSaber = v end,
})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if not getgenv().ZX_AutoSaber then return end
            local lp = plr
            if lp.Data.Level.Value < 200 then return end
            local jungleFinal = workspace.Map:FindFirstChild("Jungle")
            if jungleFinal and jungleFinal:FindFirstChild("Final") then
                local finalPart = jungleFinal.Final:FindFirstChild("Part")
                if finalPart and finalPart.Transparency == 0 then
                    local hrp3 = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
                    if hrp3 and (CFrame.new(-1612.55884, 36.977, 148.719543).Position - hrp3.Position).Magnitude <= 100 then
                        for i = 1, 5 do
                            local plate = jungleFinal.QuestPlates:FindFirstChild("Plate" .. i)
                            if plate then
                                hrp3.CFrame = plate.Button.CFrame
                                task.wait(1)
                            end
                        end
                    else
                        _tp(CFrame.new(-1612.55884, 36.977, 148.719543))
                    end
                else
                    local desert = workspace.Map:FindFirstChild("Desert")
                    if desert and desert:FindFirstChild("Burn") then
                        if desert.Burn.Part.Transparency == 0 then
                            local bp = lp:FindFirstChild("Backpack")
                            if bp and bp:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                _tp(CFrame.new(1114.61475, 5.047, 4350.22803))
                            else
                                _tp(CFrame.new(-1610.00757, 11.505, 164.001587))
                            end
                        else
                            local prog = commF:InvokeServer("ProQuestProgress", "SickMan")
                            if prog and prog ~= 0 then
                                commF:InvokeServer("ProQuestProgress", "GetCup")
                                task.wait(0.5)
                                EquipWeapon("Cup")
                                task.wait(0.5)
                                commF:InvokeServer("ProQuestProgress", "FillCup", lp.Character:FindFirstChild("Cup"))
                                task.wait(0)
                                commF:InvokeServer("ProQuestProgress", "SickMan")
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Esp:AddSection({"Boss ESP"})
getgenv().ZX_BossESP = false
local _espBossObjs = {}
Esp:AddToggle({
    Name = "Esp Bosses",
    Default = false,
    Callback = function(v)
        getgenv().ZX_BossESP = v
        if not v then
            for _, b in ipairs(_espBossObjs) do pcall(function() b:Destroy() end) end
            table.clear(_espBossObjs)
        end
    end,
})
local function _createBossESPBox(part, color, label)
    local bb = Instance.new("BillboardGui")
    bb.Name = "ZX_BossESP"
    bb.AlwaysOnTop = true
    bb.Size = UDim2.new(0, 80, 0, 24)
    bb.StudsOffset = Vector3.new(0, 3, 0)
    bb.Parent = part
    local txt = Instance.new("TextLabel")
    txt.BackgroundTransparency = 1
    txt.Size = UDim2.new(1, 0, 1, 0)
    txt.TextColor3 = color
    txt.Text = label
    txt.TextStrokeTransparency = 0
    txt.Font = Enum.Font.GothamBold
    txt.TextSize = 12
    txt.Parent = bb
    return bb
end
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().ZX_BossESP then
                for _, b in ipairs(_espBossObjs) do pcall(function() b:Destroy() end) end
                table.clear(_espBossObjs)
                for _, mob in ipairs(workspace.Enemies:GetChildren()) do
                    if table.find(Boss, mob.Name) then
                        local root = mob:FindFirstChild("HumanoidRootPart")
                        if root then
                            local bb = _createBossESPBox(root, Color3.fromRGB(255, 50, 50), mob.Name)
                            table.insert(_espBossObjs, bb)
                        end
                    end
                end
            end
        end)
    end
end)

local _finalChunk = [[
local Modules = game.ReplicatedStorage.Modules
local Net = Modules.Net
local Register_Hit, Register_Attack = Net:WaitForChild("RE/RegisterHit"), Net:WaitForChild("RE/RegisterAttack")
local Funcs = {}
function GetAllBladeHits()
    bladehits = {}
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 65 then
            table.insert(bladehits, v)
        end
    end
    return bladehits
end
function Getplayerhit()
    bladehits = {}
    for _, v in pairs(workspace.Characters:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 65 then
            table.insert(bladehits, v)
        end
    end
    return bladehits
end
function Funcs:Attack()
    local bladehits = {}
    for _, v in pairs(GetAllBladeHits()) do table.insert(bladehits, v) end
    for _, v in pairs(Getplayerhit()) do table.insert(bladehits, v) end
    if #bladehits == 0 then return end
    local args = {[1] = nil, [2] = {}, [4] = "078da341"}
    for r, v in pairs(bladehits) do
        Register_Attack:FireServer(0)
        if not args[1] then args[1] = v.Head end
        args[2][r] = {[1] = v, [2] = v.HumanoidRootPart}
    end
    Register_Hit:FireServer(unpack(args))
end
task.spawn(function()
    while task.wait(0.05) do
        pcall(function()
            local ch = game.Players.LocalPlayer.Character
            local t = ch and ch:FindFirstChildOfClass("Tool")
            if t then Funcs:Attack() end
        end)
    end
end)
]]

-- ═══════════════════════════════════════════════════════════════════
-- VISUAL TAB (Fake All) — Ported from Nova Redz
-- Sections: Effect Melee, Other (Fake admin/damage/EXP)
-- ═══════════════════════════════════════════════════════════════════

Visual:AddSection("Effect Melee")

-- Visual Divine Art M1: Creates a fake tool with combo system (port from Nova Redz)
Visual:AddButton({
    Name = "Visual Divine Art M1 (Angel)",
    Description = "Creates a fake tool with combo system — Angel M1 visual effects client-side only",
    Callback = function()
        pcall(function()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local LP = Players.LocalPlayer
            local Cont = ReplicatedStorage.Effect.Container

            local m1 = require(Cont.Angel.M1)
            local m2 = require(Cont.Angel2.M1)

            local tool = Instance.new("Tool")
            tool.Name = "ZytheraX Divine Art"
            tool.RequiresHandle = false
            tool.Parent = LP.Backpack

            local S = { cc = 0, lt = 0, db = false }

            local function getHRP()
                local c = LP.Character
                return c and c:FindFirstChild("HumanoidRootPart")
            end

            local Combo = {
                [1] = { Name = "Strike", Action = function(hrp)
                    for i = 1, 4 do m1({ hrp = hrp, index = i }) task.wait(0.1) end
                end },
                [2] = { Name = "Rush", Action = function(hrp)
                    for i = 1, 4 do m2({ hrp = hrp, index = i }) task.wait(0.1) end
                end },
                [3] = { Name = "Rush II", Action = function(hrp)
                    for i = 1, 4 do m2({ hrp = hrp, index = i }) task.wait(0.08) end
                end },
                [4] = { Name = "Burst", Action = function(hrp)
                    for i = 4, 1, -1 do m2({ hrp = hrp, index = i }) task.wait(0.07) end
                end },
                [5] = { Name = "Flurry", Action = function(hrp)
                    for i = 1, 4 do
                        m1({ hrp = hrp, index = i }) task.wait(0.07)
                        m2({ hrp = hrp, index = i }) task.wait(0.07)
                    end
                end },
                [6] = { Name = "Storm", Action = function(hrp)
                    for i = 1, 8 do
                        m2({ hrp = hrp, index = (i % 4) + 1 })
                        task.wait(0.06)
                    end
                end },
                [7] = { Name = "Finale", Action = function(hrp)
                    for i = 1, 4 do m1({ hrp = hrp, index = i }) task.wait(0.05) end
                    for i = 1, 4 do m2({ hrp = hrp, index = i }) task.wait(0.05) end
                    for i = 4, 1, -1 do m2({ hrp = hrp, index = i }) task.wait(0.04) end
                end },
            }

            tool.Activated:Connect(function()
                if S.db then return end
                local hrp = getHRP()
                if not hrp then return end
                local now = tick()
                if now - S.lt > 0.5 then S.cc = 0 end
                S.lt = now
                S.cc = S.cc + 1
                local cb = Combo[S.cc]
                if not cb then S.cc = 0 return end
                S.db = true
                cb.Action(hrp)
                S.db = false
                if S.cc >= #Combo then S.cc = 0 end
            end)
        end)
    end
})

Visual:AddButton({
    Name = "Visual Godhuman M1 Combo",
    Description = "Visual Godhuman M1 effect combo (client-side only)",
    Callback = function()
        pcall(function()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local LP = game.Players.LocalPlayer
            local Cont = ReplicatedStorage.Effect.Container
            if not Cont:FindFirstChild("Godhuman") then return end
            local m1 = require(Cont.Godhuman.M1)
            local char = LP.Character
            if not char then return end
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            task.spawn(function()
                for i = 1, 5 do
                    m1({ hrp = hrp, index = i })
                    task.wait(0.12)
                end
            end)
        end)
    end
})

Visual:AddButton({
    Name = "Visual Sanguine Art M1",
    Description = "Visual Sanguine Art M1 effect combo (client-side only)",
    Callback = function()
        pcall(function()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local LP = game.Players.LocalPlayer
            local Cont = ReplicatedStorage.Effect.Container
            if not Cont:FindFirstChild("Sanguine") then return end
            local m1 = require(Cont.Sanguine.M1)
            local char = LP.Character
            if not char then return end
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            task.spawn(function()
                for i = 1, 4 do
                    m1({ hrp = hrp, index = i })
                    task.wait(0.1)
                end
            end)
        end)
    end
})

-- Other section: Fake EXP, Fake Admin Chat, Fake Damage
Visual:AddSection("Other")

Visual:AddButton({
    Name = "Fake Level Up (67676767 EXP)",
    Description = "Visual only — gives fake EXP/Beli and triggers fake level-up animation client-side",
    Callback = function()
        pcall(function()
            local plr = game:GetService("Players").LocalPlayer
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Notification = ReplicatedStorage:FindFirstChild("Notification")
            local Data = plr:FindFirstChild("Data")
            local EXPFunction = ReplicatedStorage:FindFirstChild("EXPFunction")
            local LevelUp = ReplicatedStorage.Effect.Container:FindFirstChild("LevelUp")
            local Sound = ReplicatedStorage.Util:FindFirstChild("Sound")

            local LevelUpSound = ReplicatedStorage.Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy")
                or ReplicatedStorage.Util.Sound.Storage.Other:FindFirstChild("LevelUp")

            if Notification then
                local ok1, n1 = pcall(function() return Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>") end)
                if n1 and n1.Display then pcall(n1.Display, n1) end
                local ok2, n2 = pcall(function() return Notification.new("Earned <Color=Yellow>676767676767 Exp.<Color=/> (+ None)") end)
                if n2 and n2.Display then pcall(n2.Display, n2) end
                local ok3, n3 = pcall(function() return Notification.new("Earned <Color=Green>$36363636<Color=/>") end)
                if n3 and n3.Display then pcall(n3.Display, n3) end
            end

            if Data and Data:FindFirstChild("Exp") then
                Data.Exp.Value = 67676767676767
            end
            if Data and Data:FindFirstChild("Beli") then
                Data.Beli.Value = (Data.Beli.Value or 0) + 36363636
            end

            local count = 0
            if Data and EXPFunction and LevelUp then
                local expFn = require(EXPFunction)
                local lvlUpFn = require(LevelUp)
                while Data.Exp.Value - expFn(Data.Level.Value) > 0 do
                    Data.Exp.Value = Data.Exp.Value - expFn(Data.Level.Value)
                    Data.Level.Value = Data.Level.Value + 1
                    if Data:FindFirstChild("Points") then
                        Data.Points.Value = Data.Points.Value + 3
                    end
                    pcall(lvlUpFn, { plr })
                    if LevelUpSound and Sound then
                        pcall(function() Sound:Play(LevelUpSound.Value) end)
                    end
                    if Notification then
                        local ok, n = pcall(function()
                            return Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. Data.Level.Value .. ")")
                        end)
                        if n and n.Display then pcall(n.Display, n) end
                    end
                    count = count + 1
                    if count >= 5 then
                        count = 0
                        task.wait()
                    end
                end
            end
        end)
    end
})

Visual:AddTextBox({
    Name = "Fake Admin Chat",
    Description = "Sends a fake admin notification (client-side only)",
    Placeholder = "Enter text here...",
    ClearOnFocus = true,
    Callback = function(Value)
        if Value ~= "" then
            pcall(function()
                local Notification = require(game:GetService("ReplicatedStorage").Notification)
                local n = Notification.new("<Color=Yellow>" .. Value .. "<Color=/>")
                if n and n.Display then n:Display() end
            end)
        end
    end
})

-- Fake Damage system (port from Nova Redz)
local DamageCounter
pcall(function()
    DamageCounter = require(game.ReplicatedStorage.DamageCounter)
end)
local origIncrement = DamageCounter and DamageCounter.Increment
getgenv().ZX_CustomDamage = nil

if DamageCounter and origIncrement then
    DamageCounter.Increment = function(self, dmg)
        return origIncrement(self, getgenv().ZX_CustomDamage or dmg)
    end
end

Visual:AddTextBox({
    Name = "Fake Damage Number",
    Description = "Set custom damage value (empty = real damage)",
    Placeholder = "No number = real damage",
    ClearOnFocus = true,
    Callback = function(Value)
        if Value == "" then
            getgenv().ZX_CustomDamage = nil
        else
            local num = tonumber(Value)
            if num then
                getgenv().ZX_CustomDamage = num
            end
        end
    end
})

-- ═══════════════════════════════════════════════════════════════════
-- MISC TAB — Server Functions, Player GUI, Graphics/Haki, Configure-God
-- ═══════════════════════════════════════════════════════════════════

Misc:AddSection("Server - Function")

local RedeemCodes = {
    "LIGHTNINGABUSE","1LOSTADMIN","ADMINFIGHT","GIFTING_HOURS","NOMOREHACK",
    "BANEXPLOIT","WildDares","BossBuild","GetPranked","EARN_FRUITS",
    "SUB2GAMERROBOT_RESET1","KITT_RESET","Bignews","CHANDLER","Fudd10",
    "fudd10_v2","Sub2UncleKizaru","FIGHT4FRUIT","kittgaming","TRIPLEABUSE",
    "Sub2CaptainMaui","Sub2Fer999","Enyu_is_Pro","Magicbus","JCWK",
    "Starcodeheo","Bluxxy","SUB2GAMERROBOT_EXP1","Sub2NoobMaster123",
    "Sub2Daigrock","Axiore","TantaiGaming","StrawHatMaine","Sub2OfficialNoobie",
    "TheGreatAce","JULYUPDATE_RESET","ADMINHACKED","SEATROLLING","24NOADMIN",
    "ADMIN_TROLL","NEWTROLL","SECRET_ADMIN","staffbattle","NOEXPLOIT",
    "NOOB2ADMIN","CODESLIDE","fruitconcepts","krazydares"
}

Misc:AddButton({
    Name = "Redeem All Codes",
    Description = "Automatically redeems all known Blox Fruits codes",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local RemotesFolder = ReplicatedStorage:WaitForChild("Remotes", 5)
        local RedeemRemote = RemotesFolder and RemotesFolder:FindFirstChild("Redeem")
        if not RedeemRemote then return end
        task.spawn(function()
            for _, code in ipairs(RedeemCodes) do
                task.wait(0)
                pcall(function()
                    if RedeemRemote.InvokeServer then
                        RedeemRemote:InvokeServer(code)
                    else
                        RedeemRemote:FireServer(code)
                    end
                end)
            end
        end)
    end
})

Misc:AddButton({
    Name = "Rejoin Server",
    Description = "Rejoins the current server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
})

Misc:AddButton({
    Name = "Hop Server",
    Description = "Hops to a different server with available slots",
    Callback = function()
        task.spawn(function()
            local HttpService = game:GetService("HttpService")
            local TeleportService = game:GetService("TeleportService")
            local PlaceId = game.PlaceId
            local Players = game:GetService("Players")
            local success, servers = pcall(function()
                local url = "https://games.roblox.com/v1/games/"..PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
                local response = game:HttpGet(url)
                return HttpService:JSONDecode(response).data
            end)
            if success and servers then
                local targetServer
                for _, s in pairs(servers) do
                    if s.playing < s.maxPlayers then
                        targetServer = s.id
                    end
                end
                if targetServer then
                    pcall(function()
                        TeleportService:TeleportToPlaceInstance(PlaceId, targetServer, Players.LocalPlayer)
                    end)
                end
            end
        end)
    end
})

Misc:AddButton({
    Name = "Hop to Lowest Players Server",
    Description = "Finds and hops to the server with the fewest players",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        local function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
        end
        local Server, Next
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server
        TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)
    end
})

Misc:AddButton({
    Name = "Copy Job ID",
    Description = "Copies the current server's Job ID to clipboard",
    Callback = function()
        if setclipboard then
            setclipboard(tostring(game.JobId))
        end
    end
})

Misc:AddTextBox({
    Name = "Input Job ID",
    Placeholder = "Job ID to teleport to",
    ClearOnFocus = true,
    Callback = function(Value)
        getgenv().ZX_JobID = Value
    end
})

Misc:AddButton({
    Name = "Teleport to Job ID",
    Description = "Teleports to the server with the specified Job ID",
    Callback = function()
        if getgenv().ZX_JobID and getgenv().ZX_JobID ~= "" then
            game:GetService("TeleportService"):TeleportToPlaceInstance(
                game.PlaceId,
                getgenv().ZX_JobID,
                game.Players.LocalPlayer
            )
        end
    end
})

-- Player GUI / Others
Misc:AddSection("Player Gui / Others")

Misc:AddButton({
    Name = "Open Awakening Toggle UI",
    Description = "Shows the AwakeningToggler GUI",
    Callback = function()
        pcall(function()
            local plr = game.Players.LocalPlayer
            plr.PlayerGui.Main.AwakeningToggler.Visible = true
        end)
    end
})

Misc:AddButton({
    Name = "Open Title Selection",
    Description = "Shows the Titles selection UI",
    Callback = function()
        pcall(function()
            local plr = game.Players.LocalPlayer
            local replicated = game:GetService("ReplicatedStorage")
            replicated.Remotes.CommF_:InvokeServer("getTitles", true)
            plr.PlayerGui.Main.Titles.Visible = true
        end)
    end
})

Misc:AddToggle({
    Name = "Disable Chat GUI",
    Description = "Hides the in-game chat",
    Default = false,
    Callback = function(Value)
        local StarterGui = game:GetService('StarterGui')
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not Value)
    end
})

Misc:AddToggle({
    Name = "Disable Leaderboard GUI",
    Description = "Hides the player list leaderboard",
    Default = false,
    Callback = function(Value)
        local StarterGui = game:GetService('StarterGui')
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not Value)
    end
})

Misc:AddButton({
    Name = "Set Pirate Team",
    Description = "Switches your team to Pirates",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        end)
    end
})

Misc:AddButton({
    Name = "Set Marine Team",
    Description = "Switches your team to Marines",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
        end)
    end
})

Misc:AddToggle({
    Name = "Unlock All Portals",
    Description = "Automatically enters locked portals when nearby",
    Default = false,
    Callback = function(Value)
        getgenv().ZX_UnlockPortals = Value
    end
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if not getgenv().ZX_UnlockPortals then return end
            local replicated = game:GetService("ReplicatedStorage")
            local lp = game.Players.LocalPlayer
            local char = lp.Character
            if not char then return end
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            local portals = {
                { pos = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375) },
                { pos = Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812) },
                { pos = Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914) },
            }
            for _, p in ipairs(portals) do
                local dist = (p.pos - hrp.Position).Magnitude
                if dist < 50 then
                    replicated.Remotes.CommF_:InvokeServer("requestEntrance", p.pos)
                    break
                end
            end
        end)
    end
end)

-- Graphics / Haki Stats section
Misc:AddSection("Graphics / Haki Stats")

local HakiStates = {"State 0","State 1","State 2","State 3","State 4","State 5"}
getgenv().ZX_SelectHakiState = "State 0"

Misc:AddDropdown({
    Name = "Select Haki State",
    Description = "Select which Buso Haki stage to use",
    Options = HakiStates,
    Default = "State 0",
    Callback = function(Value)
        getgenv().ZX_SelectHakiState = Value
    end
})

Misc:AddButton({
    Name = "Change Buso Stage",
    Description = "Applies the selected Haki stage",
    Callback = function()
        local stateMap = {
            ["State 0"] = 0, ["State 1"] = 1, ["State 2"] = 2,
            ["State 3"] = 3, ["State 4"] = 4, ["State 5"] = 5,
        }
        local stage = stateMap[getgenv().ZX_SelectHakiState]
        if stage then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", stage)
            end)
        end
    end
})

getgenv().ZX_RTXMode = false
Misc:AddToggle({
    Name = "RTX Mode (Warm Lighting)",
    Description = "Enables RTX-style warm lighting with PointLight on player",
    Default = false,
    Callback = function(Value)
        getgenv().ZX_RTXMode = Value
        local Lighting = game:GetService("Lighting")
        local plr = game.Players.LocalPlayer
        if Value then
            getgenv().ZX_OldAmbient = Lighting.Ambient
            getgenv().ZX_OldBrightness = Lighting.Brightness
            getgenv().ZX_OldFogEnd = Lighting.FogEnd
            Lighting.Ambient = Color3.fromRGB(33, 33, 33)
            Lighting.Brightness = 0.3
            Lighting.FogEnd = 999
            task.spawn(function()
                while getgenv().ZX_RTXMode do
                    task.wait(0.5)
                    pcall(function()
                        local char = plr.Character
                        if char and char:FindFirstChild("HumanoidRootPart") then
                            local hrp = char.HumanoidRootPart
                            if not hrp:FindFirstChild("ZX_PointLight") then
                                local light = Instance.new("PointLight")
                                light.Name = "ZX_PointLight"
                                light.Range = 15
                                light.Color = Color3.fromRGB(217, 145, 57)
                                light.Parent = hrp
                            end
                        end
                    end)
                end
            end)
        else
            Lighting.Ambient = getgenv().ZX_OldAmbient or Color3.fromRGB(0,0,0)
            Lighting.Brightness = getgenv().ZX_OldBrightness or 1
            Lighting.FogEnd = getgenv().ZX_OldFogEnd or 2500
            pcall(function()
                local char = plr.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    local light = char.HumanoidRootPart:FindFirstChild("ZX_PointLight")
                    if light then light:Destroy() end
                end
            end)
        end
    end
})

Misc:AddButton({
    Name = "Fast Mode (Plastic Materials)",
    Description = "Sets all map parts to Plastic material for better FPS",
    Callback = function()
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") and obj.Material ~= Enum.Material.Plastic then
                pcall(function() obj.Material = Enum.Material.Plastic end)
            end
        end
    end
})

Misc:AddButton({
    Name = "Remove Sky Fog",
    Description = "Removes sky fog layers for clearer view",
    Callback = function()
        local Lighting = game:GetService("Lighting")
        if Lighting:FindFirstChild("LightingLayers") then Lighting.LightingLayers:Destroy() end
        if Lighting:FindFirstChild("SeaTerrorCC") then Lighting.SeaTerrorCC:Destroy() end
        if Lighting:FindFirstChild("FantasySky") then Lighting.FantasySky:Destroy() end
    end
})

Misc:AddButton({
    Name = "Boost Boat Speed",
    Description = "Increases owned boat speed, torque, and turn speed",
    Callback = function()
        pcall(function()
            local plr = game.Players.LocalPlayer
            for _, v in pairs(workspace.Boats:GetDescendants()) do
                if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == plr.Name then
                    if v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.MaxSpeed = 350
                        v.VehicleSeat.Torque = 0.2
                        v.VehicleSeat.TurnSpeed = 5
                        v.VehicleSeat.HeadsUpDisplay = true
                    end
                end
            end
        end)
    end
})

-- Configure - God section
Misc:AddSection("Configure - God")

Misc:AddToggle({
    Name = "Full Bright",
    Description = "Maxes out ambient lighting so you can see in dark areas",
    Default = false,
    Callback = function(Value)
        local Lighting = game:GetService("Lighting")
        if Value then
            getgenv().ZX_OldAmbient2 = Lighting.Ambient
            getgenv().ZX_OldColorShiftBottom = Lighting.ColorShift_Bottom
            getgenv().ZX_OldColorShiftTop = Lighting.ColorShift_Top
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            Lighting.ColorShift_Top = Color3.new(1, 1, 1)
        else
            Lighting.Ambient = getgenv().ZX_OldAmbient2 or Color3.new(0, 0, 0)
            Lighting.ColorShift_Bottom = getgenv().ZX_OldColorShiftBottom or Color3.new(0, 0, 0)
            Lighting.ColorShift_Top = getgenv().ZX_OldColorShiftTop or Color3.new(0, 0, 0)
        end
    end
})

getgenv().ZX_DayNight = "Day"
Misc:AddDropdown({
    Name = "Select Time",
    Description = "Choose Day or Night",
    Options = {"Day", "Night"},
    Default = "Day",
    Callback = function(Value)
        getgenv().ZX_DayNight = Value
    end
})

getgenv().ZX_TimeToggle = false
Misc:AddToggle({
    Name = "Lock Time",
    Description = "Locks the world clock to Day or Night (selected above)",
    Default = false,
    Callback = function(Value)
        getgenv().ZX_TimeToggle = Value
    end
})

task.spawn(function()
    while task.wait(0.5) do
        if getgenv().ZX_TimeToggle then
            pcall(function()
                if getgenv().ZX_DayNight == "Day" then
                    game:GetService("Lighting").ClockTime = 12
                else
                    game:GetService("Lighting").ClockTime = 0
                end
            end)
        end
    end
end)

Misc:AddToggle({
    Name = "Walk on Water",
    Description = "Expands the water plane so you can walk on it",
    Default = false,
    Callback = function(Value)
        pcall(function()
            local water = workspace.Map:FindFirstChild("WaterBase-Plane")
            if water then
                if Value then
                    water.Size = Vector3.new(1000, 112, 1000)
                else
                    water.Size = Vector3.new(1000, 80, 1000)
                end
            end
        end)
    end
})

getgenv().ZX_IceWalk = false
Misc:AddToggle({
    Name = "Ice Walk (Trail)",
    Description = "Spawns ice spikes behind you as you walk",
    Default = false,
    Callback = function(Value)
        getgenv().ZX_IceWalk = Value
    end
})

task.spawn(function()
    local TweenService = game:GetService("TweenService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    while task.wait(0.1) do
        if getgenv().ZX_IceWalk then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local char = plr.Character
                if not char or not char:FindFirstChild("Head") then return end
                local model = ReplicatedStorage.Assets.Models:FindFirstChild("IceSpikes4")
                if not model then return end
                local spike = model:Clone()
                spike.Parent = workspace
                spike.Size = Vector3.new(3 + math.random(10, 12), 1.7, 3 + math.random(10, 12))
                spike.Color = Color3.fromRGB(128, 187, 219)
                spike.CFrame = CFrame.new(char.Head.Position.X, -3.8, char.Head.Position.Z)
                    * CFrame.Angles((math.random()-0.5)*0.06, math.random()*7, (math.random()-0.5)*0.07)
                local tween = TweenService:Create(spike, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = Vector3.new(0, 0.3, 0)})
                tween.Completed:Connect(function() spike:Destroy() end)
                tween:Play()
            end)
        end
    end
end)

Misc:AddButton({
    Name = "Anti AFK (Bypass)",
    Description = "Prevents the game from kicking you for being idle",
    Callback = function()
        local plr = game:GetService("Players").LocalPlayer
        local VirtualUser = game:GetService("VirtualUser")
        plr.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end
})

-- ═══════════════════════════════════════════════════════════════════
-- END OF VISUAL/MISC TAB ADDITIONS
-- ═══════════════════════════════════════════════════════════════════

loadstring(_finalChunk)()
