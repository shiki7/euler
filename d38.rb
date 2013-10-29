#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
192を1, 2, 3で掛けてみよう.

   192 × 1 = 192
   192 × 2 = 384
   192 × 3 = 576
積を連結することで1から9のPandigital数 192384576 が得られる. 192384576を 192と(1,2,3)の連結積と呼ぶ.

同じようにして, 9を1,2,3,4,5と掛け連結することでPandigital数918273645が得られる. これは9と(1,2,3,4,5)との連結積である.

整数と(1,2,...,n) (n > 1) との連結積として得られる9桁のPandigital数の中で最大のものを答えよ.
=end

max=0
(1..9999).each{|i|
  s=[]
  (1..9).each{|j|
    s<<i*j
    break if s.length>9
    if s.join.split(//).sort.join==(1..9).to_a.join then 
      max=s.join.to_i if s.join.to_i>max
    end
  }
}
puts max

