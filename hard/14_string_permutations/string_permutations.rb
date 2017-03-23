#!/usr/bin/env ruby -w

def all_permutations(str)
  str.split("").permutation(str.size).map(&:join).sort.join(",")
end

ARGF.each_line do |line|
  puts all_permutations(line.chomp!)
end
