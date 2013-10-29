#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
正の整数に以下の式で繰り返し生成する数列を定義する。

n → n/2 (n が偶数)
n → 3n + 1 (n が奇数)
13からはじめるとこの数列は以下のようになる。

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
13から1まで10個の項になる。 この数列はどのような数字からはじめても最終的には 1 になると考えられているが、まだそのことは証明されていない(コラッツ問題)

さて、100万未満の数字の中でどの数字からはじめれば一番長い数列を生成するか。

注意: 数列の途中で100万以上になってもよい
=end
count_max=1; number_max=1
(1..1000000).each do |number|
  a=number
  count=0
  while a!=1
    if a%2==0 then a/=2
    else a=3*a+1 end
    count+=1
  end
  if count_max<count then count_max=count; number_max=number end
end
print "数字=",number_max,", 数列の長さ=",count_max,"\n"