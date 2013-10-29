#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
ピタゴラスの三つ組(ピタゴラスの定理を満たす自然数)とはa<b<cで
a² + b² = c²
を満たす数の組である.

例えば, 3² + 4² = 9 + 16 = 25 = 5²である.

a + b + c = 1000となるピタゴラスの三つ組が一つだけ存在する. このa,b,cの積を計算しなさい.
=end
N=1000
for a in 1..N
  for b in 1..N
    a2=a*a
    b2=b*b
    c=Math::sqrt(a2+b2).to_s
    if /^[0-9]+\.0$/=~c then
      if a.to_i+b.to_i+c.to_i==1000 then print "a=",a,",b=",b,",c=",c.to_i,"\n"; exit 0 end
    end
  end
end