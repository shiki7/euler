#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり、6番目の素数は 13 である。
#10001 番目の素数を求めよ。
number=2
sosuu=0
while 1
  count=0
  for i in 2..number
    if number%i==0 then
      count+=1
    end
    if count>1 then break end
  end
  if count==1 then sosuu+=1 end
  if sosuu==10001 then 
    print "10001番目の素数は",number,"です。"
    break
  end 
  number+=1
end