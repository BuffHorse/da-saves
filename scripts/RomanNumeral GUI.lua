--[[
  credits:
  efrederickson for ToRomanNumeral: https://gist.github.com/efrederickson/4080372
  wally for UIlib
]]

local map = { 
    I = 1,
    V = 5,
    X = 10,
    L = 50,
    C = 100, 
    D = 500, 
    M = 1000,
}
local numbers = { 1, 5, 10, 50, 100, 500, 1000 }
local chars = { "I", "V", "X", "L", "C", "D", "M" }
local RomanNumerals = { }

local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))() --WallyUI
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")

function ToRomanNumerals(s)
    s = tonumber(s)
    s = math.floor(s)
    if s <= 0 then return s end
	local ret = ""
        for i = #numbers, 1, -1 do
        local num = numbers[i]
        while s - num >= 0 and s > 0 do
            ret = ret .. chars[i]
            s = s - num
        end
        for j = 1, i - 1 do
            local n2 = numbers[j]
            if s - (num - n2) >= 0 and s < num and s > 0 and num - n2 ~= n2 then
                ret = ret .. chars[j] .. chars[i]
                s = s - (num - n2)
                break
            end
        end
    end
    return ret
end

local w = library:CreateWindow('Int 2 Roman')
local num = w:Box('Number', {
    location = _G;
	flag = "int";
	type = 'number';
}, function(new)
end)
local b = w:Button("To Clipboard", function()
    syn.write_clipboard(ToRomanNumerals(_G.int))
end)
local b2 = w:Button("Chat", function()
	saymsg:FireServer(ToRomanNumerals(_G.int), "All")
end)
