#!/usr/bin/env ruby

def pairs(ar, n)
  pairs = ar.split(',').map(&:to_i).combination(2).select do |com|
    com.inject(:+) == n.to_i
  end
end

def format(pairs)
  pairs.size.zero?? 'NULL' : pairs.map{|pair| pair.join(',')}.join(';')
end

ARGF.lines do |line|
  line.chomp.split(';').instance_eval do |ar, n|
    puts format(pairs(ar, n))
  end
end