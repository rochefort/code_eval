#!/usr/bin/env ruby -w

# CALC_PATTERN = %r{([+*/]) (\d+) (\d+)}
# def prefix_expression(str)
#   match = str.match(CALC_PATTERN)
#   return str unless match
#   ope, x, y = match.captures
#   result = eval("#{x} #{ope} #{y}")
#   str = match.pre_match + result.to_s + match.post_match
#   prefix_expression(str)
# end
# ARGF.each_line do |line|
#   puts prefix_expression(line.chomp)
# end

def prefix_expression(exps)
  stack = []
  exps.reverse.each do |exp|
    if exp.match(/\d+/)
      stack << exp
    else
      x = stack.pop
      y = stack.pop
      stack << (x.to_i.send(exp, y.to_i))
    end
  end
  stack[0]
end

ARGF.each_line do |line|
  puts prefix_expression(line.chomp.split)
end
