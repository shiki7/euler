#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
三角数, 五角数, 六角数は以下のように生成される.

三角数	Tn=n(n+1)/2	1, 3, 6, 10, 15, ...
五角数	Pn=n(3n-1)/2	1, 5, 12, 22, 35, ...
六角数	Hn=n(2n-1)	1, 6, 15, 28, 45, ...
T285 = P165 = H143 = 40755であることが分かる.

次の三角数かつ五角数かつ六角数な数を求めよ.
=end

def sankaku(n)
  return n*(n+1)/2
end
def gokaku(n)
  return n*(3*n-1)/2
end
def rokkaku(n)
  return n*(2*n-1)
end

s=[]
g=[]
r=[]
count=0

(143..10**5).each{|i|
  s.push(sankaku(i))
  g.push(gokaku(i))
  r.push(rokkaku(i))
}
puts s&g&r



