#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
数1406357289は0から9のPandigital数である (0から9が1度ずつ現れるので). この数は部分語が面白い性質を持っている.

d1を1桁目, d2を2桁目の数とし, 以下順にdnを定義する. この記法を用いると次のことが分かる.

d2d3d4=406は2で割り切れる
d3d4d5=063は3で割り切れる
d4d5d6=635は5で割り切れる
d5d6d7=357は7で割り切れる
d6d7d8=572は11で割り切れる
d7d8d9=728は13で割り切れる
d8d9d10=289は17で割り切れる
このような性質をもつ0から9のPandigital数の総和を求めよ.
=end

number=(0..9).to_a
array=number.permutation(10).collect {|a| a.join }
sum=0

(0..array.length-1).each{|i|
  k=array[i].split(//)
  s=k[1]<<k[2]<<k[3]
  next if s.to_i%2!=0
  s=k[2]<<k[3]<<k[4]
  next if s.to_i%3!=0
  s=k[3]<<k[4]<<k[5]
  next if s.to_i%5!=0
  s=k[4]<<k[5]<<k[6]
  next if s.to_i%7!=0
  s=k[5]<<k[6]<<k[7]
  next if s.to_i%11!=0
  s=k[6]<<k[7]<<k[8] 
  next if s.to_i%13!=0
  s=k[7]<<k[8]<<k[9]   
  next if s.to_i%17!=0
  sum+=array[i].to_i
}
puts sum
