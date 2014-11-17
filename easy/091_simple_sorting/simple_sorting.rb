#!/usr/bin/env ruby -w
# 
# def selection_sort(numbers)
#   tmp = numbers.dup
#   res = []
#   until tmp.empty?
#     min_index = tmp.find_index(tmp.min)
#     res << tmp.delete_at(min_index)
#   end
#   res
# end
# 
# ARGF.each_line do |line|
#   numbers = line.chomp.split.map(&:to_f)
#   puts selection_sort(numbers).join(' ')
# end

#!/usr/bin/env ruby -w
ARGF.each_line do |line|
  numbers = line.chomp.split.map(&:to_f)
  puts numbers.sort.map { |n| sprintf('%.3f', n) }.join(' ')
end
