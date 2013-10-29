#!/usr/bin/env ruby

op3=0
op1=1
op2=2
sum=2
loop do
	op3=op1+op2
	break if op3>4000000
	sum+=op3 if op3%2==0
	op1=op2
	op2=op3
end

puts sum

