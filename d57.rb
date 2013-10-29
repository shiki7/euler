#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
2の平方根は無限に続く連分数で表すことができる.

√ 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...
最初の4回の繰り返しを展開すると以下が得られる.

1 + 1/2 = 3/2 = 1.5
1 + 1/(2 + 1/2) = 7/5 = 1.4
1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...
次の3つの項は99/70, 239/169, 577/408である. 第8項は1393/985である. これは分子の桁数が分母の桁数を超える最初の例である.

最初の1000項を考えたとき, 分子の桁数が分母の桁数を超える項はいくつか?
=end

a=[];b=[]
a[0]=3;a[1]=7
b[0]=2;b[1]=5

count=0
(2..999).each{|i|
  a[i]=2*a[i-1]+a[i-2]
  b[i]=2*b[i-1]+b[i-2]
  count+=1 if a[i].to_s.length>b[i].to_s.length
}
puts count