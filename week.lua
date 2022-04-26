-----------------------------------------------------------------------------------------------------------------------
--星期
function translator(input, seg)
  if (input == "week") then
    local day_w=os.date("%w")
    local day_w1=""
    local day_w2=""
    local day_w3=""
    local day_w4=""
    local day_w5=""
    local day_w6=""
    if day_w=="0" then 
      day_w1="星期天/日" 
      day_w2="Sunday" 
      day_w3="礼拜天/日" 
      day_w4="일요일"
      day_w5="日曜日"
      day_w6="Chủ Nhật"
    end
    if day_w=="1" then
      day_w1="星期一" 
      day_w2="Monday" 
      day_w3="礼拜一" 
      day_w4="월요일"
      day_w5="月曜日"
      day_w6="Thứ Hai"
    end
    if day_w=="2" then
      day_w1="星期二" 
      day_w2="Tuesday" 
      day_w3="礼拜二" 
      day_w4="화요일"
      day_w5="火曜日"
      day_w6="Thứ Ba"
    end
    if day_w=="3" then 
      day_w1="星期三" 
      day_w2="Wednesday" 
      day_w3="礼拜三" 
      day_w4="수요일"
      day_w5="水曜日"
      day_w6="Thứ Tư"
    end
    if day_w=="4" then 
      day_w1="星期四" 
      day_w2="Thursday" 
      day_w3="礼拜四" 
      day_w4="목요일"
      day_w5="木曜日"
      day_w6="Thứ Năm"
    end
    if day_w=="5" then 
      day_w1="星期五"  
      day_w2="Friday" 
      day_w3="礼拜五" 
      day_w4="금요일"
      day_w5="金曜日"
      day_w6="Thứ Sáu"
    end
    if day_w=="6" then 
      day_w1="星期六" 
      day_w2="礼拜六" 
      day_w3="Saturday" 
      day_w4="토요일"
      day_w5="土曜日"
      day_w6="Thứ Bảy"
    end
    yield(Candidate("date", seg.start, seg._end, day_w1, " "))
    yield(Candidate("date", seg.start, seg._end, day_w2, " "))
    yield(Candidate("date", seg.start, seg._end, day_w3, " "))
    yield(Candidate("date", seg.start, seg._end, day_w4, " "))
    yield(Candidate("date", seg.start, seg._end, day_w5, " "))
    yield(Candidate("date", seg.start, seg._end, day_w6, " "))
    --yield(Candidate("week", seg.start, seg._end, os.date("%w"),""))
  end
end


return translator
