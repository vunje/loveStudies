local Middleclass = require("plugins/HooECS/lib/middleclass")
local hooecs = require('plugins/HooECS')
hooecs.initialize({debug=true})

local entity=hooecs.Entity()
local system=hooecs.System()
local engine=hooecs.Engine()
local component = hooecs.Component
local eventManager=hooecs.EventManager()

local class=hooecs.class

function love.load()
    local Position=component.create("position",{"x","y"},{x=0,y=0})
    dim=400
    width, height = love.graphics.getDimensions()
    -- height = love.window.getHeight()
    size = (width<height) and width or height

    image=love.graphics.newImage("assets/img/fpgJx.jpg")
    -- quad = love.graphics.newQuad(0, 0, 128, 64, image:getWidth(), image:getHeight())
    -- quad = love.graphics.newQuad(0, 0, image:getWidth(), image:getHeight(), image:getWidth(), image:getHeight())
    -- quad = love.graphics.newQuad(0, 0, dim, dim, dim, dim)
    -- quad = love.graphics.newQuad(0, 0, width, height, width, height)
    quad = love.graphics.newQuad(0, 0, size, size, size, size)
    -- quad = love.graphics.newQuad(0, 0, dim, dim, image)
end

function love.draw()
    love.graphics.draw(image, quad, (width/2-size/2), (height/2-size/2))
    -- love.graphics.draw(image, 0, 0)
    -- a=3
    -- b=4
    -- love.graphics.print(a+b, 400, 300)
    -- love.graphics.circle("fill", 230, 210, 100, 25)
    -- love.graphics.print("Hello World!!", 400, 300)
    -- love.graphics.print(love.graphics.getHeight(), 400, 300)
    -- love.graphics.print(hooecs)
end

function love.keyreleased(key)
    if key=="escape" then
        love.event.quit()
    end
end
