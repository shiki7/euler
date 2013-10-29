#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'
=begin
197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である. 100万未満の巡回素数は何個か?
=end

count_sum=0
Prime.each(10**6){|i|
  s=i.to_s.split(//)
  count=0
  (0..s.length-1).each{|j|
	if s.rotate(j).join.to_i.prime? then count+=1
	else break
	end
  }
  count_sum+=1 if count==s.length
}
puts count_sum