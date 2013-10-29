#!/usr/bin/env ruby

sum=0
(1..999).each{|a|
	sum+=a if a%3==0
	sum+=a if a%5==0
	sum-=a if a%15==0
}
puts(sum)