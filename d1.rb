#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#10未満の自然数のうち、3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり、 これらの合計は 23 になる。
#同じようにして、1,000 未満の 3 か 5 の倍数になっている数字の合計を求めよ

sum=0
for i in 1..999
  if i%3==0||i%5==0 then
    sum=sum+i
  end
end
print sum,"\n"
