#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'
=begin
連続する2つの数がそれぞれ2つの異なる素因数を持つのは

14 = 2 × 7
15 = 3 × 5 の場合である.
同様に連続する3つの数がそれぞれ3つの異なる素因数を持つのは

644 = 22 × 7 × 23
645 = 3 × 5 × 43
646 = 2 × 17 × 19 の場合である.
連続する4つの数がそれぞれ4つの異なる素因数を持つ場合を考え, 連続する数の中で最小のものを答えよ.
=end

#(1..10**4).each{|i|
 # prime.
#}
(1..10**6).each{|i|
  k=0
  (0..3).each{|j|
    if Prime.prime_division(i+j).count==4 then k+=1
    else break
    end
  }
  if k==4 then puts i; break end
}