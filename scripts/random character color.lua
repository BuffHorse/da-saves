--https://www.roblox.com/games/2849947369
local parts = {
    "Tail1",
    "Tail2",
    "Tail3",
    "Tail4",
    "Tail5",
    "Tail6",
    "Chest",
    "Head",
    "Head Fluff",
    "Head Plate Fins",
    "Left arm",
    "Left ear",
    "Left ear inside",
    "Left shoulder",
    "Leftthigh",
    "Neck Fluff",
    "Right ear",
    "Right ear inside",
    "Rightthigh",
    "Torso",
    "Visor lining",
    "claws",
    "feet claws",
    "foot pads",
    "left finger 1",
    "left finger 2",
    "left finger 3",
    "left finger 4",
    "left finger 5",
    "left hand",
    "left toe 1",
    "left toe 2",
    "left toe 3",
    "left toe 4",
    "left wrist",
    "leftlegmiddle",
    "leftlowerleg",
    "lefttupperleg",
    "leftupperleg",
    "lower torso to tail plate (outer)",
    "mid secton",
    "outer arm joint plates",
    "outer head plate",
    "outer thigh plates",
    "paw pads",
    "pawpads",
    "right finger1",
    "right finger2",
    "right finger 3",
    "right finger 4",
    "right finger 5",
    "right paw",
    "right toe 1",
    "right toe 2",
    "right toe 3",
    "right toe 4",
    "right wrist",
    "rightlegmiddle",
    "rightlowerleg",
    "rightupperleg",
    'secondary left lower leg',
    'secondary right lower leg',
    'visor brows',
    'visor eyes',
    'visor mouth',
    'visor nose'
} --parts currently for proto, dont expect them to work with other characters
local charChange = game.ReplicatedStorage.remotes.edit --character change remote
local nameChange = game.ReplicatedStorage.remotes.tag --name change remote
local random = math.random
local key = "bamboozle863489984fOwOmaliceOwo" --if current key doesn't work, find it by using a remote spy.
_G.run = true
--[[
nameChange:FireServer(
    "name", 
    "Tiny", 
    key
)
]]-- name change, first arg can either be "name" or "desc". second arg is a string for either one
while _G.run do
	wait()
    change:FireServer(
        "Color",
        parts[random(#parts)], --get a random part
        Color3.new(random(), random(), random()), --set part to a random color(0-1)
        key
    )
end
