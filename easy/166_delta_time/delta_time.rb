#!/usr/bin/env ruby -w
require 'time'

def delta_time(strTime1, strTime2)
  time1 = Time.parse(strTime1)
  time2 = Time.parse(strTime2)
  delta_sec = (time1 - time2).abs
  (Time.new(0) + delta_sec).strftime('%H:%M:%S')
end

ARGF.each_line do |line|
  puts delta_time(*line.chomp.split)
end
