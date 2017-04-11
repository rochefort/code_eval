#!/usr/bin/env ruby -w

def heighest_scores(rows)
  rows.transpose.map(&:max)
end

ARGF.each_line do |line|
  rows = line.chomp.split("|").map { |row| row.split.map(&:to_i) }
  puts heighest_scores(rows).join(" ")
end
