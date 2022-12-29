local Middleclass = require('plugin/HooECS/lib/middleclass')
local hooecs = require('plugin/HooECS')
hooecs.initialize({debug=true})

local entity=hooecs.Entity()
local system=hooecs.System()
local engine=hooecs.Engine()
local component = hooecs.Component
local eventManager=hooecs.EventManager()

local class=hooecs.class

function love.load()
    local Position=component.create("position",{"x","y"},{x=0,y=0})
end

function love.draw()
    a=8
    b=8
    love.graphics.print(a+b, 400, 300)
    love.graphics.circle("fill", 230, 210, 100, 25)
    -- love.graphics.print("Hello World!!", 400, 300)
    -- love.graphics.print(hooecs)
end

function love.keyreleased(key)
    if key=="escape" or key=="q" then
        love.event.quit()
    end
end
