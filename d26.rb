#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
単位分数とは分子が1の分数である。分母が2から10の単位分数を10進数で表記すると次のようになる。

1/2 = 0.5
1/3 = 0.(3)
1/4 = 0.25
1/5 = 0.2
1/6 = 0.1(6)
1/7 = 0.(142857)
1/8 = 0.125
1/9 = 0.(1)
1/10 = 0.1
0.1(6)は 0.166666... という数字であり、1桁の循環節を持つ。1/7 の循環節は6桁ある。

d < 1000 なる 1/d の中で循環節が最も長くなるような d を求めよ。
=end

require "mathn"

#10倍して整数部を引いて、その小数がハッシュに含まれていなければカウント
#これを繰り返して、循環数を求める
def f(x)
  a = []
  hash = {}
  n = 1/x
  while hash[n].nil?		#nのハッシュがすでに登録されているかを確認
    hash[n] = true
    n *= 10
    n -= n.to_i
  end
  hash
end
p (1...1000).max_by{|x|f(x).size}
