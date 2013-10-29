#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'
=begin
素数41は6つの連続する素数の和として表せる:

41 = 2 + 3 + 5 + 7 + 11 + 13.
100未満の素数を連続する素数の和で表したときにこれが最長になる.

同様に, 連続する素数の和で1000未満の素数を表したときに最長になるのは953で21項を持つ.

100万未満の素数を連続する素数の和で表したときに最長になるのはどの素数か?
=end
sum=0
Prime.each(10**6).each{|i|
	sum+=i
	if sum>10**6 then puts sum-i;break end
}