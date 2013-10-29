#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

count=0
(1..1000).each{|i|	#桁数
	(1..9).each{|j|	
		a=(j**i).to_s.size
		if a==i
		  count+=1
		elsif a>i then
		  break
		end
	}
}
puts count

