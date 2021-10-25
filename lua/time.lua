--[[
time_translator: 将 `time` 翻译为当前时间
--]]

local function translator(input, seg)
   if (input == "time" or input == "sj" or input == "shijian") then
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), "[时间]"))
      yield(Candidate("time", seg.start, seg._end, os.date("%H时%M分%S秒"), "[时间]"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), "[时间]"))
   end
end

return translator
