#!/usr/bin/env ruby
def data_recovery(words, orders)
  orders = orders.map(&:to_i)
  lack_of_order = ((1..words.size).to_a - orders)
  orders += lack_of_order
  # ruby 2.1
  # Hash[orders.zip words].sort.to_h.values.join(' ')
  Hash[Hash[orders.zip words].sort].values.join(' ')
end

ARGF.each_line do |line|
  puts data_recovery(*(line.chomp.split(';').map(&:split)))
end
