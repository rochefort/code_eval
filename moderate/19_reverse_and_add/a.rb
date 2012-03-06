#!/usr/bin/env ruby

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

def revesrse_add(n)
  n + n.to_s.reverse.to_i
end

ARGF.lines do |line|
  n = line.to_i
  cnt = 0
  while cnt < 1000
    res = revesrse_add(n)
    n = res
    cnt += 1
    break if palindrome? res
  end
  puts "#{cnt} #{n}"
end
