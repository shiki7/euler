#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

=begin
1 から 5 までの数字を英単語で書けば one, two, three, four, five であり、全部で 3 + 3 + 5 + 4 + 4 = 19 の文字が使われている。

では 1 から 1000 (one thousand) までの数字をすべて英単語で書けば、全部で何文字になるか。

注: 空白文字やハイフンを数えないこと。例えば、342 (three hundred and forty-two) は 23 文字、115 (one hundred and fifteen) は20文字と数える。なお、"and" を使用するのは英国の慣習。

=end
word=[];word2=[];word3=[]

ichi=%w!one two three four five six seven eight nine!
teen=%w!ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen!
tens=%w!twenty thirty forty fifty sixty seventy eighty ninety!

#1-99
word<<ichi<<teen<<tens
word<<ichi*8<<tens*9

#100-999
word2<<"hundred"*900<<ichi*100
word2<<"and"*891
word2<<word*9
#1000
word3<<"onethousand"

word<<word2<<word3
print word.join("").length, "\n"