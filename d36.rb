#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
585 = 1001001001(2進) は10進でも2進でも回文数である.

100万未満で10進でも2進でも回文数になるような数の総和を求めよ.

(注: 先頭に0を含めて回文にすることは許されない.)
=end

puts (1..10**6-1).inject(0){|sum, i| 
  sum+=i if i.to_s.reverse==i.to_s&&i.to_s(2)==i.to_s(2).reverse
  sum
}




