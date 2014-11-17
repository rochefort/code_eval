#!/usr/bin/env ruby -w

def convert_sexagesimal(decimal)
  hour = decimal.to_i
  tmp_m = (decimal - hour) * 60
  minute = tmp_m.to_i
  tmp_s = (tmp_m - minute) * 60
  second = tmp_s.to_i

  format_sexagesimal(hour, minute, second)
end

def format_sexagesimal(hour, minute, second)
  m = '%02d' % minute
  s = '%02d' % second
  "#{hour}.#{m}'#{s}\""
end

ARGF.each_line do |line|
  puts convert_sexagesimal(line.chomp.to_f)
end
