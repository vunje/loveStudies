-- local Middleclass = require('plugin/HooECS/lib/middleclass')
local HooECS = require('plugin/HooECS')
-- HooECS.initialize()

function love.load()
end

function love.draw()
    love.graphics.print("Hello World!!", 400, 300)
    -- love.graphics.print(HooECS)
end

function love.keyreleased(key)
    if key=="escape" then
        love.event.quit()
    end
end
