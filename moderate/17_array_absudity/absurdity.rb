#!/usr/bin/env ruby
#http://d.hatena.ne.jp/takuya_1st/20100103/1262486833
def verify_duplication(ar)
  ar.uniq.find{ |e| ar.index(e) != ar.rindex(e) }
end

ARGF.lines do |line|
  next if line.strip == ''
  puts verify_duplication(line.chomp.split(';')[1].split(','))
end
