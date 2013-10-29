#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり、そのような数字の中では最小の値である。
#では、1 から 20 までの整数全てで割り切れる数字の中で最小の値はいくらになるか。

a=380
b=0
while(b==0)
  for i in 2..20
    if a%i!=0 then break end
    if i==20 then 
      b=1
    end
  end
  a=a+380
end
print a,"\n"
=begin
require 'prime'

factories_count = {}
Prime.each(20) {|i| factories_count[i] = 0}
(2..20).each do |n|
  factories_count.each_key do |k|  # 素因数分解
    break if n < k
    t = n # copy
    count = 0
    while t >= k do
      count += 1 if t % k == 0
      t /= k
    end
    factories_count[k] = count if factories_count[k] < count
  end
end
puts factories_count.map { |k, v| k.to_i * v }.inject(1) { |product, i| product * i }
=end