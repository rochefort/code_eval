#!/usr/bin/env ruby -w

def binary_zero_count(number, max_decimal)
  bins = (1..max_decimal).map { |n| n.to_s(2) }
  bins.find_all { |b| b.scan("0").size == number }.size
end

ARGF.each_line do |line|
  number, max_decimal = line.chomp.split.map(&:to_i)
  puts binary_zero_count(number, max_decimal)
end

# BINARIES = (1..1000).map { |n| n.to_s(2) }
#
# def binary_zero_count(number, max_decimal)
#   # bins = (1..max_decimal).map { |n| n.to_s(2) }
#   bins = BINARIES.take(max_decimal)
#   bins.find_all { |b| b.scan("0").size == number }.size
# end
#
# ARGF.each_line do |line|
#   number, max_decimal = line.chomp.split.map(&:to_i)
#   puts binary_zero_count(number, max_decimal)
# end
