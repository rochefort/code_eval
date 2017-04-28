#!/usr/bin/env ruby -w

def test(actual, expected)
  wrong_count = 0
  expected.size.times { |i| wrong_count += 1 unless actual[i] == expected[i] }
  case
  when wrong_count == 0 then "Done"
  when wrong_count <= 2 then "Low"
  when wrong_count <= 4 then "Medium"
  when wrong_count <= 6 then "High"
  else "Critical"
  end
end

ARGF.each_line do |line|
  actual, expected = line.chomp.split(" | ").map { |l| l.split("") }
  puts test(actual, expected)
end
