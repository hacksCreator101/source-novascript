local NovaScript = {}; function NovaScript.createDialog(title, text) local TweenService = game:GetService("TweenService"); local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui); local frame = Instance.new("Frame", screenGui); frame.Name, frame.Size, frame.Position, frame.AnchorPoint, frame.BackgroundColor3 = "DialogFrame", UDim2.new(0, 254, 0, 140), UDim2.new(0.5, -127, 0.5, -70), Vector2.new(0.5, 0.5), Color3.fromRGB(255, 255, 255); local dialogTime = Instance.new("Frame", frame); dialogTime.Name, dialogTime.Size, dialogTime.Position, dialogTime.BackgroundColor3 = "DialogTime", UDim2.new(1, 0, 0, 7), UDim2.new(0, 0, 0.95, 0), Color3.fromRGB(105, 255, 245); local titleLabel = Instance.new("TextLabel", frame); titleLabel.Name, titleLabel.Size, titleLabel.Position, titleLabel.Text, titleLabel.TextScaled, titleLabel.BackgroundTransparency, titleLabel.Font = "Title", UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0, 0), title or "Title", true, 1, Enum.Font.SourceSans; local description = Instance.new("TextLabel", frame); description.Name, description.Size, description.Position, description.Text, description.TextScaled, description.BackgroundTransparency, description.Font = "Description", UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0.35, 0), text or "Description", true, 1, Enum.Font.SourceSans; local button = Instance.new("TextButton", frame); button.Name, button.Size, button.Position, button.BackgroundTransparency, button.Text = "CloseButton", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), 1, ""; local function animateDialog() for i = 10, 1, -1 do wait(1); dialogTime.Size = UDim2.new(i / 10, 0, 0, 7) end; frame:Destroy() end; button.MouseButton1Click:Connect(animateDialog); end; return NovaScript