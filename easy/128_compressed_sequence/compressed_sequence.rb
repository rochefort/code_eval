#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  result = []
  count = 0
  key = nil
  line.chomp.split.each do |v|
    if key != v
      result << [count, key] if key
      key = v
      count = 0
    end
    count += 1
  end
  result << [count, key]
  puts result.flatten.join(' ')
end
