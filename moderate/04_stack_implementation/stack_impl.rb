#!/usr/bin/env ruby

def push(n)
  @stack ||= []
  @stack << n
end

def pop
  val = @stack.delete_at(-1)
  @stack.delete_at(-1)
  val
end

ARGF.lines.each do |line|
  line.split(/\s/).each{ |n| push(n.to_i) }

  pop_vals = []
  begin
    val = pop
    pop_vals << val
  end while val
  puts pop_vals.join(' ')
end
