--basically goes through colors
local worm = {"4","5","6","7","8","9","10","11","12","13","14","15","16"}
local visor = {'visor brows', 'visor eyes', 'visor nose', 'visor mouth'}
local ball = {'Ball'}
local charChange = game.ReplicatedStorage.remotes.edit --character change remote
local speed = 1 --color speed
_G.decide = "visor" --worm, visor, ball
_G.run = true --takes a while to stop after setting to false


local i
local a
while _G.run do
	wait()
	if _G.decide == "worm" then 
		print('worm was chosen')
		wait()
		for i = 0,1,0.01*speed do
			wait()
			for a = 1, #worm do
				wait()
				charChange:FireServer(
					"Color",
					worm[a],
					Color3.fromHSV(i,1,1),
					"bamboozle863489984fOwOmaliceOwo"
				)
			end
		end
	else if _G.decide == "ball" then 
			print('worm was chosen')
			wait()
			for i = 0,1,0.01*speed do
				wait()
				for a = 1, #ball do
					wait()
					charChange:FireServer(
						"Color",
						ball[a],
						Color3.fromHSV(i,1,1),
						"bamboozle863489984fOwOmaliceOwo"
					)
				end
			end
    else if _G.decide == "visor" then
		print('visor was chosen')
		wait()
        for i = 0,1,0.01*speed do
			wait()
			for a = 1, #visor do
				wait()
				charChange:FireServer(
					"Color",
					visor[a],
					Color3.fromHSV(i,1,1),
					"bamboozle863489984fOwOmaliceOwo"
				)
			end
        end
    end
end
end
end