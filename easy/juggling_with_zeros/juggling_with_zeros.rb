#!/usr/bin/env ruby -w

def juggling_with_zeros(args)
  res = ''
  args.each_slice(2) do |a, b|
    if a == '0'
      res << '0' * b.size
    else
      res << '1' * b.size
    end
  end
  res.to_i(2)
end

ARGF.each_line do |line|
  puts juggling_with_zeros(line.chomp.split)
end
