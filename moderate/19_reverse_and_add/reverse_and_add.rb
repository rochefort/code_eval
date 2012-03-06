#!/usr/bin/env ruby

def check_reflexive_palindrome(n, cnt=0)
  cnt += 1
  res = revesrse_add(n)
  return '' if cnt == 1000
  return "#{cnt} #{res}" if palindrome? res
  check_reflexive_palindrome(res, cnt)
end

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

def revesrse_add(n)
  n + n.to_s.reverse.to_i
end

ARGF.lines do |line|
  puts check_reflexive_palindrome(line.chomp.to_i)
end