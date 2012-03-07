#!/usr/bin/env ruby

def prime_numbers(n)
  (2..n).inject([]) do |primes, i|
    primes << i if prime?(i)
    primes
  end
end

def prime?(n)
  !(2..n/2).any?{ |i| (n%i).zero? }
end

ARGF.lines do |line|
  puts prime_numbers(line.to_i).join(',')
end
