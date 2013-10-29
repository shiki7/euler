#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
オイラーは以下の二次式を考案している:
n^2 + n + 41.

この式は, nを0から39までの連続する整数としたときに40個の素数を生成する. しかし, n = 40のとき40^2 + 40 + 41 = 40(40 + 1) + 41となり41で割り切れる. また, n = 41のときは41^2 + 41 + 41であり明らかに41で割り切れる.

計算機を用いて, 二次式 n2 - 79n + 1601という式が発見できた. これはn = 0 から 79 の連続する整数で素数を生成する. 係数の積は, -79 × 1601 で -126479である.

さて, |a| < 1000, |b| < 1000 として以下の二次式を考える (ここで|a|は絶対値):
n^2 + an + b 

n=0から始めて連続する整数で素数を生成したときに最長の長さとなる上の二次式の, 係数a, bの積を答えよ.
=end
 
require 'Prime'

def f(n,a,b)
  return n*n+a*n+b
end
max=0
max_ab=0
Prime.each(999).each do |b|
  (-999..999).each do |a|
    count=0
    (1..1000).each do |n|
      if f(n,a,b).prime? then
        count+=1
      else
        if count>max then
          max=count
          max_ab=a*b
        end 
        break; 
      end
    end
  end
end 
puts max_ab