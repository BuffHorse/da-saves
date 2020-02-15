local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))() --wally's ui lib

local proto = {"Tail1","Tail2","Tail3","Tail4","Tail5","Tail6","Chest","Head","Head Fluff","Head Plate Fins","Left arm","Left ear","Left ear inside","Left shoulder","Leftthigh","Neck Fluff","Right ear","Right ear inside","Rightthigh","Torso","Visor lining","claws","feet claws","foot pads","left finger 1","left finger 2","left finger 3","left finger 4","left finger 5","left hand","left toe 1","left toe 2","left toe 3","left toe 4","left wrist","leftlegmiddle","leftlowerleg","lefttupperleg","leftupperleg","lower torso to tail plate (outer)","mid secton","outer arm joint plates","outer head plate","outer thigh plates","paw pads","pawpads","right finger1","right finger2","right finger 3","right finger 4","right finger 5","right paw","right toe 1","right toe 2","right toe 3","right toe 4","right wrist", "right shoulder", "right arm", "rightlegmiddle","rightlowerleg","rightupperleg","secondary left lower leg","secondary right lower leg","visor brows","visor eyes","visor mouth","visor nose"}
local worm = {"4","5","6","7","8","9","10","11","12","13","14","15","16"}
local miniworm = {"4","5","6","7","8","9","10"}
local fox = {"Back Head Fluff","Back Neck Fluff","Chest fluff","Head","Jaw","L ear","L earinside","Left arm","Left shoulder","LeftAnkle","LeftFoot","LeftThigh","LowerTorso","Lowerteeth","Neck","R ear","R earinside","RightAnkle","RightFoot","RightThigh","Tail1","Tail2","Tail3","Tongue1","Tongue2","Tongue3","Torso","UpperLegLeft","UpperLegRight","Upperteeth","Whiskers","boop nose","claw","claws","eyeball shine","eyeblackslits","eyebrow pad right","eyebrow1","eyelid","eyeliner","eyewhite","fox mark","front head fluff","frontal Lower Torso","frontal torso","headfluff","inner ear fluff left","inner ear fluff right","left eyebrow","left finger 1","left finger 2","left finger 4","left finger 5","left hand","left wrist","mouthlining","muzzle spots","nose to mouth","paw pads","pawpads","pupils","retna LEFT","retna RIGHT","retna shades","right arm","right eyebrow","right finger 3","right finger 4","right finger 5","right finger1","right finger2","right paw","right shoulder","right wrist","secondary neck","undertail 1","undertail 2","undertail 3"}
local fennec = {"Back Head Fluff","neck fluff","Chest fluff","Head","Jaw","L ear","Inner Ear Left","Left ear tip","Left ear tuft","Left arm","Left shoulder","LeftAnkle","LeftFoot","LeftThigh","LowerTorso","Lowerteeth","Neck","R ear","Inner Ear Right","Right ear tip","Right ear tuft","RightAnkle","RightFoot","RightThigh","Tail1","Tail2","Tail3","Tongue1","Tongue2","Tongue3","Torso","UpperLegLeft","UpperLegRight","Upperteeth","Whiskers","BOOP SNOOT","claw","claws","eyeshine","eyeblackslits","Eyelid","Eye liners","Eye whites","fox mark","Front head fluff","frontal Lower Torso","frontal torso","headfluff","left eyebrow","left finger 1","left finger 2","left finger 4","left finger 5","left hand","left wrist","mouthlining","muzzle spots","nose to mouth","paw pads","pawpads","pupils","Retnas","right arm","right eyebrow","right finger 3","right finger 4","right finger 5","right finger1","right finger2","right paw","right shoulder","right wrist","secondary neck","undertail 1","undertail 2","undertail 3"}
local wolf = {"ChestFluff","ChestFur","EYEBALL shine (left)","EyebrowLeft","EyebrowRight","Eyelidleft","Eyelidright","Head","Jaw","LeftAnkle","LeftEar","LeftFoot","LeftPaw","LeftThigh","LowerArmLeft","LowerArmRight","LowerTorso","Neck","Nose","RightAnkle","RightEar","RightFoot","RightPaw","RightThigh","Tail1","Tail2","Tail3","Torso","UpperArmLeft","UpperArmRight","UpperLegLeft","UpperEggRight","claw","eyeball shine (right)","leftindideear","leftwrist","ourter pupil(right)","outer eye (left)","outer eye (right)","outer pupul (left)","pupil(left)","pupil(right)","rightinsideear","rightwrist","undertail1","undertail2","undertail3"}
local ball = {"Ball"}
local door = {"a door pannel thing","a knob","door border"}
local mats = {1, 2, 3, 4, 5, 6, 7, 8, 9 , 10, 11, 12, 13, 14, 15, 16}
----------------------------------------------------------------
local charChange = game.ReplicatedStorage.remotes.edit --character change remote
local nameChange = game.ReplicatedStorage.remotes.tag --name change remote
local random = math.random
local key = "bamboozle863489984fOwOmaliceOwo" --if current key doesn't work, find it by using a remote spy.
function randomColor(char)
    wait()
    charChange:FireServer(
        "Color", --first arg of charChange can either be "Color" or "Material"
        char[random(#char)], --get a random part
        Color3.new(random(), random(), random()), --set part to a random color(0(exclusive)-1(inclusive))
        key
    )
end
function colorChange(char, R, G, B)
    for i=1,#char do
        wait()
        charChange:FireServer(
            "Color",
            char[i],
            Color3.fromRGB(R, G, B),
            key
        )
    end
end
function materialChange(char, num)
    for i=1,#char do
        wait()
        charChange:FireServer(
            "Material", --second method of using charChange
            char[i],
            num, --materials are numbered (1-16(excluding gamepass))
            key
        )
    end
end
function randomMaterial(char, num)
    for i=1,#char do
        wait()
        charChange:FireServer(
            "Material",
            char[random(#char)],
            num,
            key
        )
    end
end
function randomAll(char, num)
    wait()
    charChange:FireServer(
        "Color",
        char[random(#char)],
        Color3.new(random(), random(), random()),
        key
    )
    wait()
    charChange:FireServer(
        "Material",
        char[random(#char)],
        mats[random(#mats)],
        key
    )
end
------------------------------------------------------------------
local w = library:CreateWindow('Furana GUI')
w:Section('Character')
w:Dropdown(
  "select character",
    {
        location = _G,
        flag = "c",
        list = {
            'proto',
            'fox',
            'wolf',
            'fennec',
            'door',
            'ball',
            'wormie',
            'mini',
        }
    },
    function()
        warn(_G.c)
    end
)
w:Dropdown(
    "select material",
    {
        location = _G,
        flag = 'm',
        list = {
            'plastic',
            'wood',
			'planks',
			'slate',
			'concreate',
			'metal',
			'rust',
			'diamond plate',
			'foil',
			'grass',
			'ice',
			'brick',
			'fabric',
			'granite',
			'marble',
			'pebble',
			'cobblestone',
			'smooth plastic',
			--[[
				'neon',
				'glass',
				'forcefield',
			]]--gamepass 
        }
    },
    function()
        warn(_G.m)
    end
)

local c = w:Toggle('random color', {flag = "toggle"}, function()
    while w.flags.toggle do
        if _G.c == 'door' then
            randomColor(door)
        elseif _G.c == 'ball' then
            randomColor(ball)
        elseif _G.c == 'proto' then
            randomColor(proto)
        elseif _G.c == 'wormie' then
            randomColor(worm)
        elseif _G.c == 'mini' then
            randomColor(miniworm)
        elseif _G.c == 'fox' then
            randomColor(fox)
        elseif _G.c == 'fennec' then
            randomColor(fennec)
        end
    end
end)

local rm = w:Toggle('random material', {flag = "toggle2"}, function()
    while w.flags.toggle2 do
        if _G.c == 'door' then
            randomMaterial(door, mats[random(#mats)])
        elseif _G.c == 'ball' then
            randomMaterial(ball, mats[random(#mats)])
        elseif _G.c == 'proto' then
            randomMaterial(proto, mats[random(#mats)])
        elseif _G.c == 'wormie' then
            randomMaterial(worm, mats[random(#mats)])
        elseif _G.c == 'mini' then
            randomMaterial(miniworm, mats[random(#mats)])
        elseif _G.c == 'fox' then
            randomMaterial(fox, mats[random(#mats)])
        elseif _G.c == 'fennec' then
            randomMaterial(fennec, mats[random(#mats)])
        end
    end
end)

local ra = w:Toggle('random all', {flag = "toggle3"}, function()
    while w.flags.toggle3 do
        if _G.c == 'door' then
            randomAll(door, mats[random(#mats)])
        elseif _G.c == 'ball' then
            randomAll(ball, mats[random(#mats)])
        elseif _G.c == 'proto' then
            randomAll(proto, mats[random(#mats)])
        elseif _G.c == 'wormie' then
            randomAll(worm, mats[random(#mats)])
        elseif _G.c == 'mini' then
            randomAll(miniworm, mats[random(#mats)])
        elseif _G.c == 'fox' then
            randomAll(fox, mats[random(#mats)])
        elseif _G.c == 'fennec' then
            randomAll(fennec, mats[random(#mats)])
        end
    end

end)

local b2 = w:Button('material', function()
    if _G.m == 'plastic' then
        if _G.c == 'door' then
            materialChange(door, 1)
        elseif _G.c == 'ball' then
            materialChange(ball, 1)
        elseif _G.c == 'proto' then
            materialChange(proto, 1)
        elseif _G.c == 'wormie' then
            materialChange(worm, 1)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 1)
        elseif _G.c == 'fox' then
            materialChange(fox, 1)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 1)
        end
    elseif _G.m == 'wood' then
        if _G.c == 'door' then
            materialChange(door, 2)
        elseif _G.c == 'ball' then
            materialChange(ball, 2)
        elseif _G.c == 'proto' then
            materialChange(proto, 2)
        elseif _G.c == 'wormie' then
            materialChange(worm, 2)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 2)
        elseif _G.c == 'fox' then
            materialChange(fox, 2)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 2)
        end
    elseif _G.m == 'planks' then
        if _G.c == 'door' then
            materialChange(door, 3)
        elseif _G.c == 'ball' then
            materialChange(ball, 3)
        elseif _G.c == 'proto' then
            materialChange(proto, 3)
        elseif _G.c == 'wormie' then
            materialChange(worm, 3)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 3)
        elseif _G.c == 'fox' then
            materialChange(fox, 3)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 3)
        end
    elseif _G.m == 'slate' then
        if _G.c == 'door' then
            materialChange(door, 4)
        elseif _G.c == 'ball' then
            materialChange(ball, 4)
        elseif _G.c == 'proto' then
            materialChange(proto, 4)
        elseif _G.c == 'wormie' then
            materialChange(worm, 4)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 4)
        elseif _G.c == 'fox' then
            materialChange(fox, 4)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 4)
        end
    elseif _G.m == 'concreate' then
        if _G.c == 'door' then
            materialChange(door, 5)
        elseif _G.c == 'ball' then
            materialChange(ball, 5)
        elseif _G.c == 'proto' then
            materialChange(proto, 5)
        elseif _G.c == 'wormie' then
            materialChange(worm, 5)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 5)
        elseif _G.c == 'fox' then
            materialChange(fox, 5)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 5)
        end
    elseif _G.m == 'metal' then
        if _G.c == 'door' then
            materialChange(door, 6)
        elseif _G.c == 'ball' then
            materialChange(ball, 6)
        elseif _G.c == 'proto' then
            materialChange(proto, 6)
        elseif _G.c == 'wormie' then
            materialChange(worm, 6)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 6)
        elseif _G.c == 'fox' then
            materialChange(fox, 6)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 6)
        end
    elseif _G.m == 'rust' then
        if _G.c == 'door' then
            materialChange(door, 7)
        elseif _G.c == 'ball' then
            materialChange(ball, 7)
        elseif _G.c == 'proto' then
            materialChange(proto, 7)
        elseif _G.c == 'wormie' then
            materialChange(worm, 7)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 7)
        elseif _G.c == 'fox' then
            materialChange(fox, 7)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 7)
        end
    elseif _G.m == 'diamond plate' then
        if _G.c == 'door' then
            materialChange(door, 8)
        elseif _G.c == 'ball' then
            materialChange(ball, 8)
        elseif _G.c == 'proto' then
            materialChange(proto, 8)
        elseif _G.c == 'wormie' then
            materialChange(worm, 8)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 8)
        elseif _G.c == 'fox' then
            materialChange(fox, 8)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 8)
        end
    elseif _G.m == 'foil' then
        if _G.c == 'door' then
            materialChange(door, 9)
        elseif _G.c == 'ball' then
            materialChange(ball, 9)
        elseif _G.c == 'proto' then
            materialChange(proto, 9)
        elseif _G.c == 'wormie' then
            materialChange(worm, 9)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 9)
        elseif _G.c == 'fox' then
            materialChange(fox, 9)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 9)
        end
    elseif _G.m == 'grass' then
        if _G.c == 'door' then
            materialChange(door, 10)
        elseif _G.c == 'ball' then
            materialChange(ball, 10)
        elseif _G.c == 'proto' then
            materialChange(proto, 10)
        elseif _G.c == 'wormie' then
            materialChange(worm, 10)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 10)
        elseif _G.c == 'fox' then
            materialChange(fox, 10)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 10)
        end
    elseif _G.m == 'ice' then
        if _G.c == 'door' then
            materialChange(door, 11)
        elseif _G.c == 'ball' then
            materialChange(ball, 11)
        elseif _G.c == 'proto' then
            materialChange(proto, 11)
        elseif _G.c == 'wormie' then
            materialChange(worm, 11)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 11)
        elseif _G.c == 'fox' then
            materialChange(fox, 11)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 11)
        end
    elseif _G.m == 'granite' then
        if _G.c == 'door' then
            materialChange(door, 12)
        elseif _G.c == 'ball' then
            materialChange(ball, 12)
        elseif _G.c == 'proto' then
            materialChange(proto, 12)
        elseif _G.c == 'wormie' then
            materialChange(worm, 12)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 12)
        elseif _G.c == 'fox' then
            materialChange(fox, 12)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 12)
        end
    elseif _G.m == 'marble' then
        if _G.c == 'door' then
            materialChange(door, 13)
        elseif _G.c == 'ball' then
            materialChange(ball, 13)
        elseif _G.c == 'proto' then
            materialChange(proto, 13)
        elseif _G.c == 'wormie' then
            materialChange(worm, 13)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 13)
        elseif _G.c == 'fox' then
            materialChange(fox, 13)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 13)
        end
    elseif _G.m == 'pebble' then
        if _G.c == 'door' then
            materialChange(door, 14)
        elseif _G.c == 'ball' then
            materialChange(ball, 14)
        elseif _G.c == 'proto' then
            materialChange(proto, 14)
        elseif _G.c == 'wormie' then
            materialChange(worm, 14)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 14)
        elseif _G.c == 'fox' then
            materialChange(fox, 14)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 14)
        end
    elseif _G.m == 'cobblestone' then
        if _G.c == 'door' then
            materialChange(door, 15)
        elseif _G.c == 'ball' then
            materialChange(ball, 15)
        elseif _G.c == 'proto' then
            materialChange(proto, 15)
        elseif _G.c == 'wormie' then
            materialChange(worm, 15)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 15)
        elseif _G.c == 'fox' then
            materialChange(fox, 15)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 15)
        end
    elseif _G.m == 'smooth plastic' then
        if _G.c == 'door' then
            materialChange(door, 16)
        elseif _G.c == 'ball' then
            materialChange(ball, 16)
        elseif _G.c == 'proto' then
            materialChange(proto, 16)
        elseif _G.c == 'wormie' then
            materialChange(worm, 16)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 16)
        elseif _G.c == 'fox' then
            materialChange(fox, 16)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 16)
        end
    --[[
    elseif _G.m == 'neon' then
        if _G.c == 'door' then
            materialChange(door, 2)
        elseif _G.c == 'ball' then
            materialChange(ball, 2)
        elseif _G.c == 'proto' then
            materialChange(proto, 2)
        elseif _G.c == 'wormie' then
            materialChange(worm, 2)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 2)
        elseif _G.c == 'fox' then
            materialChange(fox, 2)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 2)
        end
    elseif _G.m == 'glass' then
        if _G.c == 'door' then
            materialChange(door, 2)
        elseif _G.c == 'ball' then
            materialChange(ball, 2)
        elseif _G.c == 'proto' then
            materialChange(proto, 2)
        elseif _G.c == 'wormie' then
            materialChange(worm, 2)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 2)
        elseif _G.c == 'fox' then
            materialChange(fox, 2)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 2)
        end
    elseif _G.m == 'forcefield' then
        if _G.c == 'door' then
            materialChange(door, 2)
        elseif _G.c == 'ball' then
            materialChange(ball, 2)
        elseif _G.c == 'proto' then
            materialChange(proto, 2)
        elseif _G.c == 'wormie' then
            materialChange(worm, 2)
        elseif _G.c == 'mini' then
            materialChange(miniworm, 2)
        elseif _G.c == 'fox' then
            materialChange(fox, 2)
        elseif _G.c == 'fennec' then
            materialChange(fennec, 2)
        end
    ]]--gamepass materials
end
end)

w:Section('Name and Desc')
local name = w:Box('Name', {
    flag = "Name";
}, function(new, old, enter)
    print(new, old, enter)
    nameChange:FireServer(
        "name",
        new,
        key
    )
end)
local name = w:Box('Description', {
    flag = "Desc";
}, function(new, old, enter)
    print(new, old, enter)
    nameChange:FireServer(
        "desc",
        new,
        key
    )
end)

local C = library:CreateWindow('Set color')
local red = C:Box('red', {
    location = _G;
    flag = "R";
    type = 'number';
 }, function(new, old, enter)
    print(new, old, enter)
end)
local blue = C:Box('blue', {
    location = _G;
    flag = "B";
    type = 'number';
 }, function(new, old, enter)
    print(new, old, enter)
end)
local green = C:Box('green', {
    location = _G;
    flag = "G";
    type = 'number';
 }, function(new, old, enter)
    print(new, old, enter)
end)

local change = C:Button('change color', function()
    if _G.c == 'door' then
        colorChange(door, _G.R, _G.G, _G.B)
    elseif _G.c == 'ball' then
        colorChange(ball, _G.R, _G.G, _G.B)
    elseif _G.c == 'proto' then
        colorChange(proto, _G.R, _G.G, _G.B)
    elseif _G.c == 'wormie' then
        colorChange(worm, _G.R, _G.G, _G.B)
    elseif _G.c == 'mini' then
        colorChange(miniworm, _G.R, _G.G, _G.B)
    elseif _G.c == 'fox' then
        colorChange(fox, _G.R, _G.G, _G.B)
    elseif _G.c == 'fennec' then
        colorChange(fennec, _G.R, _G.G, _G.B)
    end
end)