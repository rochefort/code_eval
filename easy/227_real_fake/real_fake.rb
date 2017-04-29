#!/usr/bin/env ruby -w

def real_card?(card_number)
  total = card_number.split.inject(0) do |sum, grouped_number|
    numbers = grouped_number.split("").map(&:to_i)
    sum += numbers.inject(&:+) + numbers[0] + numbers[2]
  end
  total % 10 == 0
end

ARGF.each_line do |line|
  puts real_card?(line.chomp) ? "Real" : "Fake"
end
