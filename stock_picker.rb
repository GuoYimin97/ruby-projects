def stock_picker(days)
  daytobuy = nil
  daytosell = nil
  maxgain = 0

  days.each_with_index do |day, index|
    for i in (index+1)..(days.length-1)
      if (days[i] - day) > maxgain
        maxgain = days[i] - day
        daytobuy = index
        daytosell = i
      end
    end
  end

  return [daytobuy, daytosell]
end

stock_picker([17,3,6,9,15,8,6,1,-50])