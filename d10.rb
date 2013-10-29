#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#10以下の素数の和は2 + 3 + 5 + 7 = 17である.
#200万以下の全ての素数の和を計算しなさい.
number=2
sum=0

def sosuu_hantei(number)
  count=0
  for i in 2..Math.sqrt(number).floor
    if number%i==0 then
	  return false
    end
  end
  return true
end
   
for i in number..2000000
  if sosuu_hantei(i) then
    sum+=i
  end
end
print "合計＝",sum,"\n"