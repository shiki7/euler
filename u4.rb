#!/usr/bin/env ruby

max=0
(100..999).each do |a|
	(100..999).each do |b|
		c=a*b
		if c==c.to_s.reverse.to_i then
			max=c if max<c
		end
	end
end

p max