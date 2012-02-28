#!/usr/bin/env ruby

def print_tables(max)
  base = (1..max)
  base.each do |y|
    puts base.map{ |x| "%4s" % (x*y).to_s }.join
  end
end

print_tables(15)
