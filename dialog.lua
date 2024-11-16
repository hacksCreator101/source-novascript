local NovaScript = {}; function NovaScript.createDialog(title, text) local TweenService = game:GetService("TweenService"); local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui); local frame = Instance.new("Frame", screenGui); frame.Name, frame.Size, frame.Position, frame.AnchorPoint, frame.BackgroundColor3 = "DialogFrame", UDim2.new(0, 254, 0, 140), UDim2.new(0.5, -127, 0.5, -70), Vector2.new(0.5, 0.5), Color3.fromRGB(255, 255, 255); local dialogTime = Instance.new("Frame", frame); dialogTime.Name, dialogTime.Size, dialogTime.Position, dialogTime.BackgroundColor3 = "DialogTime", UDim2.new(1, 0, 0, 7), UDim2.new(0, 0, 0.95, 0), Color3.fromRGB(105, 255, 245); local titleLabel = Instance.new("TextLabel", frame); titleLabel.Name, titleLabel.Size, titleLabel.Position, titleLabel.Text, titleLabel.TextScaled, titleLabel.BackgroundTransparency, titleLabel.Font = "Title", UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0, 0), title or "Title", true, 1, Enum.Font.SourceSans; local description = Instance.new("TextLabel", frame); description.Name, description.Size, description.Position, description.Text, description.TextScaled, description.BackgroundTransparency, description.Font = "Description", UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0.35, 0), text or "Description", true, 1, Enum.Font.SourceSans; local button = Instance.new("TextButton", frame); button.Name, button.Size, button.Position, button.BackgroundTransparency, button.Text = "CloseButton", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), 1, ""; local function animateDialog() for i = 10, 1, -1 do wait(1); dialogTime.Size = UDim2.new(i / 10, 0, 0, 7) end; frame:Destroy() end; button.MouseButton1Click:Connect(animateDialog); end; return NovaScript
local function createError(Title, Description) local ScreenGui = Instance.new("ScreenGui", game:GetService("StarterGui")); local BG = Instance.new('Frame', ScreenGui); BG.Size, BG.Position, BG.BackgroundColor3, BG.BackgroundTransparency, BG.SizeConstraint, BG.ClipsDescendants = UDim2.new(0, 1154, 0, 583), UDim2.new(0, 0, 0, 0), Color3.fromRGB(66, 66, 66), 0.46, Enum.SizeConstraint.RelativeXY, false; local Frame = Instance.new('Frame', BG); Frame.Size, Frame.Position, Frame.BackgroundColor3, Frame.SizeConstraint, Frame.ClipsDescendants = UDim2.new(0, 310, 0, 201), UDim2.new(0.4357, 0, 0.3121, 0), Color3.fromRGB(255, 255, 255), Enum.SizeConstraint.RelativeXY, false; local textlabel2 = Instance.new('TextLabel', Frame); textlabel2.Size, textlabel2.Position, textlabel2.Text, textlabel2.TextColor3, textlabel2.TextSize, textlabel2.TextStrokeTransparency, textlabel2.TextTransparency, textlabel2.Font = UDim2.new(0, 200, 0, 54), UDim2.new(0.1774, 0, 0.3930, 0), Description or "No description provided", Color3.fromRGB(0, 0, 0), 14, 1, 0, Enum.Font.SourceSans; local confirm = Instance.new('TextButton', Frame); confirm.Size, confirm.Position, confirm.Text, confirm.TextColor3, confirm.TextSize, confirm.TextStrokeTransparency, confirm.TextTransparency, confirm.Font = UDim2.new(0, 135, 0, 50), UDim2.new(0.5645, 0, 0.7015, 0), 'Ok', Color3.fromRGB(0, 0, 0), 14, 1, 0, Enum.Font.SourceSans; local notconfirm = Instance.new('TextButton', Frame); notconfirm.Size, notconfirm.Position, notconfirm.Text, notconfirm.TextColor3, notconfirm.TextSize, notconfirm.TextStrokeTransparency, notconfirm.TextTransparency, notconfirm.Font = UDim2.new(0, 135, 0, 50), UDim2.new(0.0194, 0, 0.7015, 0), 'Cancel', Color3.fromRGB(0, 0, 0), 14, 1, 0, Enum.Font.SourceSans; local TitleFrame = Instance.new('Frame', Frame); TitleFrame.Size, TitleFrame.Position, TitleFrame.BackgroundColor3, TitleFrame.SizeConstraint, TitleFrame.ClipsDescendants = UDim2.new(0, 310, 0, 28), UDim2.new(0, 0, 0, 0), Color3.fromRGB(255, 255, 255), Enum.SizeConstraint.RelativeXY, false; local textlabel1 = Instance.new('TextLabel', TitleFrame); textlabel1.Size, textlabel1.Position, textlabel1.Text, textlabel1.TextColor3, textlabel1.TextSize, textlabel1.TextStrokeTransparency, textlabel1.TextTransparency, textlabel1.Font = UDim2.new(0, 284, 0, 28), UDim2.new(0, 0, 0, 0), Title or "Error", Color3.fromRGB(0, 0, 0), 14, 1, 0, Enum.Font.SourceSans; local closebutton = Instance.new('TextButton', TitleFrame); closebutton.Size, closebutton.Position, closebutton.Text, closebutton.TextColor3, closebutton.TextSize, closebutton.TextStrokeTransparency, closebutton.TextTransparency, closebutton.Font = UDim2.new(0, 26, 0, 28), UDim2.new(0.9161, 0, 0, 0), 'X', Color3.fromRGB(255, 0, 0), 14, 1, 0, Enum.Font.SourceSans; closebutton.MouseButton1Click:Connect(function() ScreenGui:Destroy() end); confirm.MouseButton1Click:Connect(function() print("Confirmed!"); ScreenGui:Destroy() end); notconfirm.MouseButton1Click:Connect(function() print("Cancelled!"); ScreenGui:Destroy() end) end
