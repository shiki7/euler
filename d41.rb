#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'prime'

=begin
n桁Pandigitalであるとは, 1からnまでの数を各桁に1つずつもつこととする.

#下のリンク先にあるような数学的定義とは異なる

例えば2143は4桁Pandigital数であり, かつ素数である. n桁（この問題の定義では9桁以下）Pandigitalな素数の中で最大の数を答えよ.
=end

max=0
Prime.each(10**7){|i|
  if i.to_s.split(//).sort.join==(1..i.to_s.length).to_a.join then
    if i>max then
      max=i
    end
  end
}
puts max
=end

