#!/usr/bin/env ruby -w

def minimum_distance(addresses)
  distances = []
  addresses.each do |address|
    distances << addresses.inject(0) { |sum, a| sum += (a - address).abs }
  end
  distances.min
end

ARGF.each_line do |line|
  numbers = line.chomp.split.map(&:to_i)
  _firends_number = numbers.first
  addresses = numbers[1..-1]
  puts minimum_distance(addresses)
end

# require "benchmark/ips"
#
# def minimum_distance(addresses)
#   distances = []
#   addresses.each do |address|
#     distances << addresses.inject(0) { |sum, a| sum += (a - address).abs }
#   end
#   distances.min
# end
#
# def minimum_distance2(addresses)
#   min_distance = nil
#   addresses.each do |address|
#     distance = addresses.inject(0) { |sum, a| sum += (a - address).abs }
#     min_distance ||= distance
#     min_distance = [min_distance, distance].min
#   end
#   min_distance
# end
#
# Benchmark.ips do |x|
#   x.report("minimum_distance") do
#     ARGF.each_line do |line|
#       numbers = line.chomp.split.map(&:to_i)
#       _firends_number = numbers.first
#       addresses = numbers[1..-1]
#       minimum_distance(addresses)
#     end
#   end
#   x.report("minimum_distance2") do
#     ARGF.each_line do |line|
#       numbers = line.chomp.split.map(&:to_i)
#       _firends_number = numbers.first
#       addresses = numbers[1..-1]
#       minimum_distance2(addresses)
#     end
#   end
#   x.compare!
# end
