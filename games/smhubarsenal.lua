-- filename: 
-- version: lua51
-- line: [0, 0] id: 1
local r0_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/gerstam/CB-Script/main/unleaked"))
r0_1 = r0_1()
r0_1.title = "Solaris"
local r1_1 = r0_1:InitNotifications()
local r2_1 = r1_1:Notify("Loading Solaris.", 3, "information")
task.wait(3)
local r3_1 = r0_1:Init()
local r4_1 = r3_1:NewTab("Home")
local r5_1 = r4_1:NewSection("Introduction")
local r6_1 = r4_1:NewLabel("Welome, thanks For Using Solaris, " .. game.Players.LocalPlayer.DisplayName, "left")
local r7_1 = r4_1:NewSection("Credits")
local r8_1 = r4_1:NewLabel("Toasty.dev: Owner + Head Developer", "left")
local r9_1 = r4_1:NewLabel("PawsThePaw: Debugger", "left")
local r10_1 = game:GetService("Players")
local r12_1 = game:GetService("RunService")
local r15_1 = game:GetService("UserInputService")a
local r16_1 = game:GetService("TweenService")
local r20_1 = Color3.fromRGB(255, 255, 255)
_G.aiming = r19_1
local r18_1 = Drawing.new({
  AimbotEnabled = false,
  TeamCheck = false,
  AimPart = "Head",
  Sensitivity = 0.02,
  WallCheckEnabled = false,
  PredictionEnabled = true,
  PredictionFactor = 0,
  ForcefieldCheckEnabled = false,
  FriendCheckEnabled = false,
  VisibilityCheckEnabled = true,
  CircleSides = 24,
  CircleColor = r20_1,
  CircleTransparency = 1,
  CircleRadius = 80,
  CircleFilled = false,
  CircleVisible = false,
  CircleThickness = 0,
})
local r19_1 = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
r18_1.Position = r19_1
r18_1.Radius = _G.aiming.CircleRadius
r18_1.Filled = _G.aiming.CircleFilled
r18_1.Color = _G.aiming.CircleColor
r18_1.Visible = _G.aiming.CircleVisible
r18_1.Transparency = _G.aiming.CircleTransparency
r18_1.NumSides = _G.aiming.CircleSides
r18_1.Thickness = _G.aiming.CircleThickness
local r19_1 = function(r0_56)
  -- line: [0, 0] id: 56
  if _G.aiming.WallCheckEnabled then
    return true
  end
  if not r0_56.Character then
    local r2_56 = r0_56.Character:FindFirstChild("HumanoidRootPart")
    if not r2_56 then
      r2_56 = Ray.new(upval_0.CFrame.Position, r0_56.Character.HumanoidRootPart.Position - upval_0.CFrame.Position.unit * 1000)
      local r3_56, r4_56 = workspace:FindPartOnRay(r2_56, upval_1.Character, false, true)
      if not r3_56 then
        local r5_56 = r3_56:IsDescendantOf(r0_56.Character)
        if not r5_56 then
          return true
        end
      end
    end
  end
  return false
end
local r20_1 = function(r0_24)
  -- line: [0, 0] id: 24
  if not r0_24.Character then
    local r2_24 = r0_24.Character:FindFirstChild("Humanoid")
    if not r2_24 then
      return r0_24.Character[_G.aiming.AimPart].Position + r0_24.Character[_G.aiming.AimPart].AssemblyLinearVelocity * _G.aiming.PredictionFactor
    end
  end
  return
end
local r21_1 = function(r0_27)
  -- line: [0, 0] id: 27
  local r1_27 = game.Workspace.CurrentCamera:WorldToScreenPoint(r0_27.PrimaryPart.Position)
  if 0 < r1_27.Z then
    if 0 < r1_27.X then
      if r1_27.X < workspace.CurrentCamera.ViewportSize.X then
        if 0 < r1_27.Y then
          if r1_27.Y < workspace.CurrentCamera.ViewportSize.Y then
            return true
          end
        end
      end
    end
  end
  return false
end
local r22_1 = function(r0_26)
  -- line: [0, 0] id: 26
  local r1_26 = r0_26:FindFirstChildOfClass("ForceField")
  if not r1_26 then
    return true
  end
  return false
end
local r23_1 = function(r0_35)
  -- line: [0, 0] id: 35
  local r1_35 = r0_35:IsFriendsWith(game.Players.LocalPlayer.UserId)
  if not r1_35 then
    return true
  end
  return false
end
local r24_1 = function()
  -- line: [0, 0] id: 22
  local r3_22, r4_22 = upval_0:GetPlayers()
  if r6_22 ~= upval_1 then
    if not _G.aiming.TeamCheck then
      if r6_22.Team ~= upval_1.Team then
      end
      if not r6_22.Character then
        local r7_22 = r6_22.Character:FindFirstChild("HumanoidRootPart")
        if not r7_22 then
          r7_22 = r6_22.Character:FindFirstChild("Humanoid")
          if not r7_22 then
            if 0 < r6_22.Character.Humanoid.Health then
              if not _G.VisibilityCheckEnabled then
                r7_22 = upval_2(r6_22.Character)
                if not r7_22 then
                end
                if not _G.ForcefieldCheckEnabled then
                  r7_22 = upval_3(r6_22.Character)
                  if r7_22 then
                  end
                  if not _G.FriendCheckEnabled then
                    r7_22 = upval_4(r6_22)
                    if r7_22 then
                    end
                    r7_22 = upval_5:WorldToScreenPoint(upval_5)
                    local r9_22 = upval_7:GetMouseLocation()
                    local r10_22 = upval_7:GetMouseLocation()
                    local r8_22 = Vector2.new(r9_22.X, r10_22.Y)
                    r9_22 = Vector2.new(r7_22.X, r7_22.Y)
                    if r8_22 - r9_22.Magnitude <= _G.aiming.CircleRadius then
                      r9_22 = upval_8(r6_22)
                      if not r9_22 then
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  for r5_22, r6_22 in next do
    return r6_22
end
local r27_1 = function(r0_45)
  -- line: [0, 0] id: 45
  if r0_45.UserInputType == Enum.UserInputType.MouseButton2 then
    upval_0 = true
  end
  return
end
r15_1.InputBegan:Connect(r27_1)
local r27_1 = function(r0_31)
  -- line: [0, 0] id: 31
  if r0_31.UserInputType == Enum.UserInputType.MouseButton2 then
    upval_0 = false
  end
  return
end
r15_1.InputEnded:Connect(r27_1)
local r27_1 = function()
  -- line: [0, 0] id: 7
  local r2_7 = upval_1:GetMouseLocation()
  local r3_7 = upval_1:GetMouseLocation()
  local r1_7 = Vector2.new(r2_7.X, r3_7.Y)
  upval_0.Position = r1_7
  upval_0.Radius = _G.aiming.CircleRadius
  upval_0.Filled = _G.aiming.CircleFilled
  upval_0.Color = _G.aiming.CircleColor
  upval_0.Visible = _G.aiming.CircleVisible
  upval_0.Transparency = _G.aiming.CircleTransparency
  upval_0.NumSides = _G.aiming.CircleSides
  upval_0.Thickness = _G.aiming.CircleThickness
  if not upval_2 then
    if not _G.aiming.AimbotEnabled then
      local r0_7 = upval_3()
      if not r0_7 then
        local r4_7 = upval_4:Create(Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        local r6_7 = CFrame.new(upval_5.CFrame.Position)
        r1_7 = upval_4:Create(upval_4, upval_5, r4_7, {CFrame = r6_7})
        r1_7:Play()
      end
    end
  end
  return
end
r12_1.PreRender:Connect(r27_1)
local r25_1 = r3_1:NewTab("Aim")
local r30_1 = function(r0_52)
  -- line: [0, 0] id: 52
  _G.aiming.AimbotEnabled = r0_52
  return
end
local r26_1 = r25_1:NewToggle("Aimbot Enabled", false, r30_1)
local r32_1 = function(r0_2)
  -- line: [0, 0] id: 2
  _G.aiming.AimPart = r0_2
  return
end
r27_1 = r25_1:NewSelector("Hit Part", "Head", {"Head", "HumanoidRootPart"}, r32_1)
local r35_1 = function(r0_10)
  -- line: [0, 0] id: 10
  _G.aiming.PredictionFactor = r0_10 / 100
  return
end
local r28_1 = r25_1:NewSlider("Prediction Factor", "", true, "/", {min = 0, max = 100, default = 0}, r35_1)
local r36_1 = function(r0_59)
  -- line: [0, 0] id: 59
  _G.aiming.Sensitivity = r0_59 / 100
  return
end
local r29_1 = r25_1:NewSlider("Smoothing", "", true, "/", {min = 0, max = 20, default = 0}, r36_1)
r30_1 = r25_1:NewSection("Checks")
local r35_1 = function(r0_36)
  -- line: [0, 0] id: 36
  _G.aiming.TeamCheck = r0_36
  return
end
local r31_1 = r25_1:NewToggle("Team Check", false, r35_1)
local r36_1 = function(r0_51)
  -- line: [0, 0] id: 51
  _G.aiming.WallCheckEnabled = r0_51
  return
end
r32_1 = r25_1:NewToggle("Wall Check", false, r36_1)
local r37_1 = function(r0_46)
  -- line: [0, 0] id: 46
  _G.aiming.ForcefieldCheckEnabled = r0_46
  return
end
local r33_1 = r25_1:NewToggle("Forcefeild Check", false, r37_1)
local r38_1 = function(r0_53)
  -- line: [0, 0] id: 53
  _G.aiming.FriendCheckEnabled = r0_53
  return
end
local r34_1 = r25_1:NewToggle("Friend Check", false, r38_1)
r35_1 = r25_1:NewSection("Fov Circle")
local r40_1 = function(r0_42)
  -- line: [0, 0] id: 42
  _G.aiming.CircleVisible = r0_42
  return
end
r36_1 = r25_1:NewToggle("FovCircle Enabled", false, r40_1)
local r41_1 = function(r0_6)
  -- line: [0, 0] id: 6
  _G.aiming.CircleFilled = r0_6
  return
end
r37_1 = r25_1:NewToggle("FovCircle Filled", false, r41_1)
local r45_1 = function(r0_37)
  -- line: [0, 0] id: 37
  _G.aiming.CircleRadius = r0_37
  return
end
r38_1 = r25_1:NewSlider("Fov Radius", "", true, "/", {min = 40, max = 200, default = 80}, r45_1)
local r46_1 = function(r0_20)
  -- line: [0, 0] id: 20
  _G.aiming.CircleTransparency = r0_20 / 100
  return
end
local r39_1 = r25_1:NewSlider("Transparency", "", true, "/", {min = 0, max = 100, default = 100}, r46_1)
local r47_1 = function(r0_21)
  -- line: [0, 0] id: 21
  _G.aiming.CircleThickness = r0_21
  return
end
r40_1 = r25_1:NewSlider("Thickness", "", true, "/", {min = 0, max = 10, default = 1}, r47_1)
local r43_1 = Color3.fromRGB(255, 255, 255)
r43_1 = Color3.fromRGB(255, 255, 255)
r43_1 = Color3.fromRGB(255, 255, 255)
r43_1 = Color3.fromRGB(0, 0, 0)
_G.esp = r42_1
local r42_1 = function()
  -- line: [0, 0] id: 30
  local r0_30 = Drawing.new("Square")
  r0_30.Thickness = _G.esp.BoxThickness + 1
  r0_30.Color = _G.esp.OutlineBoxColor
  r0_30.Transparency = _G.esp.BoxesOpacity
  r0_30.Filled = false
  return r0_30
end
local r43_1 = function()
  -- line: [0, 0] id: 16
  local r0_16 = Drawing.new("Square")
  r0_16.Thickness = _G.esp.BoxThickness
  r0_16.Color = _G.esp.BoxColor
  r0_16.Filled = false
  r0_16.Transparency = _G.esp.BoxesOpacity
  return r0_16
end
local r44_1 = function()
  -- line: [0, 0] id: 58
  local r0_58 = Drawing.new("Line")
  r0_58.Thickness = _G.esp.TracerThickness
  r0_58.Color = _G.esp.TracersColor
  r0_58.Transparency = _G.esp.TracersOpacity
  return r0_58
end
local r45_1 = function()
  -- line: [0, 0] id: 47
  local r0_47 = Drawing.new("Text")
  r0_47.Color = _G.esp.TextColors
  r0_47.Size = 14
  r0_47.Center = true
  r0_47.Outline = _G.esp.TextOutline
  return r0_47
end
local r46_1 = function()
  -- line: [0, 0] id: 18
  local r0_18, r1_18, r2_18 = pairs(upval_0)
  if not r4_18 then
    r4_18:Remove()
  end
  for r3_18, r4_18 in r0_18 do
    upval_0 = r0_18
    local r0_18, r1_18, r2_18 = pairs(game.Players:GetPlayers())
    local r6_18 = function()
      -- line: [0, 0] id: 19
      if not upval_0.Character then
        if upval_0 ~= upval_1 then
          if not _G.esp.TeamCheck then
            if upval_0.Team ~= upval_1.Team then
            end
            local r1_19 = upval_0.Character:FindFirstChild("HumanoidRootPart")
            if not r1_19 then
              local r2_19, r3_19 = upval_2(upval_3, r1_19.Position)
              local r4_19, r5_19 = upval_2(upval_3, upval_0.Character.Head.Position)
              local r9_19 = Vector3.new(0, 5, 0)
              local r6_19, r7_19 = upval_2(upval_3, r1_19.Position - r9_19)
              if not r3_19 then
                if not _G.esp.OutlineBoxes then
                  local r10_19 = upval_4()
                  local r11_19 = Vector2.new(r4_19.Y - r6_19.Y / 2, r4_19.Y - r6_19.Y)
                  r10_19.Size = r11_19
                  r11_19 = Vector2.new(r2_19.X - r4_19.Y - r6_19.Y / 2 / 2, r2_19.Y - r4_19.Y - r6_19.Y / 2)
                  r10_19.Position = r11_19
                  r10_19.Visible = true
                  table.insert(upval_5, r10_19)
                end
                if not _G.esp.Boxes then
                  r10_19 = upval_6()
                  r11_19 = Vector2.new(r4_19.Y - r6_19.Y / 2, r4_19.Y - r6_19.Y)
                  r10_19.Size = r11_19
                  r11_19 = Vector2.new(r2_19.X - r4_19.Y - r6_19.Y / 2 / 2, r2_19.Y - r4_19.Y - r6_19.Y / 2)
                  r10_19.Position = r11_19
                  r10_19.Visible = true
                  table.insert(upval_5, r10_19)
                end
                if not _G.esp.Tracers then
                  r10_19 = upval_7()
                  if _G.esp.TracerOrigin == "center" then
                    r11_19 = Vector2.new(upval_3.ViewportSize.X / 2, upval_3.ViewportSize.Y / 2)
                    r10_19.From = r11_19
                  end
                  if _G.esp.TracerOrigin == "bottom" then
                    r11_19 = Vector2.new(upval_3.ViewportSize.X / 2, upval_3.ViewportSize.Y)
                    r10_19.From = r11_19
                  end
                  if _G.esp.TracerOrigin == "from mouse" then
                    r11_19 = game:GetService("UserInputService")
                    r11_19 = r11_19:GetMouseLocation()
                    local r12_19 = Vector2.new(r11_19.X, r11_19.Y)
                    r10_19.From = r12_19
                  end
                  r11_19 = Vector2.new(r2_19.X, r2_19.Y)
                  r10_19.To = r11_19
                  r10_19.Visible = true
                  table.insert(upval_5, r10_19)
                end
                r10_19 = upval_8()
                if not _G.esp.ShowName then
                end
                if not _G.esp.ShowDistance then
                  if not upval_1 then
                    if not upval_1.Character then
                      if not upval_1.Character then
                        r12_19 = upval_1.Character:FindFirstChild("HumanoidRootPart")
                        if not r12_19 then
                          local r14_19 = string.format("Distance: %d\
")
                        end
                      end
                    end
                  end
                end
                if not _G.esp.ShowHealth then
                  r12_19 = upval_0.Character:FindFirstChildOfClass("Humanoid")
                  if not r12_19 then
                    r14_19 = string.format("Health: %d\
")
                  end
                end
                r10_19.Text = "" .. upval_0.DisplayName .. "\
" .. r14_19 .. r14_19
                r12_19 = Vector2.new(r2_19.X, r4_19.Y - r4_19.Y - r6_19.Y / 10)
                r10_19.Position = r12_19
                r10_19.Visible = true
                table.insert(upval_5, r10_19)
              end
            end
          end
        end
      end
      return
    end
    pcall(r6_18)
    for r3_18, r4_18 in r0_18 do
      return
end
r47_1 = game:GetService("RunService")
r47_1.PreRender:Connect(r46_1)
r47_1 = r3_1:NewTab("Visuals")
local r48_1 = r47_1:NewSection("General Esp Settings")
local r53_1 = function(r0_43)
  -- line: [0, 0] id: 43
  _G.esp.TeamCheck = r0_43
  return
end
local r49_1 = r47_1:NewToggle("Team Check", false, r53_1)
local r50_1 = r47_1:NewSection("Boxes")
local r55_1 = function(r0_15)
  -- line: [0, 0] id: 15
  _G.esp.Boxes = r0_15
  return
end
local r51_1 = r47_1:NewToggle("Boxes", false, r55_1)
local r56_1 = function(r0_55)
  -- line: [0, 0] id: 55
  _G.esp.OutlineBoxes = r0_55
  return
end
local r52_1 = r47_1:NewToggle("Box Outlines", false, r56_1)
local r60_1 = function(r0_54)
  -- line: [0, 0] id: 54
  _G.esp.BoxesOpacity = r0_54 / 100
  return
end
r53_1 = r47_1:NewSlider("Box Opacity", "", true, "/", {min = 0, max = 100, default = 100}, r60_1)
local r54_1 = r47_1:NewSection("Tracers")
local r59_1 = function(r0_40)
  -- line: [0, 0] id: 40
  _G.esp.Tracers = r0_40
  return
end
r55_1 = r47_1:NewToggle("Tracers", false, r59_1)
local r63_1 = function(r0_14)
  -- line: [0, 0] id: 14
  _G.esp.TracersOpacity = r0_14 / 100
  return
end
r56_1 = r47_1:NewSlider("Tracer Opacity", "", true, "/", {min = 0, max = 100, default = 100}, r63_1)
local r64_1 = function(r0_13)
  -- line: [0, 0] id: 13
  _G.esp.TracerThickness = r0_13
  return
end
local r57_1 = r47_1:NewSlider("Tracer Thickness", "", true, "/", {min = 1, max = 10, default = 1}, r64_1)
local r63_1 = function(r0_57)
  -- line: [0, 0] id: 57
  _G.esp.TracerOrigin = r0_57
  return
end
local r58_1 = r47_1:NewSelector("Tracer Origin", "center", {"center", "bottom", "from mouse"}, r63_1)
r59_1 = r47_1:NewSection("Info")
local r64_1 = function(r0_38)
  -- line: [0, 0] id: 38
  _G.esp.ShowDistance = r0_38
  return
end
r60_1 = r47_1:NewToggle("Distance", false, r64_1)
local r65_1 = function(r0_17)
  -- line: [0, 0] id: 17
  _G.esp.ShowName = r0_17
  return
end
local r61_1 = r47_1:NewToggle("Name", false, r65_1)
local r66_1 = function(r0_34)
  -- line: [0, 0] id: 34
  _G.esp.ShowHealth = r0_34
  return
end
local r62_1 = r47_1:NewToggle("Health", false, r66_1)
local r67_1 = function(r0_48)
  -- line: [0, 0] id: 48
  _G.esp.TextOutline = r0_48
  return
end
r63_1 = r47_1:NewToggle("Text Outline", false, r67_1)
r64_1 = r3_1:NewTab("Gun Mods")
r65_1 = r64_1:NewSection("Gun Modifiers")
local r69_1 = function()
  -- line: [0, 0] id: 44
  local r0_44, r1_44, r2_44 = pairs(game.ReplicatedStorage.Weapons:GetDescendants())
  if r4_44.Name == "RecoilControl" then
    r4_44.Value = 0
  end
  for r3_44, r4_44 in r0_44 do
    return
end
r66_1 = r64_1:NewButton("No Recoil", r69_1)
local r70_1 = function()
  -- line: [0, 0] id: 33
  local r0_33, r1_33, r2_33 = pairs(game.ReplicatedStorage.Weapons:GetDescendants())
  if r4_33.Name == "MaxSpread" then
    r4_33.Value = 0
  end
  for r3_33, r4_33 in r0_33 do
    return
end
r67_1 = r64_1:NewButton("No Spread", r70_1)
local r71_1 = function()
  -- line: [0, 0] id: 50
  local r0_50, r1_50, r2_50 = pairs(game.ReplicatedStorage.Weapons:GetDescendants())
  if r4_50.Name == "FireRate" then
    r4_50.Value = 0.05
  end
  for r3_50, r4_50 in r0_50 do
    return
end
local r68_1 = r64_1:NewButton("Firerate", r71_1)
local r72_1 = function()
  -- line: [0, 0] id: 23
  local r0_23, r1_23, r2_23 = pairs(game.ReplicatedStorage.Weapons:GetDescendants())
  if r4_23.Name == "ReloadTime" then
    r4_23.Value = 0.1
  end
  for r3_23, r4_23 in r0_23 do
    return
end
r69_1 = r64_1:NewButton("Instant Reloads", r72_1)
local r73_1 = function()
  -- line: [0, 0] id: 4
  local r0_4 = game:GetService("RunService")
  local r2_4 = function()
    -- line: [0, 0] id: 5
    local r0_5 = game:GetService("Players")
    r0_5.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
    r0_5 = game:GetService("Players")
    r0_5.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
    return
  end
  r0_4.PreRender:Connect(r2_4)
  return
end
r70_1 = r64_1:NewButton("Infinite Ammo", r73_1)
r71_1 = r3_1:NewTab("Player Mods")
r72_1 = r71_1:NewSection("Third Person")
local r77_1 = function(r0_39)
  -- line: [0, 0] id: 39
  _G.thirdshit = r0_39
  return
end
r73_1 = r71_1:NewToggle("Third Person", false, r77_1)
local r76_1 = function()
  -- line: [0, 0] id: 3
  if not upval_0.Character then
    if not _G.thirdshit then
      if upval_0.Character ~= nil then
        game.Players.LocalPlayer.CameraMaxZoomDistance = 30
        upval_0.CameraMode = Enum.CameraMode.Classic
      end
      if upval_0.Character ~= nil then
        upval_0.CameraMinZoomDistance = 0
        upval_0.CameraMaxZoomDistance = 0
        upval_0.CameraMode = Enum.CameraMode.LockFirstPerson
      end
    end
  end
  return
end
r12_1.PreRender:Connect(r76_1)
local r74_1 = r71_1:NewSection("Fov")
local r79_1 = function(r0_28)
  -- line: [0, 0] id: 28
  _G.wantbigaim = r0_28
  return
end
local r75_1 = r71_1:NewToggle("Fov Changer", false, r79_1)
local r83_1 = function(r0_32)
  -- line: [0, 0] id: 32
  _G.aaaaaaaa = r0_32
  return
end
r76_1 = r71_1:NewSlider("Fov", "", true, "/", {min = 20, max = 120, default = 70}, r83_1)
local r79_1 = function()
  -- line: [0, 0] id: 8
  if not _G.wantbigaim then
    workspace.CurrentCamera.FieldOfView = _G.aaaaaaaa
  end
  return
end
r12_1.PreRender:Connect(r79_1)
r77_1 = r71_1:NewSection("Fly")
local r82_1 = function(r0_60)
  -- line: [0, 0] id: 60
  local r2_60 = game.Players.LocalPlayer:GetMouse()
  local r4_60 = workspace:FindFirstChild("Core")
  if not r4_60 then
    r4_60:Destroy()
  end
  local r5_60 = Instance.new("Part")
  r5_60.Name = "Core"
  local r6_60 = Vector3.new(0.05, 0.05, 0.05)
  r5_60.Size = r6_60
  r5_60.Parent = workspace
  r6_60 = Instance.new("Weld", r5_60)
  r6_60.Part0 = r5_60
  r6_60.Part1 = game.Players.LocalPlayer.Character.LowerTorso
  local r7_60 = CFrame.new(0, 0, 0)
  r6_60.C0 = r7_60
  local r12_60 = function()
    -- line: [0, 0] id: 63
    local r0_63 = Instance.new("BodyPosition", upval_0)
    local r1_63 = Instance.new("BodyGyro", upval_0)
    r0_63.Name = "EPIXPOS"
    local r2_63 = Vector3.new(math.huge, math.huge, math.huge)
    r0_63.maxForce = r2_63
    r0_63.position = upval_0.Position
    r2_63 = Vector3.new(9000000000, 9000000000, 9000000000)
    r1_63.maxTorque = r2_63
    r1_63.cframe = upval_0.CFrame
    if not upval_1 then
      wait()
      upval_2.Character.Humanoid.PlatformStand = true
      if upval_3.w then
        if upval_3.s then
          if upval_3.a then
            if upval_3.d then
              upval_4 = 5
            end
          end
        end
      end
      if not upval_3.w then
      end
      if not upval_3.s then
      end
      if not upval_3.d then
        local r3_63 = CFrame.new(upval_4, 0, 0)
      end
      if not upval_3.a then
        r3_63 = CFrame.new(-upval_4, 0, 0)
      end
      r0_63.position = r1_63.cframe - r1_63.cframe.p + r0_63.position + workspace.CurrentCamera.CFrame.lookVector * upval_4 - workspace.CurrentCamera.CFrame.lookVector * upval_4 * r3_63 * r3_63.p
      if not upval_3.w then
        local r5_63 = math.rad(upval_4 * 0)
        local r4_63 = CFrame.Angles(-r5_63, 0, 0)
        r1_63.cframe = workspace.CurrentCamera.CFrame * r4_63
      end
      if not upval_3.s then
        r5_63 = math.rad(upval_4 * 0)
        r4_63 = CFrame.Angles(r5_63, 0, 0)
        r1_63.cframe = workspace.CurrentCamera.CFrame * r4_63
      end
      r1_63.cframe = workspace.CurrentCamera.CFrame
    end
    if not r1_63 then
      r1_63:Destroy()
    end
    if not r0_63 then
      r0_63:Destroy()
    end
    upval_2.Character.Humanoid.PlatformStand = false
    upval_4 = 100
    upval_0:Destroy()
    return
  end
  local r15_60 = function(r0_64)
    -- line: [0, 0] id: 64
    if not upval_0 then
      if upval_0.Parent then
      end
      upval_1 = false
      upval_2:Disconnect()
      upval_3:Disconnect()
      return
    end
    if r0_64 == "w" then
      upval_4.w = true
    end
    if r0_64 == "s" then
      upval_4.s = true
    end
    if r0_64 == "a" then
      upval_4.a = true
    end
    if r0_64 == "d" then
      upval_4.d = true
    end
    return
  end
  local r13_60 = r2_60.KeyDown:Connect(r15_60)
  local r15_60 = function(r0_61)
    -- line: [0, 0] id: 61
    if r0_61 == "w" then
      upval_0.w = false
    end
    if r0_61 == "s" then
      upval_0.s = false
    end
    if r0_61 == "a" then
      upval_0.a = false
    end
    if r0_61 == "d" then
      upval_0.d = false
    end
    return
  end
  r13_60 = r2_60.KeyUp:Connect(r15_60)
  local r13_60 = function(r0_62)
    -- line: [0, 0] id: 62
    upval_0 = r0_62
    if not upval_0 then
      upval_1()
    end
    if not upval_2 then
      upval_2:Destroy()
    end
    return
  end
  r13_60(r0_60)
  return
end
local r78_1 = r71_1:NewToggle("Fly", false, r82_1)
r79_1 = r71_1:NewSection("Spin Bot")
local r84_1 = function(r0_11)
  -- line: [0, 0] id: 11
  _G.gyroenabled = r0_11
  _G.spinspeed = 50
  local r3_11 = function()
    -- line: [0, 0] id: 12
    if not upval_0 then
      if not upval_0.Character then
        if not upval_0.Character then
          local r0_12 = upval_0.Character:FindFirstChild("HumanoidRootPart")
          if not r0_12 then
            if not _G.gyroenabled then
              upval_0.Character.Humanoid.AutoRotate = false
              local r4_12 = math.rad(_G.spinspeed)
              local r2_12 = CFrame.Angles(0, r4_12, 0)
              upval_0.Character.HumanoidRootPart.CFrame = upval_0.Character.HumanoidRootPart.CFrame * r2_12
            end
            upval_0.Character.Humanoid.AutoRotate = true
          end
        end
      end
    end
    return
  end
  upval_0.PreRender:Connect(r3_11)
  return
end
local r80_1 = r71_1:NewToggle("Spin Bot", false, r84_1)
local r88_1 = function(r0_29)
  -- line: [0, 0] id: 29
  _G.spinspeed = r0_29
  return
end
local r81_1 = r71_1:NewSlider("Speed", "", true, "/", {min = 5, max = 150, default = 50}, r88_1)
r82_1 = r71_1:NewSection("Bhop")
local r87_1 = function(r0_9)
  -- line: [0, 0] id: 9
  _G.bhop = r0_9
  return
end
r83_1 = r71_1:NewToggle("Bhop", false, r87_1)
local r91_1 = function(r0_25)
  -- line: [0, 0] id: 25
  _G.bhopspeed = r0_25
  return
end
r84_1 = r71_1:NewSlider("Speed", "", true, "/", {min = 5, max = 150, default = 50}, r91_1)
_G.bhopspeed = 50
_G.bhop = false
local r87_1 = function()
  -- line: [0, 0] id: 41
  if not _G.bhop then
    if upval_0.Character ~= nil then
      local r0_41 = upval_1:IsKeyDown(Enum.KeyCode.Space)
      if not r0_41 then
        if upval_0.PlayerGui.GUI.Main.GlobalChat.Visible == false then
          upval_0.Character.Humanoid.Jump = true
          local r1_41 = Vector3.new(1, 0, 1)
          r1_41 = Vector3.new()
          local r2_41 = upval_1:IsKeyDown(Enum.KeyCode.W)
          if not r2_41 then
            if r1_41 + upval_2.CFrame.LookVector * r1_41 then
            end
          end
          r2_41 = upval_1:IsKeyDown(Enum.KeyCode.S)
          if not r2_41 then
            if r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 then
            end
          end
          r2_41 = upval_1:IsKeyDown(Enum.KeyCode.D)
          if not r2_41 then
            r2_41 = Vector3.new(-upval_2.CFrame.LookVector * r1_41.Z, 0, upval_2.CFrame.LookVector * r1_41.X)
            if r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 then
            end
          end
          r2_41 = upval_1:IsKeyDown(Enum.KeyCode.A)
          if not r2_41 then
            r2_41 = Vector3.new(upval_2.CFrame.LookVector * r1_41.Z, 0, -upval_2.CFrame.LookVector * r1_41.X)
            if r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 + r2_41 then
            end
          end
          if r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 + r2_41.Unit.X == r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 + r2_41.Unit.X then
            local r3_41 = Vector3.new(r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 + r2_41.Unit.X * _G.bhopspeed, upval_0.Character.HumanoidRootPart.Velocity.Y, r1_41 + upval_2.CFrame.LookVector * r1_41 - upval_2.CFrame.LookVector * r1_41 + r2_41 + r2_41.Unit.Z * _G.bhopspeed)
            upval_0.Character.HumanoidRootPart.Velocity = r3_41
          end
        end
      end
    end
  end
  task.wait()
  return
end
r12_1.PreRender:Connect(r87_1)
local r85_1 = r3_1:NewTab("Misc Mods")
local r86_1 = r85_1:NewSection("Fps Booster")
local r90_1 = function()
  -- line: [0, 0] id: 49
  local r0_49 = game:GetService("CoreGui")
  r0_49 = r0_49:WaitForChild("DevConsoleMaster")
  local r1_49 = r0_49:WaitForChild("DevConsoleWindow")
  local r2_49 = r1_49:WaitForChild("DevConsoleUI")
  local r3_49 = r2_49:WaitForChild("MainView")
  local r4_49 = r3_49:WaitForChild("ClientLog")
  local r6_49, r7_49 = r4_49:GetChildren()
  local r10_49 = r9_49:IsA("GuiObject")
  if not r10_49 then
    local r11_49 = r9_49.Name:match("%d+")
    if r9_49.Name == r11_49 then
      r9_49:Destroy()
    end
  end
  for r8_49, r9_49 in next do
    return
end
r87_1 = r85_1:NewButton("Clear Console", r90_1)
task.wait(1)
r88_1 = r0_1:CheckIfLoaded()
if not r88_1 then
  r88_1 = r1_1:Notify("Loaded Solaris", 4, "success")
end
return
