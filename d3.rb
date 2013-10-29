#!/usr/bin/env ruby
# -*- coding: utf-8 -*-


#13195 の素因数は 5、7、13、29 である。
#600851475143 の素因数のうち最大のものを求めよ。
i=2
ans=1
number=600851475143
while 1
  if number%i==0 then
    ans=i
    number=number/i
  else 
    i=i+1 
  end
  if number==1 then 
    break 
  end
end
print ans,"\n"
