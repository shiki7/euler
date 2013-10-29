#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'

=begin
Christian Goldbachは全ての奇合成数は平方数の2倍と素数の和で表せると予想した.

9 = 7 + 2×1^2
15 = 7 + 2×2^2
21 = 3 + 2×3^2
25 = 7 + 2×3^2
27 = 19 + 2×2^2
33 = 31 + 2×1^2
後に, この予想は誤りであることが分かった.

平方数の2倍と素数の和で表せない最小の奇合成数を答えよ.
=end


(3..10**4).each{|i|
	Prime.each(10000){|j|
	    if j>i then puts i; exit 0 end
		break if Math.sqrt((i-j)/2).to_s=~ /^[+-]?[0-9]+.0$/
	}
}

