#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
Googol (10^100)は非常に大きな数である: 1の後に0が100個続く. 100^100は想像を絶する. 1の後に0が200回続く. その大きさにも関わらず, 両者とも桁の和は1である.

a, b < 100について自然数a^bを考える. 桁の和の最大を答えよ.
=end


max=0
(1..99).each{|a|
  (1..99).each{|b|
  	sum=0
    s=(a**b).to_s.split(//)
		(0..s.length-1).each{|i|
			sum+=s[i].to_i
    }
		max=sum if max<sum
	}  
}
puts max