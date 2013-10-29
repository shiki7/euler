#!/usr/bin/env ruby
number=600851475143

def prime_max(num)
	ary=Array.new
	while true do
		for i in 2..num
			if num%i==0 then
				ary.push i
				num/=i
				break
			end
		end
		break if num==1
	end
	max=1

	ary.each do |val|
		max=val if max<val
	end
	return max
end


p prime_max(number)