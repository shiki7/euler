#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
驚くべきことに, 各桁を4乗した数の和が元の数と一致する数は3つしかない.

1634 = 1^4 + 6^4 + 3^4 + 4^4
8208 = 8^4 + 2^4 + 0^4 + 8^4
9474 = 9^4 + 4^4 + 7^4 + 4^4
ただし, 1=1^4は含まないものとする. この数たちの和は 1634 + 8208 + 9474 = 19316 である.

各桁を5乗した数の和が元の数と一致するような数の総和を求めよ.
=end
array=[]
answer=0
(2..10**6).each do |i|
  sum=0
  array=i.to_s.split(//)
  (0..array.length).each do |j|
    sum+=array[j].to_i**5
  end
  answer+=sum if sum==i
end
puts answer