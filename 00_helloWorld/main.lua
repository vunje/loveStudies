function love.draw()
    love.graphics.print("Hello World!!!", 400, 300)
end

function love.keyreleased(key)
    if key=="escape" then
        love.event.quit()
    end
end
