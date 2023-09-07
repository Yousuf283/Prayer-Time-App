local prayer_times = require('prayer_times')

local font = love.graphics.newFont('MYRIADPRO-REGULAR.otf', 30)

local red = {149/255, 17/255, 45/255, 1}
local black = {0,0,0,1}
local white = {1,1,1,1}

local w,h = love.graphics.getDimensions()
local offset = (0.1*h)/2
local seperation = h/5

local canvas_h = h-(0.1*h)
local times = prayer_times.get_today()
local title = {'Prayer Times', w/2 - font:getWidth('Prayer Times')/2, 0.1*h/2 - font:getHeight('Prayer Times')/2}
local fajr = {'Fajr '..times['fajr'], w/2 - font:getWidth('Fajr '..times['fajr'])/2, (seperation-font:getHeight('Fajr '..times['fajr'])/2)-offset}
local zuhr = {'Zuhr '..times['dhuhr'], w/2 - font:getWidth('Zuhr '..times['dhuhr'])/2, (2*seperation-font:getHeight('Zuhr '..times['dhuhr'])/2)-offset}
local asr = {'Asr '..times['asr'], w/2 - font:getWidth('Asr '..times['asr'])/2, (3*seperation-font:getHeight('Asr '..times['asr'])/2)-offset}
local maghrib = {'Maghrib '..times['magrib'], w/2 - font:getWidth('Maghrib '..times['magrib'])/2, (4*seperation-font:getHeight('Maghrib '..times['magrib'])/2)-offset}
local isha = {'Isha '..times['isha'], w/2 - font:getWidth('Isha '..times['isha'])/2, (5*seperation-font:getHeight('Isha '..times['isha'])/2)-offset}

love.draw = function()
	love.graphics.setColor(red)
	love.graphics.rectangle('fill', 0, 0, w, 0.1*h)
	love.graphics.setColor(white)
	love.graphics.setFont(font)
	love.graphics.print(unpack(title))
	love.graphics.print(unpack(fajr))
	love.graphics.print(unpack(zuhr))
	love.graphics.print(unpack(asr))
	love.graphics.print(unpack(maghrib))
	love.graphics.print(unpack(isha))
	love.graphics.setColor(black)
end

love.keypressed = function(k)
	if k == 'escape' then
		love.event.quit()
	end
end

--[[
sunrise = 06:17
isha_jamat = 19:45
dhuhr = 12:15
date = 2023-03-13
dhuhr_jamat = 12:45
asr_2 = 16:06
isha = 19:25
asr_jamat = 16:30
city = london
magrib = 18:04
fajr = 04:40
magrib_jamat = 18:11
fajr_jamat = 05:00
asr = 15:18
]]
