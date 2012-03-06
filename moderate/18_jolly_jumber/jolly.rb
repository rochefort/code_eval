#!/usr/bin/env ruby

def jolly?(n, ar)
  diff_of_elements(ar) == (1..n-1).to_a.reverse
end

def diff_of_elements(ar)
  diffs = []
  ar.each_with_index do |_e, i|
    diffs << (ar[i-1] - ar[i]).abs if i > 0
  end
  diffs
end

ARGF.lines do |line|
  n, *ar = line.chomp.split(/\s/).map(&:to_i)
  puts jolly?(n, ar) ? 'Jolly' : 'Not jolly'
end