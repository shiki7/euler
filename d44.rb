#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
五角数は Pn = n(3n-1)/2で生成される. 最初の10項は

1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...
である.

P4 + P7 = 22 + 70 = 92 = P8である. しかし差 70 - 22 = 48は五角数ではない.

五角数のペア PjとPkについて, 差と和が五角数になるものを考える. 差を D = |Pk - Pj| と書く. 差 D の最小値を求めよ.
=end
=begin
def gokaku(n)
  return n*(3*n-1)/2
end
(1..2500).each{|i|
  (1..2500).each{|j|
      check_sum=0
      a=gokaku(i)
      b=gokaku(j)
	  c=a+b
	  d=(a-b).abs
	  (1..2500).each{|k|
		 if gokaku(k)==d then check_sum+=1; break
		 elsif d<gokaku(k) then break 
		 end
	  }
	  next if check_sum==0
	  (j..5000).each{|k|
		 if gokaku(k)==c then check_sum+=1; break
		 elsif c<gokaku(k) then break 
		 end
	  }
	 
	  if check_sum==2 then puts b;exit end
  }
}
=end
def pentagonal?(n)
  x = (1 + Math.sqrt(1 + 24 * n)) / 6
  return x.to_i == x
end

pentagonals = []
1.upto(Float::INFINITY) do |i|
  p = i * (3 * i - 1) / 2

  pentagonals.reverse_each do |penta|
    if pentagonal?(p + penta) and pentagonal?(p - penta)
      puts "#{p - penta}"
      exit
    end
  end

  pentagonals << p
end