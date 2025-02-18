function spawnNPC(nx, ny, sprite, name, dialog)
    local temp = {}
        temp.x = nx
        temp.y = ny
        temp.sprite = sprite
        temp.name = name
        temp.dialog = dialog
        temp.draw = function(self)
            spr(self.sprite, self.x, self.y)
        end
end