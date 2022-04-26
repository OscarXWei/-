﻿--时间
local function translator(input, seg)
   if (input == "time") then
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), " "))
      yield(Candidate("time", seg.start, seg._end, os.date("%H点%M分"), " "))
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), " "))
      yield(Candidate("time", seg.start, seg._end, os.date("%H点%M分%S秒"), " "))
   end
end

return translator
