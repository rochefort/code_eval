#!/usr/bin/env ruby

def sqrt_way(n)
  s = Math.sqrt(n)
  return 1 if n == s

  (0..s).inject(0) do |res, i|
    sq = Math.sqrt(n - i**2)
    res+=1 if (sq >= i) and (sq == sq.to_i)
    res
  end
end

def header_skip_reader(file)
  f = open(file)
  f.gets
  f.lines do |line|
    yield(line)
  end
  f.close
end

header_skip_reader(ARGV[0]) do |line|
  puts sqrt_way(line.to_i)
end
