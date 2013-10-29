#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
正の整数を順に連結して得られる以下の10進の無理数を考える:

0.123456789101112131415161718192021...
小数第12位は1である.

dnで小数第n位の数を表す. d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 を求めよ.
=end

s=[]
(1..10**6).each{|i|
  s<<i  
}
t=s.join.split(//)
puts (1..6).inject(1){|sum, i| sum*t[10**i-1].to_i}