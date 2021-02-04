VIRTUAL_WIDTH = 384
VIRTUAL_HEIGHT = 216
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

PADDLE_WIDTH = 8
PADDLE_HEIGHT = 32
PADDLE_SPEED = 140

BALL_SIZE = 4

push = require 'push'

player1 = {
    x = 10, y =10, score = 0    
}

player2 = {
    x = VIRTUAL_WIDTH - player1.x - PADDLE_WIDTH,
    y = VIRTUAL_HEIGHT - player1.y - PADDLE_HEIGHT,
    score =  0   
}

ball = {
    x = VIRTUAL_WIDTH / 2 - BALL_SIZE / 2,
    y = VIRTUAL_HEIGHT / 2 - BALL_SIZE / 2,
    dx = 0, dy = 0
}

function love.load()
    math.randomseed(os.time())
    love.graphics.setDefaultFilter('nearest', 'nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT)

    ball.dx = math.random(60)
    if math.random(2) == 1 then
        ball.dx = -ball.dx
    end
    ball.dy = math.random(60)
    if math.random(2) == 1 then
        ball.dy = -ball.dy
    end
end

function love.update(dt)
    if love.keyboard.isDown('w') then
        player1.y = player1.y - PADDLE_SPEED * dt
    elseif love.keyboard.isDown('s') then
        player1.y = player1.y + PADDLE_SPEED * dt
    end

    if love.keyboard.isDown('up') then
        player2.y = player2.y - PADDLE_SPEED * dt
    elseif love.keyboard.isDown('down') then
        player2.y = player2.y + PADDLE_SPEED * dt
    end

    ball.x = ball.x + ball.dx
    ball.y = ball.y + ball.dy
end

-- use key to control the screen
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:start()
    love.graphics.clear(40/255, 45/255, 52/255, 255/255)
    love.graphics.rectangle('fill', player1.x, player1.y, PADDLE_WIDTH, PADDLE_HEIGHT)
    love.graphics.rectangle('fill', player2.x, player2.y, PADDLE_WIDTH, PADDLE_HEIGHT)
    love.graphics.rectangle('fill', ball.x, ball.y, BALL_SIZE, BALL_SIZE)
    push:finish()
end