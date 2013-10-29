#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
三角数のn項は tn = (1/2)*n(n+1)で与えられる. 最初の10項は

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
である.

単語中のアルファベットを数値に変換した後に和をとる. この和を「単語の値」と呼ぶことにする. 例えば SKY は 19 + 11 + 25 = 55 = t10である. 単語の値が三角数であるとき, その単語を三角語と呼ぶ.

16Kのテキストファイル words.txt 中に約2000語の英単語が記されている. 三角語はいくつあるか?
=end

def sankaku(n)
  return n*(n+1)/2
end


f = open("words.txt")
s=f.read.delete("\"").split(",")
f.close

count=0
(0..s.length).each{|i|
  sum=0
  t=s[i].to_s.split(//)
  (0..t.length-1).each{|j|
    sum+=t[j].ord-64
  }
  (1..300).each{|k|
	f=sankaku(k)
	if f==sum then count+=1
	elsif f>sum then break;
	end
  }
}
puts count