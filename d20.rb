#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
100!の各桁の数字の合計を求めよ。
=end

=begin
sum=1
(1..100).each{|a|
  sum=sum*a
}
=end

str=((1..100).inject(1){|sum,i| sum*i}.to_s).split(//)
#str=(sum.to_s).split("")
sum=0
for i in 0..str.length 
  sum+=str[i].to_i	
end
puts sum


