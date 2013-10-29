#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
d(n)をnの真の約数の和と定義する。（真の約数とはn以外の約数のことである。）
もし、d(a) = b かつ d(b) = a （a ≠ b）を満たすとき、aとbは友愛数（親和数）であるという。

例えば、220の約数は1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110なのでd(220) = 284である。
また、284の約数は1, 2, 4, 71, 142なのでd(284) = 220である。

それでは10000未満の友愛数の合計を求めよ。
=end

def yakusu_sum(a)
  sum=1
  for i in 2..a-1
    if a%i==0 then
      sum+=i
    end
  end
  return sum
end
sum=0
(2..10000).each{|i|
  s=yakusu_sum(i)
  if i<s&&i==yakusu_sum(s) then 
    sum+=i+s
  end
}
puts sum