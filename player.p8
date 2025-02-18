function spawn_player(plx, ply)
	player={}
		player.x = plx*8
		player.y = ply*8
		player.sprite = 1
		player.move = function(self)
			if (btnp(⬅️)) slide(⬅️)
			if (btnp(➡️)) slide(➡️)
			if (btnp(⬆️)) slide(⬆️)
			if (btnp(⬇️)) slide(⬇️)
			if (self.y<0) self.y=0
			if (self.x<0) self.x=0
				
			function slide(button) --true is positive, 0 is x and 1 is y
				if(button == ⬅️ and not chkwall(button)) then self.x -= 8 end
				if(button == ➡️ and not chkwall(button)) then self.x += 8 end
				if(button == ⬆️ and not chkwall(button)) then self.y -= 8 end
				if(button == ⬇️ and not chkwall(button)) then self.y += 8 end
			end
				
			function chkwall(button)
				bx=0;by=0
				if(button == ⬅️) then bx=-1; by= 0 end
				if(button == ➡️) then bx= 1; by= 0 end
				if(button == ⬆️) then bx= 0; by=-1 end
				if(button == ⬇️) then bx= 0; by= 1 end
				if(fget(mget((self.x+bx*8)/8, (self.y+by*8)/8)) == 1) then
					log("wall ahead!")
					return true
				end
			end
		end

		player.draw = function(self)
			spr(1, self.x, self.y)
		end
end