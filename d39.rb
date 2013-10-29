#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
辺の長さが{a,b,c}と整数の3つ組である直角三角形を考え, その周囲の長さをpとする. p = 120のときには3つの解が存在する:

{20,48,52}, {24,45,51}, {30,40,50}
p ≦ 1000 で解の数が最大になる p を求めよ.
=end
max_number=0
max_count=0
(100..1000).each{|p|
  count=0
  (1..p-2).each{|i|
	  (i..p-2).each{|j|
		k=p-i-j
		break if k<j||k<i
		count+=1 if i**2+j**2==k**2
	  }
  }
  if count>max_count then max_count=count; max_number=p end
}
puts max_number