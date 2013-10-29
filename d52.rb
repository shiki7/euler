#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
125874を2倍すると251748となる. これは元の数125874と同じ数を含む.

2x, 3x, 4x, 5x, 6xがxと同じ数を含むような最小の正整数xを求めよ
=end

(1..10**6).each{|i|
	count=0
	s=i.to_s.split(//).sort.join
	(2..6).each{|j|
	  count+=1 if((j*i).to_s.split(//).sort.join ==s)
	}
	if count==5 then puts i; exit 0 end
}
