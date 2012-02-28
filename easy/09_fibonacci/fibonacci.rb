#! /usr/bin/env ruby

def old_fib(n)
  return n if n < 2
  fib(n-2) + fib(n-1)
end

def fib(n)
  @mem ||= []
  @mem[n] ||= (n<2)? n : fib(n-2) + fib(n-1);
end

ARGF.lines do |line|
  puts fib(line.to_i)
end
