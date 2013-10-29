#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# ソートした数字 => [個数，最小値]
hash = {}

(1..10**7).each{|i|
	num=(i**3).to_s.chars.sort.join
	if value=hash[num]
		value[0]+=1
		if value[0]==5
		  puts value[1]
		  exit
		end
		hash[num]=value
	else
	  hash[num]=[1,i**3]
	end
}