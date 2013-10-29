#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#最初の10個の自然数について、その和の二乗と、二乗数の和は以下の通り。
#1² + 2² + ... + 10² = 385
#(1 + 2 + ... + 10)² = 3025
#これらの数の差は 3025 - 385 = 2640 となる。
#同様にして、最初の100個の自然数について和の二乗と二乗の和の差を求めよ。

def pow(a)
  sum=0
  for i in 1..a
    sum+=i*i
  end
  return sum
end
def pow2(a)
  sum=0
  for i in 1..a
    sum+=i
  end
  return sum*sum
end
print pow2(100)-pow(100),"\n"
