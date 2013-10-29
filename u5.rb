#!/usr/bin/env ruby


for i in 20..10**10
	count=0
	(2..20).each do |a|
		 break if i%a!=0
		 count+=1
	end
	if count==19 then
		puts i
		break
	end
end
