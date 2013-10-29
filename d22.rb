#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
5000個以上の名前が書かれている46Kのテキストファイルnames.txt を用いる. まずアルファベット順にソートせよ.

のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.

たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある. またCOLINは3 + 15 + 12 + 9 + 14 = 53という値を持つ. よってCOLINは938 × 53 = 49714というスコアを持つ.

ファイル中の全名前のスコアの合計を求めよ.
=end



#  s=(f.read.split(",")).sort
s=open("names.txt").gets.gsub(/"/,'').split(',').sort
  sum=0
(0..s.length-1).each do |i|
  c=0
  s[i].split(//).each do |j|
	c+=j.ord-64
  end
  sum+=(i+1)*c
end
puts sum

