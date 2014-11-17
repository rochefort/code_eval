#!/usr/bin/env ruby -w

def roller_coaster(line)
  is_capital = true

  line.each_char.map { |c|
    next c unless c.match(/[a-zA-Z]/)
    c.upcase! if is_capital
    is_capital = !is_capital
    c
  }.join
end

ARGF.each_line do |line|
  print roller_coaster(line)
end
