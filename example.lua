require("loader")

local menu = GUIContainer()

local frame = Frame()
    frame:setParent(menu)
    frame:setSize(Vector2D.new(10, 30), Vector2D.new(0.5, 0.5))
    frame:setBackgroundColor(RGBColor.new(255,255,255,128))

local label = Label()
    label:setParent(frame)
    label:setPosition(Vector2D.new(0, 0), Vector2D.new(0.1, 0.3))
    label:setSize(Vector2D.new(0, 0), Vector2D.new(0.5, 0.5))
    label:setTextSize(16)
    label:setBorderColor(RGBColor.new(128,128,255, 128))
    label:setText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

local quitBtn = Button()
    quitBtn:setParent(frame)
    quitBtn:setPosition(Vector2D.new(0, 0), Vector2D.new(0.5,0.2))
    quitBtn:setSize(Vector2D.new(0, 0),Vector2D.new(0.2, 0.05))
    quitBtn:setText("asoaosoa")

    quitBtn.mouseEnterEvent:connect(function() print("asooasoa") end)
    quitBtn.mouseUpEvent:connect(function() os.exit() end)

function love.load()
    love.window.setTitle("jInterface test")
    love.window.setMode(1280, 768, {resizable = true})
end

function love.update(dt)
    menu:update(dt)
end

function love.draw()

    love.graphics.setColor(64,64,64)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    menu:render()

end
