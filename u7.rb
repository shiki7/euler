#!/usr/bin/env ruby
#coding:UTF-8

#素数判定関数
def prime(n)
	return true if n<=3
	return false if n%2==0
	for a in 3..Math.sqrt(n)
		return false if n%a==0
	end
end

count=0
for a in 2..10**10
  count+=1 if prime(a)
  if count==10001 then
  	print a
  	break
  end
end
