local function translator(input, seg)
   --if (input == "allt"or input == "time") then
   if (input == "alltime") then
--------------------------------------------------------------------------------------------------------------------
--星期      day_w1="星期日"  day_w2="Sunday" day_w3="Sun." 
    local day_w=os.date("%w")
    local day_w1=""
    local day_w2=""
    local day_w3=""
    local day_w4=""
    local day_w5=""
    local day_w6=""
    if day_w=="0" then 
      day_w1="星期日" 
      day_w2="Sunday" 
      day_w3="Sun." 
      day_w4="일요일"
      day_w5="日曜日"
      day_w6="Chủ Nhật"
    end
    if day_w=="1" then
      day_w1="星期一" 
      day_w2="Monday" 
      day_w3="Mon." 
      day_w4="월요일"
      day_w5="月曜日"
      day_w6="Thứ Hai"
    end
    if day_w=="2" then
      day_w1="星期二" 
      day_w2="Tuesday" 
      day_w3="Tues." 
      day_w4="화요일"
      day_w5="火曜日"
      day_w6="Thứ Ba"
    end
    if day_w=="3" then 
      day_w1="星期三" 
      day_w2="Wednesday" 
      day_w3="Wed." 
      day_w4="수요일"
      day_w5="水曜日"
      day_w6="Thứ Tư"
    end
    if day_w=="4" then 
      day_w1="星期四" 
      day_w2="Thursday" 
      day_w3="Thur." 
      day_w4="목요일"
      day_w5="木曜日"
      day_w6="Thứ Năm"
    end
    if day_w=="5" then 
      day_w1="星期五"  
      day_w2="Friday" 
      day_w3="Fri." 
      day_w4="금요일"
      day_w5="金曜日"
      day_w6="Thứ Sáu"
    end
    if day_w=="6" then 
      day_w1="星期六" 
      day_w2="Saturday" 
      day_w3="Sat." 
      day_w4="토요일"
      day_w5="土曜日"
      day_w6="Thứ Bảy"
    end
--------------------------------------------------------------------------------------------------------------------
--普通日期1，类似2020年02月04日
date_0=os.date("%Y/%m/%d")
date_1=os.date("%Y-%m-%d")
date_y0=os.date("%Y") --取年
date_m0=os.date("%m") --取月
date_d0=os.date("%d") --取日

--去零日和月tostring(num_m1)   tostring(num_d1)
num_m=os.date("%m")+0
num_m1=math.modf(num_m)
num_d=os.date("%d")+0
num_d1=math.modf(num_d)

date_y2=os.date("%Y") --取年
date_m2=tostring(num_m1) --取月
date_d2=tostring(num_d1) --取日
date_2=os.date("%Y年")..tostring(num_m1).."月"..tostring(num_d1).."日"
------------------------------------------------------------------------------------------------------
--英文日期          date_m1="Jan." date_m2="January"       symbal
    local date_d=os.date("%d")
    local date_m=os.date("%m")
    local date_y=os.date("%Y")
    local date_m1=""
    local date_m2=""

    if date_m=="01" then 
       date_m1="Jan."
       date_m2="January"
    end
    if date_m=="02" then 
       date_m1="Feb."
       date_m2="February"
    end
    if date_m=="03" then 
       date_m1="Mar."
       date_m2="March"
    end
    if date_m=="04" then 
       date_m1="Apr."
       date_m2="April"
    end
    if date_m=="05" then 
       date_m1="May."
       date_m2="May"
    end
    if date_m=="06" then 
       date_m1="Jun."
       date_m2="June"
    end
    if date_m=="07" then 
       date_m1="Jul."
       date_m2="July"
    end
    if date_m=="08" then 
       date_m1="Aug."
       date_m2="August"
    end
    if date_m=="09" then 
       date_m1="Sept."
       date_m2="September"
    end
    if date_m=="10" then 
       date_m1="Oct."
       date_m2="October"
    end
    if date_m=="11" then 
       date_m1="Nov."
       date_m2="November"
    end
    if date_m=="12" then 
       date_m1="Dec."
       date_m2="December"
    end

     if date_d=="0" then 
       symbal="st" 
     elseif date_d=="1" then
       symbal="nd" 
     elseif date_d=="2" then 
       symbal="rd" 
     else
       symbal="th"
     end

date_4=date_m1..""..date_d..symbal..","..date_y
date_5=date_m2.." "..date_d..symbal..","..date_y
date_6=os.date("%d-%m-%Y")
----------------------------------------------------------------------------
--时间
date_t1=os.date("%H:%M")
date_t2=os.date("%H点%M分")
date_t3=os.date("%H:%M:%S")
date_t4=os.date("%H点%M分%S秒")
-----------------------------------------------------------------------
date1=day_w3.." "..date_m1.." "..date_d..symbal..", "..date_t3..", "..date_y
date2=date_1.." "..date_t3
date3=date_2.." "..day_w1.." "..date_t4
date4=day_w6.." "..date_6.." "..date_t3
date5=date_2.." "..day_w5.." "..date_t3
date11=os.date("%Y년")..tostring(num_m1).."월"..tostring(num_d1).."일".." "..day_w4.." "..date_t3

yield(Candidate("date", seg.start, seg._end, date3, " "))
yield(Candidate("date", seg.start, seg._end, date5, " "))
yield(Candidate("date", seg.start, seg._end, date11, " "))
yield(Candidate("date", seg.start, seg._end, date2, " "))
yield(Candidate("date", seg.start, seg._end, date1, " "))
yield(Candidate("date", seg.start, seg._end, date4, " "))


   end
end
--------------------------------------------------------------------------------------------------------------------
-- 将上述定义导出
return translator
