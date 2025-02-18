function _init()
    printh("start", "logs/log.txt", true) --logging
	i=0; j=0 --reserved for camera
	spawn_player(9, 12)
end

function _update()
	if(not pausemenu.visible) then
		player:move()
	end
	pausemenu:update()
end

function _draw()
	cls()
	map(0,0)
	player:draw()
	pcamera(player.x, player.y)
end

function pcamera(px, py)
    local target_x = px - 60
    local target_y = py - 60
    local dist = distance(i, j, target_x, target_y)
    local speed = dist * 0.1 -- Adjust the multiplier to control the speed

    if i < target_x then i = min(i + speed, target_x) end
    if i > target_x then i = max(i - speed, target_x) end
    if j < target_y then j = min(j + speed, target_y) end
    if j > target_y then j = max(j - speed, target_y) end
    camera(i, j)

	if(pausemenu.visible) then
		pausemenu:draw()
	end
end

function log(text)
    printh(text, "logs/log.txt")
end

function distance(x1, y1, x2, y2)
	return sqrt((x2-x1)^2 + (y2-y1)^2)
end