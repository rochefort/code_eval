#!/usr/bin/env ruby

def detect_cycle(stack)
  (2..stack.size/2).each do |i|
    assume_cycle = stack[-i, i]
    next_cycle   = stack[-i*2, i]
    return assume_cycle.join(" ")  if assume_cycle == next_cycle
  end
  ''
end

ARGF.lines do |line|
  stack = line.split(/\s/)
  puts detect_cycle(stack)
end
