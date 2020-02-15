--https://www.roblox.com/games/2849947369
local proto = {"Tail1","Tail2","Tail3","Tail4","Tail5","Tail6","Chest","Head","Head Fluff","Head Plate Fins","Left arm","Left ear","Left ear inside","Left shoulder","Leftthigh","Neck Fluff","Right ear","Right ear inside","Rightthigh","Torso","Visor lining","claws","feet claws","foot pads","left finger 1","left finger 2","left finger 3","left finger 4","left finger 5","left hand","left toe 1","left toe 2","left toe 3","left toe 4","left wrist","leftlegmiddle","leftlowerleg","lefttupperleg","leftupperleg","lower torso to tail plate (outer)","mid secton","outer arm joint plates","outer head plate","outer thigh plates","paw pads","pawpads","right finger1","right finger2","right finger 3","right finger 4","right finger 5","right paw","right toe 1","right toe 2","right toe 3","right toe 4","right wrist","rightlegmiddle","rightlowerleg","rightupperleg","secondary left lower leg","secondary right lower leg","visor brows","visor eyes","visor mouth","visor nose"}
local worm = {"4","5","6","7","8","9","10","11","12","13","14","15","16"}
local miniworm = {"4","5","6","7","8","9","10"}
local fox = {"Back Head Fluff","Back Neck Fluff","Chest fluff","Head","Jaw","L ear","L earinside","Left arm","Left shoulder","LeftAnkle","LeftFoot","LeftThigh","LowerTorso","Lowerteeth","Neck","R ear","R earinside","RightAnkle","RightFoot","RightThigh","Tail1","Tail2","Tail3","Tongue1","Tongue2","Tongue3","Torso","UpperLegLeft","UpperLegRight","Upperteeth","Whiskers","boop nose","claw","claws","eyeball shine","eyeblackslits","eyebrow pad right","eyebrow1","eyelid","eyeliner","eyewhite","fox mark","front head fluff","frontal Lower Torso","frontal torso","headfluff","inner ear fluff left","inner ear fluff right","left eyebrow","left finger 1","left finger 2","left finger 4","left finger 5","left hand","left wrist","mouthlining","muzzle spots","nose to mouth","paw pads","pawpads","pupils","retna LEFT","retna RIGHT","retna shades","right arm","right eyebrow","right finger 3","right finger 4","right finger 5","right finger1","right finger2","right paw","right shoulder","right wrist","secondary neck","undertail 1","undertail 2","undertail 3"}
local fennec = {"Back Head Fluff","neck fluff","Chest fluff","Head","Jaw","L ear","Inner Ear Left","Left ear tip","Left ear tuft","Left arm","Left shoulder","LeftAnkle","LeftFoot","LeftThigh","LowerTorso","Lowerteeth","Neck","R ear","Inner Ear Right","Right ear tip","Right ear tuft","RightAnkle","RightFoot","RightThigh","Tail1","Tail2","Tail3","Tongue1","Tongue2","Tongue3","Torso","UpperLegLeft","UpperLegRight","Upperteeth","Whiskers","BOOP SNOOT","claw","claws","eyeshine","eyeblackslits","Eyelid","Eye liners","Eye whites","fox mark","Front head fluff","frontal Lower Torso","frontal torso","headfluff","left eyebrow","left finger 1","left finger 2","left finger 4","left finger 5","left hand","left wrist","mouthlining","muzzle spots","nose to mouth","paw pads","pawpads","pupils","Retnas","right arm","right eyebrow","right finger 3","right finger 4","right finger 5","right finger1","right finger2","right paw","right shoulder","right wrist","secondary neck","undertail 1","undertail 2","undertail 3"}
local wolf = {"ChestFluff","ChestFur","EYEBALL shine (left)","EyebrowLeft","EyebrowRight","Eyelidleft","Eyelidright","Head","Jaw","LeftAnkle","LeftEar","LeftFoot","LeftPaw","LeftThigh","LowerArmLeft","LowerArmRight","LowerTorso","Neck","Nose","RightAnkle","RightEar","RightFoot","RightPaw","RightThigh","Tail1","Tail2","Tail3","Torso","UpperArmLeft","UpperArmRight","UpperLegLeft","UpperEggRight","claw","eyeball shine (right)","leftindideear","leftwrist","ourter pupil(right)","outer eye (left)","outer eye (right)","outer pupul (left)","pupil(left)","pupil(right)","rightinsideear","rightwrist","undertail1","undertail2","undertail3"}
local ball = {"Ball"}
local door = {"a door pannel thing","a knob","door border"}
local charChange = game.ReplicatedStorage.remotes.edit --character change remote
local nameChange = game.ReplicatedStorage.remotes.tag --name change remote
local random = math.random
local key = "bamboozle863489984fOwOmaliceOwo" --if current key doesn't work, find it by using a remote spy.


_G.run = true --set to true for it to run, false to stop

while _G.run do
	wait()
    change:FireServer(
        "Color",
        parts[random(#parts)], --get a random part
        Color3.new(random(), random(), random()), --set part to a random color(0-1)
        key
    )
end
--[[
nameChange:FireServer(
    "name", 
    "Tiny", 
    key
)
]]-- name change, first arg can either be "name" or "desc". second arg is a string for either one