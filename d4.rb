#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#左右どちらから読んでも同じ値になる数を回文数という。 2桁の数の積で表される回文数のうち、最大のものは 9009 = 91 × 99 である。
#では、3桁の数の積で表される回文数のうち最大のものはいくらになるか。
max=1
for i in 100..999
  for j in 100..999
    a=i*j
    if a.to_s.reverse()==a.to_s then
      if max<a then max=a end
    end
  end
end
print max,"\n"
