local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local random = math.random
local dice = library:CreateWindow("Roll a Dice")
function chat(msg)
    game:service'ReplicatedStorage'.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, 'All')
 end
----------------------------------------------------------------------------------------
local num = dice:Box('Roll a D(n)', {
    location = _G;
	flag = "sides";
	type = 'number';
}, function(new)
end)
local b2 = dice:Button("Chat", function()
    -- saymsg:FireServer('Rolling a ' + _G.sides + ' sided dice...', "All")
    chat('Rolling a '.._G.sides..' sided dice...')
    wait(1)
    -- saymsg:FireServer(tostring(random(1, _G.sides)), "All")
    chat(tostring(random(1, _G.sides)))
end)
local meme = dice:Button("Roll for Initiative", function()
    chat('ROLL FOR INITIATIVE!')
    wait(1)
    chat('You rolled a '..tostring(random(1,_G.sides)))
end)