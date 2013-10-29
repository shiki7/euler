#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'date'

start_date=Date::new(1901,1,1);
end_date=Date::new(2000,12,31);

count=0
for day in start_date..end_date 
  if day.day==1&&day.wday==0 then
    count+=1
  end
end
p count