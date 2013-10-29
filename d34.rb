#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
145は面白い数である. 1! + 4! + 5! = 1 + 24 + 120 = 145となる.

各桁の数の階乗の和が自分自身と一致するような数の総和を求めよ.

注: 1! = 1 と 2! = 2 は総和に含めてはならない.
=end

sum=0
(3..100000).each{|i|
  a=0
  s=i.to_s.split(//)
  (0..s.length-1).each{|j|
    b=1
    (1..s[j].to_i).each{|k|
	  b*=k
    }
    a+=b
  }
  sum+=i if a==i
}
puts sum