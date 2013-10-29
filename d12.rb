#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
三角数の数列は自然数の和で表わされ、7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である。 三角数の最初の10項は

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
となる。

最初の7項について、その約数を列挙すると、以下のとおり。

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
これから、7番目の三角数である28は、6個以上の約数をもつ最初の三角数であることが分る。

では、501 個以上の約数をもつ最初の三角数はいくらか。
=end

=begin
#約数を求める関数
def yakusuu(i)
  count=2
  (2..i/2).each do |a|
    if i%a==0 then count+=1 end
    if count>500 then return true end
  end
  return false
end

number=0
(1..100000000).each do |a|
  number+=a
  if yakusuu(number) then print number,"\n";break end
end
=end

def count_divisor(n)
  count = 2
  count += 1 if Math::sqrt(n)**2 == n
  (2..(Math::sqrt(n)-1).ceil).each do |i|
    count += 2 if n % i == 0
  end
  count
end

triangular = 0
1.upto(0/(0.0)) do |count|
  triangular += count
  break if count_divisor(triangular) > 500
end

puts triangular