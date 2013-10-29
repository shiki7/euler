#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
49/98は面白い分数である. 「分子と分母からそれぞれ9を取り除くと、49/98 = 4/8 となり、簡単な形にすることができる」と経験の浅い数学者が誤って思い込んでしまうかもしれないからである.

我々は 30/50 = 3/5 のようなタイプは自明な例だとする.

このような分数のうち、1より小さく分子・分母がともに2桁の数になるような自明でないものは、4個ある.

その4個の分数の積が約分された形で与えられたとき, 分母の値を答えよ.

=end
ans = Rational(1, 1)
(1..9).each do |a|
  (1...a).each do |b|
    (1..9).each do |c|
      d = Rational(b,a)
      if Rational(b*10+c, a*10+c) == d ||
         Rational(b*10+c, a+c*10) == d ||
         Rational(b+c*10, a*10+c) == d ||
         Rational(b+c*10, a+c*10) == d
         ans *= d
      end
    end
  end
end
puts ans.denominator