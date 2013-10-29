#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#2の15乗 = 32768 であり、これの各数字の合計は 3 + 2 + 7 + 6 + 8 = 26 となる。

#同様にして、2の1000乗 の各数字の合計を求めよ。


def kaijo(n)
  sum=1
  (1..n).each do |a|
    sum*=2
  end
  return sum
end

sum=0

b=(kaijo(1000).to_s).split(//)

(0..b.size).each do |i|
  sum+=b[i].to_i
end
print sum,"\n"