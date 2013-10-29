#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
イギリスでは硬貨はポンド£とペンスpがあり，一般的に流通している硬貨は以下の8種類である.

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

以下の方法で£2を作ることが可能である．

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

これらの硬貨を使って£2を作る方法は何通りあるか?
=end

array=[1,2,5,10,20,50,100,200]
N=200
count=0
  (0..1).each do |a|
    (0..2).each do |b|
      break if 200*a+100*b>200
      (0..4).each do |c|
        break if 200*a+100*b+50*c>200
        (0..10).each do |d|
          break if 200*a+100*b+50*c+20*d>200
          (0..20).each do |e|
            break if 200*a+100*b+50*c+20*d+10*e>200
            (0..40).each do |f|
              break if 200*a+100*b+50*c+20*d+10*e+5*f>200
              (0..100).each do |g|
                break if 200*a+100*b+50*c+20*d+10*e+5*f+2*g>200
                (0..200).each do |h|
                  break if 200*a+100*b+50*c+20*d+10*e+5*f+2*g+h>200
    count+=1 if 200*a+100*b+50*c+20*d+10*e+5*f+2*g+h==200
              
                end
              end
            end
          end
        end
      end
    end
  end
puts count