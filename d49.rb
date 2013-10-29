#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'
=begin
項差3330の等差数列1487, 4817, 8147は次の2つの変わった性質を持つ。

(i)3つの項はそれぞれ素数である。
(ii)各項は他の項の置換で表される。
1, 2, 3桁の素数にはこのような性質を持った数列は存在しないが、4桁の増加列にはもう1つ存在する。

それではこの数列の3つの項を連結した12桁の数を求めよ。
=end

=begin
Prime.each(3000).each{|i|
  next if i<1000
  i.
}
=end



Prime.each(100000).each{|i|
  next if i<1000
	c=[]
	
	s=i.to_s.split(//)
	b=s.permutation(4).to_a
	(0..b.length-1).each{|j|
	  c<<b[j].join if b[j].join.to_i.prime?
	}

	c=c.uniq.sort
	next if c.length<3
	(0..c.length-3).each{|j|
	  if c[j+2].to_i-c[j+1].to_i==c[j+1].to_i-c[j].to_i then puts c[j]<<c[j+1]<<c[j+2]; exit 0 end
	}
}
