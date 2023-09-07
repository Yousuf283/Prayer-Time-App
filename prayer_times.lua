local os = require('os')
local https = require("https")
local json = require('json')

local prayer_times = {}

local API_KEY = 'API KEY GOES HERE'

prayer_times.get_today = function()
  local link = 'https://www.londonprayertimes.com/api/times/?format=json&date='..tostring(os.date('%Y')..'-'..os.date('%m')..'-'..os.date('%d'))..'&key='..API_KEY..'&24hours=true'
  local code, body, headers = https.request(link)
  local contents = body
  local lines = {}
  for line in contents:gmatch("[^\r\n]+") do
    table.insert(lines, line)
  end

  times_list = json.decode(lines[2])

  for key, value in pairs(times_list) do
    print(key .. " = " .. value)
  end

  return times_list
end

return prayer_times
