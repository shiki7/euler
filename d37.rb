#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'

=begin
3797は面白い性質を持っている. まずそれ自身が素数であり, 左から右に桁を除いたときに全て素数になっている (3797, 797, 97, 7). 同様に右から左に桁を除いたときも全て素数である (3797, 379, 37, 3).

右から切り詰めても左から切り詰めても素数になるような素数は11個しかない. 総和を求めよ.

注: 2, 3, 5, 7を切り詰め可能な素数とは考えない.
=end

start_time = Time.now
sum=0

Prime.each(10**6){|i|
  s=i.to_s.split(//)
  t=i.to_s.split(//)
  count=0
  count2=0
  (s.length-1).times{
	s.pop
	count+=1 if s.join.to_i.prime?
  }
  (t.length-1).times{
	t.shift
	count2+=1 if t.join.to_i.prime?
  }
  sum+=i if count==i.to_s.length-1 &&count2==i.to_s.length-1
}
puts sum
end_time = Time.now
puts "処理時間 " + (end_time - start_time).to_s + "s" 




