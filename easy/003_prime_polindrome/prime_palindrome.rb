#!/usr/bin/env ruby

def prime?(n)
  !(2..n/2).any?{ |i| (n%i).zero? }
end

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

def down_from_by n
  Enumerator.new do |y|
    loop {
      y << n if yield(n)
      break if n < 2
      n -= 1
    }
  end
end
puts down_from_by(1000) { |n| prime?(n) and palindrome?(n) }.first

#1000.downto(2) do |n|
#  if (prime?(n) and palindrome?(n))
#    puts n
#    break
#  end
#end
