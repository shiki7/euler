#!/usr/bin/env ruby
#coding:UTF-8

sum=0
for i in 1..100
	sum+=i**2
end

sum2=0
for i in 1..100
  sum2+=i
end
sum2=sum2**2

p sum2-sum