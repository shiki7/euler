#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#2 × 2 のマス目の左上からスタートした場合、引き返しなしで右下にいくルートは 6 つある。
#では、20 × 20 のマス目ではいくつのルートがあるか。


#アルゴリズム 
#f(x)=x!   
# axbのマスならば
# f(a+b)/f(a)/f(b)通り

def kaijo(a)
  if a==1 then return 1 end
  return a*kaijo(a-1)
end

print kaijo(40)/kaijo(20)/kaijo(20),"\n"