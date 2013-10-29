#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
完全数とは, その数の真の約数の和がそれ自身と一致する数のことである. たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28であるので, 28は完全数である.

真の約数の和がその数よりも少ないものを不足数といい, 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.

12は, 1+2+3+4+6=16となるので, 最小の過剰数である. よって2つの過剰数の和で書ける最少の数は24である. 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている. 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, この上限を減らすことが出来ていない.

2つの過剰数の和で書き表せない正の整数の総和を求めよ.
=end

def sum_proper_divisor(n)
  return 0 if n == 1
  d = (2..Math::sqrt(n).floor).select{|i| n % i == 0}
  (d + d.map{|i| n / i}).uniq.inject(0, :+) + 1
end

MAX = 28123
abundants = []
ans = 0

(1..MAX).each do |n|
  # 2つ過剰数の和で書けるかチェック
  i, j = 0, abundants.size - 1
  while i <= j
    if abundants[i] + abundants[j] == n
      break
    elsif abundants[i] + abundants[j] < n
      i += 1
    elsif abundants[i] + abundants[j] > n
      j -= 1
    end
  end

  # 書けなければ ans に追加
  ans += n if i > j

  # 過剰数なら配列に追加
  if sum_proper_divisor(n) > n
    abundants << n
  end
end

puts ans
