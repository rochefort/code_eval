#!/usr/bin/env ruby

def prime?(n)
  !(2..n/2).any? { |i| (n%i).zero? }
end

def head_of_primes
  i = 2
  Enumerator.new do |y|
    loop {
      y << i if prime?(i)
      i += 1
    }
  end
end

puts head_of_primes.take(1000).inject(:+)

