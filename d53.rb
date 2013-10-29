#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
12345から3つ選ぶ選び方は10通りである.

123, 124, 125, 134, 135, 145, 234, 235, 245, 345.
組み合わせでは, 以下の記法を用いてこのことを表す: 5C3 = 10.

一般に, r ≤ n についてnCr = n!/(r!(n-r)!) である. ここで, n! = n×(n−1)×...×3×2×1, 0! = 1と階乗を定義する.

n = 23になるまで, これらの値が100万を超えることはない: 23C10 = 1144066.

1 ≤ n ≤ 100について, 100万を超えるnCrは何通りか?
=end
def kaijo(n)
  return 1 if n==1
  return n*kaijo(n-1)
end
count=0
(1..100).each{|n|
  (1..n).each{|r|
    break if n-r==0
    count+=1 if kaijo(n)/(kaijo(r)*kaijo(n-r))>10**6
  }
}
puts count
