pausemenu = {}
    pausemenu.visible = false
    pausemenu.selected = 1
    pausemenu.update = function(self)
        if(btnp(🅾️)) then
            log("menu toggle")
            self.visible = not self.visible
        end
    end
    pausemenu.draw = function(self)
        if(self.visible) then
            rectfill(i+64, j, i+127, j+127, 1)
            rect(i+64, j, i+127, j+127, 7)
            local y_offset = 10
            for index, option in ipairs(options) do
                print(option, i+64+4, j+4 + (index - 1) * y_offset, 7)
            end
        end
    end


options = {monsters, items, save, exit}